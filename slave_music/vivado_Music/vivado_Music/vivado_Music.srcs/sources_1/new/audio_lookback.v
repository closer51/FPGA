module audio_lookback(
		input 				clk					,                    
		input 				reset_n				,
		inout 				iic_0_scl			,              
		inout 				iic_0_sda			,   
	    output 				led					,
		input 				I2S_ADCDAT			,
		input 				I2S_ADCLRC			,
		input 				I2S_BCLK 			,
		output 				I2S_DACDAT			,
		output 				I2S_MCLK			,    
		output 				bclk_outdac	 		,
    	input               i_rxc               ,
    	input  [3 :0]       i_rxd               ,
    	input               i_rx_ctl            ,
    	output              o_txc               ,
    	output [3 :0]       o_txd               ,
    	output              o_tx_ctl  			,
		output				o_eth_rst_n		    ,
		output				o_dac_1_clk			,
		output	[13:0]		o_dac_1_data		,
		output				o_dac_2_clk			,
		output	[13:0]		o_dac_2_data	
);
parameter DATA_WIDTH        = 32;
localparam  IDLE = 4'd0,
			state_data = 4'd1,
			state_data_delay_left = 4'd2,        //改变回声延迟
			state_data_delay_right = 4'd3,
			state_data_b = 4'd4,        //改变混响模式
			state_data_c = 4'd5,        //改变滤波器
			state_data_d = 4'd6,        //改变均衡器
			state_data_e = 4'd7,        //升采样 
			state_data_f = 4'd8,        //降采样
			state_data_g = 4'd9,        //选择均衡器
			state_data_h = 4'd10,        //反馈系数为正数
			state_data_i = 4'd11,        //反馈系数为负数
            state_end = 4'd15;
reg 	[7:0]		r_cnt;
reg         		ro_led;
reg		[13:0]		ro_dac_1_data;
reg		[13:0]		ro_dac_2_data;
reg 	[15:0] 		delay_num;           //延时时间
reg 	[7:0] 		reverb_mode;          //音频模式
reg 	[7:0] 		fir_select;           //滤波器选择
reg 	[7:0] 		equalier_select;       //选择哪段滤波器
reg 	[7:0] 		equalier_gain;        //选择滤波器增益
reg 	[7:0] 		divi_data;            //倍频系数
reg 	[7:0] 		half_data;            //分频系数
//外接DAC模块时钟
reg 	[7:0] 		bclk_outdac_divi;
reg equalier_flag;
reg [7:0] equalier_add_temp;
reg [7:0] delay_num_temp_left;
reg [7:0] delay_num_temp_right;
reg [3:0] cur_state;
reg [3:0] next_state;
wire 				clk_100M; 
wire	[7 :0]		w_m_2_s_axis_data ;
wire	[15:0]		w_m_2_s_axis_user ;
wire				w_m_2_s_axis_valid;
wire				w_m_2_s_axis_last ;
wire				w_locked;
wire				w_udp_clk    ;
wire				w_udp_clk_rst;
wire				w_clk_50Mhz    ;
wire				w_clk_50Mhz_rst;
wire				clk_rst;

wire Init_Done;
    wire 		w_udp_rx_vld; 
    wire [7:0] w_udp_rx_data; 
//-------------------start---
reg adcfifo_read;
wire [DATA_WIDTH - 1:0] adcfifo_readdata; 
wire adcfifo_empty;
reg dacfifo_write;
reg [DATA_WIDTH - 1:0] dacfifo_writedata;
wire dacfifo_full;
//-------------------end---

assign				o_eth_rst_n = 1;
assign  			led = ro_led;
assign				o_dac_1_data = ro_dac_1_data;
assign				o_dac_2_data = ro_dac_2_data;
assign				o_dac_1_clk  =  ~w_clk_50Mhz;
assign				o_dac_2_clk  =  ~w_clk_50Mhz; 
/*------------------------------------------------*/


clk_wiz_0 instance_name
 ( 
    .clk_out1	(w_udp_clk	),    
	.clk_out2	(w_clk_50Mhz	),    
    .locked		(w_locked	),        
    .clk_in1	(clk		)
);    


	wire clk_48kmult256;

PLLA PLLA_inst
(
    .clkout0(I2S_MCLK),     
    .clkout1(clk_48kmult256),     
    .clkout2(clk_100M),     

    .locked(),       
    .clkin(clk)
);   


 
rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_125M_rst
(
    .          i_clk (w_udp_clk      )                  ,
    .          o_rst (w_udp_clk_rst  )                  
);
rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_50M_rst
(
    .          i_clk (w_clk_50Mhz      )                  ,
    .          o_rst (w_clk_50Mhz_rst  )                  
); 

rst_gen_module#(
    .       P_RST_CYCLE     (10)    
)rst_gen_module_clk50M_rst
(
    .          i_clk (clk       )                  ,
    .          o_rst (clk_rst   )                  
);


sys_divi sys_clk_divi              //分频分出48k时钟
(
	.sys_clk(clk_100M),
	.sys_rest(reset_n),
	.clk_dividi(bclk_outdac_divi),            //32分频
	.clk_out(bclk_outdac)
);

// udp协议栈


wire [15:0]             w_send_len              ;
wire [7 :0]             w_send_data             ;
wire                    w_send_last             ;
wire                    w_send_valid            ;
wire                    w_send_ready            ;
wire [15:0]             w_rec_len               ;
wire [7 :0]             w_rec_data              ;
wire                    w_rec_last              ;
wire                    w_rec_valid             ;
wire [7 :0]             w_GMII_tx_data          ;
wire                    w_GMII_tx_valid         ;
wire [7 :0]             w_GMII_rx_data          ;
wire                    w_GMII_rx_valid         ;
wire [1 :0]             w_speed                 ;
wire                    w_link                  ;
reg  [15:0]             r_send_len              ;
reg  [7 :0]             r_send_data             ;
reg                     r_send_last             ;
reg                     r_send_valid            ; 

UDP_Stack_Module#(
    .P_TARGET_PORT          (16'd8080                                  ),//PC端口
    .P_SOURCE_PORT          (16'd8080                                  ),//板卡端口
    .P_TARGET_IP            ({8'd192,8'd168,8'd100,8'd100}              ),//PC端IP
    .P_SOURCE_IP            ({8'd192,8'd168,8'd100,8'd99}             ),//板卡IP
    .P_TARTGET_MAC          ({8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}     ),//PC端MAC
    .P_SOURCE_MAC           ({8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}     ),//板卡MAC
    .P_CRC_CHEKC            ( 0                                        ) //CRC使能
)
UDP_Stack_Module_u0
(
    .i_clk                  (w_udp_clk              ),
    .i_rst                  (w_udp_clk_rst          ),
    /*--------info port-------*/    
    .i_target_port          (0                      ),
    .i_target_port_valid    (0                      ),
    .i_source_port          (0                      ),
    .i_source_port_valid    (0                      ),
    .i_target_ip            (0                      ),
    .i_target_ip_valid      (0                      ),
    .i_source_ip            (0                      ),
    .i_source_ip_valid      (0                      ),
    .i_target_mac           (0                      ),
    .i_target_mac_valid     (0                      ),
    .i_source_mac           (0                      ),
    .i_source_mac_valid     (0                      ),

    .i_send_len             (r_send_len             ),//user发送数据长度
    .i_send_data            (r_send_data            ),//user发送数据
    .i_send_last            (r_send_last            ),//user发送结束
    .i_send_valid           (r_send_valid           ),//user发送有效

    .o_send_ready           (w_send_ready           ),//user可以发送信号

    .o_rec_len              (w_rec_len              ),//user接收数据长度
    .o_rec_data             (w_rec_data             ),//user接收数据
    .o_rec_last             (w_rec_last             ),//user接收结束
    .o_rec_valid            (w_rec_valid            ),//user接收有效

    .o_source_ip            (),
    .o_source_ip_valid      (),
    .o_rec_src_mac          (),
    .o_rec_src_valid        (),
    .o_crc_error            (),   
    .o_crc_valid            (), 
    /*--------GMII port--------*/
    .o_GMII_data            (w_GMII_tx_data         ),
    .o_GMII_valid           (w_GMII_tx_valid        ),
    .i_GMII_data            (w_GMII_rx_data         ),
    .i_GMII_valid           (w_GMII_rx_valid        )   
);


//GMII转RGMII接口模块，时钟为i_rxc
GMII2RGMII_Drive GMII2RGMII_Drive_u0(
    //UDP协议栈输入
    .i_udp_stack_clk        (w_udp_clk              ),
    .i_GMII_data            (w_GMII_tx_data         ),
    .i_GMII_valid           (w_GMII_tx_valid        ),
    .o_GMII_data            (w_GMII_rx_data         ),
    .o_GMII_valid           (w_GMII_rx_valid        ),

    //RGMII接口输出
    .i_rxc                  (i_rxc                  ),
    .i_rxd                  (i_rxd                  ),
    .i_rx_ctl               (i_rx_ctl               ),
    .o_txc                  (o_txc                  ),
    .o_txd                  (o_txd                  ),
    .o_tx_ctl               (o_tx_ctl               ),
    .o_speed                (w_speed                ),
    .o_link                 (w_link                 ),
    .o_user_clk             (                       )
); 



	
AXIS_BUF_2CLK_8X2048 AXIS_BUF_2CLK_8X2048_U0(
    . i_per_clk           (w_udp_clk    			),
    . i_per_rst           (w_udp_clk_rst			),
    . i_per_axis_data     (w_rec_data       		),
    . i_per_axis_user     (w_rec_len        		),
    . i_per_axis_valid    (w_rec_valid      		),
    . i_per_axis_last     (w_rec_last       		),
    . o_per_axis_ready    (                         ),
    . i_post_clk          (clk              		),
    . i_post_rst          (clk_rst          	),
    . o_post_axis_data    (w_udp_rx_data        ),
    . o_post_axis_user    (w_m_2_s_axis_user        ),
    . o_post_axis_valid   (w_udp_rx_vld       ),
    . o_post_axis_last    (w_m_2_s_axis_last        ),
    . i_post_axis_ready   (1                        )           
);
 
	es8388_Init es8388_Init(
		.Clk(clk),
		.Rst_n(reset_n),
		.I2C_Init_Done(Init_Done),
		.i2c_sclk(iic_0_scl),
		.i2c_sdat(iic_0_sda)
	);
i2s_rx 
#(
	.DATA_WIDTH(DATA_WIDTH) 
)i2s_rx
(
	.reset_n(reset_n),
	.bclk(I2S_BCLK),
	.adclrc(I2S_ADCLRC),
	.adcdat(I2S_ADCDAT),
	.adcfifo_rdclk(clk),
	.adcfifo_read(adcfifo_read),
	.adcfifo_empty(adcfifo_empty),
	.adcfifo_readdata(adcfifo_readdata)
);
wire [DATA_WIDTH - 1:0] dacfifo_writedata_fir;
	
i2s_tx
#(
	 .DATA_WIDTH(DATA_WIDTH)
)i2s_tx
(
	 .reset_n(reset_n),
	 .clk_48kmult256(clk_48kmult256),
	 .dacfifo_wrclk(clk),
	 .dacfifo_wren(dacfifo_write),
	 .dacfifo_wrdata(dacfifo_writedata),
	 .dacfifo_full(dacfifo_full),
	 .bclk(I2S_BCLK),
	 .daclrc(I2S_ADCLRC),
	 .dacdat(I2S_DACDAT),
	 .divi_data(divi_data),
     .delay_num(delay_num),
	 .equalier_select(equalier_select),
	 .equalier_gain(equalier_gain),
	 .reverb_mode(reverb_mode)
);



always@(posedge clk,posedge clk_rst)begin
    if(clk_rst)
        ro_dac_1_data  <= 'd0;
    else 
        ro_dac_1_data <= adcfifo_readdata[31:16];
end

always@(posedge clk,posedge clk_rst)begin
    if(clk_rst)
        ro_dac_2_data  <= 'd0;
    else 
        ro_dac_2_data <= adcfifo_readdata[15:0];
end


always @ (posedge clk_100M or negedge reset_n)begin
	if(!reset_n)
	    bclk_outdac_divi <= 0;
	else begin
		bclk_outdac_divi <= divi_data<<1;
	end
end
 


always@(posedge clk,posedge clk_rst)begin
    if(clk_rst)
        r_cnt  <= 'd0;
    else if(w_udp_rx_vld)
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= 'd0;
end
 
always@(posedge clk,posedge clk_rst)begin
    if(clk_rst)
        ro_led  <= 'd0;
    else if(w_udp_rx_vld && w_udp_rx_data == "h"&& r_cnt == 1)
        ro_led  <= 'd0 ;
    else if(w_udp_rx_vld && w_udp_rx_data == "g"&& r_cnt == 1)
        ro_led <= 1;
    else 
        ro_led <= ro_led;
end 

	always @ (posedge clk or negedge reset_n)
	begin
		if (~reset_n)
		begin
			adcfifo_read <= 1'b0;
		end
		else if (~adcfifo_empty)
		begin
			adcfifo_read <= 1'b1;
		end
		else
		begin
			adcfifo_read <= 1'b0;
		end
	end

	always @ (posedge clk or negedge reset_n)
	begin
		if(~reset_n)
			dacfifo_write <= 1'd0;
		else if(~dacfifo_full && (~adcfifo_empty)) begin
			dacfifo_write <= 1'd1;
			dacfifo_writedata <= adcfifo_readdata;
		end
		else begin
			dacfifo_write <= 1'd0;
		end
	end
      
	always @ (posedge clk or negedge reset_n) begin
		if(!reset_n)begin
			cur_state <= IDLE;
        end
		else 
			cur_state <= next_state;
	end

	always @ (*) begin
		case (cur_state)
			IDLE: begin
				if(w_udp_rx_data == "$") begin
					next_state = state_data;
				end
				else begin
					next_state = IDLE;
				end
			end
			state_data: begin
				if(w_udp_rx_data == "B")
					next_state = state_data_delay_left;
				else if(w_udp_rx_data == "h")
					next_state = state_data_delay_right;
				else if(w_udp_rx_data == "b")
					next_state = state_data_b;
				else if(w_udp_rx_data == "c")
					next_state = state_data_c;
				else if(w_udp_rx_data == "d")
					next_state = state_data_d;
				else if(w_udp_rx_data == "e")
					next_state = state_data_e;
				else if(w_udp_rx_data == "f")
					next_state = state_data_f;
				else if(w_udp_rx_data == "g")
					next_state = state_data_g;
				else
					next_state = state_data;
			end
			state_data_delay_left: begin
				if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
				    next_state = state_data_delay_left;
            end
			state_data_delay_right: begin
				if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
				    next_state = state_data_delay_right;
            end
			state_data_b: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_b;
            end
			state_data_c: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_c;
            end
			state_data_d: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_d;
            end
			state_data_e: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_e;
            end
			state_data_f: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_f;
            end
			state_data_g: begin
				if(equalier_flag == 1'd1)
					next_state = state_data_h;
				else
					next_state = state_data_g;
            end
			state_data_h: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else if(w_udp_rx_data == "-")
					next_state = state_data_i;
				else
					next_state = state_data_h;
            end
			state_data_i: begin
                if(w_udp_rx_data == "\n")
					next_state = state_end;
				else
					next_state = state_data_i;
            end
			state_end: begin
                next_state = IDLE;
            end
            default:
                next_state = IDLE;
		endcase
	end
	
	always @ (posedge clk or negedge reset_n) begin
        if(!reset_n)begin
			delay_num <= {8'd8,8'd8};
			reverb_mode <= 8'd1;
			equalier_flag <= 1'd0;
			equalier_select <= 8'd0;
			equalier_gain <= 8'd16;
			fir_select <= 8'd0;
			divi_data <= 8'd32;
			half_data <= 8'd0;
			delay_num_temp_left <= 8'd0;
			delay_num_temp_right <= 8'd0;
			equalier_add_temp <= 8'd0;
		end
		else if(w_udp_rx_vld == 1'd1) begin
            case(cur_state)	
				IDLE:begin
					
				end
				state_data: begin

				end
				state_data_delay_left: begin                              //改变回声延迟
                    if(w_udp_rx_data != "\n")begin
                        delay_num_temp_left <= w_udp_rx_data - "0";
						// delay_num[7:0] <= w_udp_rx_data - "0" + delay_num_temp_left*30;
						delay_num[7:0] <=  w_udp_rx_data - "0";
					end
				end
				state_data_delay_right: begin
					if(w_udp_rx_data != "\n")begin
						delay_num_temp_right <= w_udp_rx_data - "0";
						delay_num[15:8] <=  w_udp_rx_data - "0";
					end
				end
				state_data_b: begin                             //改变输出音效
                    if(w_udp_rx_data != "\n")begin
                        reverb_mode <= (w_udp_rx_data - "0");
					end
                end
				state_data_c: begin                             //改变滤波器
                    if(w_udp_rx_data != "\n")
                        fir_select <= w_udp_rx_data - "0";
                end
				state_data_e: begin                             //采样率倍频
                    if(w_udp_rx_data != "\n") begin
                        divi_data <= w_udp_rx_data;
						delay_num <= 8;
					end
                end
				state_data_g: begin
					equalier_flag <= 1'd1;
					if(w_udp_rx_data != "\n")
						equalier_select <= w_udp_rx_data - "0";
                end
				state_data_h: begin     
					equalier_flag <= 1'd0;                        
					if(w_udp_rx_data != "\n") begin
						equalier_add_temp <= w_udp_rx_data - "0";
						equalier_gain <= w_udp_rx_data - "0" + 8'd16 + equalier_add_temp*10;
					end
                end
				state_data_i: begin                             
					if(w_udp_rx_data != "\n") begin
						equalier_add_temp <= w_udp_rx_data - "0";
						equalier_gain <= 8'd16 - (w_udp_rx_data+10*equalier_add_temp) + "0";
					end
                end
                state_end:begin                                //结束数据接收
					delay_num_temp_right <= 8'd0;
					equalier_add_temp <= 8'd0;
					delay_num_temp_left <= 8'd0;
                end
				default: begin
					delay_num <= 8;
				end
			endcase
        end
    end
 

endmodule
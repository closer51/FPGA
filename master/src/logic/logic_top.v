`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 00:52:01
// Design Name: 
// Module Name: logic_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module logic_top#(
        parameter   P_SEND_LEN = 1000
)(
    input           i_clk               ,
    input           i_rst               ,
/*----------iparameter---------------*/
    input           i_logic_pulse       , 
    input   [3 :0]  i_logic_frq_sel     ,
    input   [2 :0]  i_logic_trig_model  ,
    input   [7 :0]  i_logic_trig_channel,
    output          o_logic_ready       ,//这个ready信号不能单独作判断条件，不好！！ 要加上其他条件进行流控
/*----------user data----------------*/
    input   [7 :0]  i_logic_data        ,
    output  [7 :0]  o_sam_data          ,
    output          o_sam_data_vld      ,
    output          o_sam_data_last     ,

    output          o_sam_clk           ,
    output          o_sam_rst
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg     ro_logic_ready;
reg     ri_logic_pulse;
reg [3 :0]  ri_logic_frq_sel     ;
reg [2 :0]  ri_logic_trig_model  ;
reg [7 :0]  ri_logic_trig_channel;
reg [7 :0]  r_assemble_cnt;  
reg         r_d_gen_run;
reg [7 :0]  ro_sam_data      ;
reg         ro_sam_data_vld  ;
reg         ro_sam_data_last ;

/***************wire******************/
wire    w_fifo_dout_pulse;
wire    w_fifo_empty_pulse;
wire    w_fifo_full_pulse;
wire    w_fifo_read_pulse;
 
wire    w_sam_clk       ;
wire    w_sam_clk_rst   ;

wire    w_pulse_pos     ;

wire          IIC_START       ;
wire          IIC_END         ;
wire  [7:0]   IIC_DATA_OUTPUT ;
wire          IIC_DATA_OUTPUT_VLD ;

wire                                        w_rx_spi_data_valid ;
wire    [7 :0]                              w_rx_spi_data           ;
wire    [7 :0]                              w_spi_data          ;

wire  [7:0]   w_rx_uart_data ;
wire          w_rx_uart_valid;

/***************assign****************/
assign  o_logic_ready = ro_logic_ready;
assign  w_pulse_pos   = i_logic_pulse && !ri_logic_pulse;
assign  o_sam_clk     = w_sam_clk       ;
assign  o_sam_rst     = w_sam_clk_rst   ;

assign o_sam_data      = ro_sam_data     ;
assign o_sam_data_vld  = ro_sam_data_vld ;
assign o_sam_data_last = ro_sam_data_last;

/***************component*************/
sample_clk_gen sample_clk_gen_u0(
    . i_clk               (i_clk              ),//输入50MHZ时钟 
    . i_rst               (i_rst              ),
    . i_logic_frq_sel     (i_logic_frq_sel    ),
    . i_logic_frq_sel_vld (w_pulse_pos        ),
    . o_sam_clk_en        (w_sam_clk          )
);

rst_gen_module#(
     . P_RST_CYCLE     (3)   
)rst_gen_module_u0
(
   . i_clk    (w_sam_clk    )               ,
   . o_rst    (w_sam_clk_rst)               
);

ASYNC_FIFO_1X16 ASYNC_FIFO_1X16_U0 (
  .wr_clk   (i_clk                  ),  // input wire wr_clk
  .rd_clk   (w_sam_clk              ),  // input wire rd_clk
  .din      (1                      ),        // input wire [0 : 0] din
  .wr_en    (w_pulse_pos            ),    // input wire wr_en
  .rd_en    (w_fifo_read_pulse      ),    // input wire rd_en
  .dout     (w_fifo_dout_pulse      ),      // output wire [0 : 0] dout
  .full     (w_fifo_full_pulse      ),      // output wire full
  .empty    (w_fifo_empty_pulse     )    // output wire empty
);
wire    [7:0]   w_sam_data     ;
wire            w_sam_data_vld ;
wire            w_sam_data_last;
sample_data_gen#(
    .P_SEND_LEN(P_SEND_LEN)
) sample_data_gen_u0(
    . i_clk             (w_sam_clk              ) ,
    . i_rst             (w_sam_clk_rst          ) ,
    . i_sam_vld         (~w_fifo_empty_pulse    ) ,//启动触发  //此信号特殊，需要跨时钟域
    . o_fifo_read       (w_fifo_read_pulse      ),
    . i_sam_trig_model  (ri_logic_trig_model     ) ,//触发模式选择 
    . i_sam_trig_channel(ri_logic_trig_channel   ) ,//触发通道选择
    . i_sam_data        ( i_logic_data           ) ,//被测信号输入
    . o_sam_data        (w_sam_data             ) ,
    . o_sam_data_vld    (w_sam_data_vld         ) ,
    . o_sam_data_last   (w_sam_data_last        )
);

//协议解析
iic_stream_rx iic_stream_rx_u0(
    .   clk                     (w_sam_clk      ),
    .   rst_n                   (~w_sam_clk_rst ),
    .   IIC_SCL                 (i_logic_data[0]),
    .   IIC_SDA                 (i_logic_data[1]),
    .   IIC_START               (IIC_START      ),
    .   IIC_END                 (IIC_END        ),  
    .   IIC_DATA_OUTPUT         (IIC_DATA_OUTPUT),
    .   IIC_DATA_OUTPUT_VLD     (IIC_DATA_OUTPUT_VLD) 
);
reg     [3:0]   r_iic_dnum  ;
reg             r_fifo_iic_rd_en;
wire    [7 :0]  w_fifo_iic_dout;
wire            w_fifo_iic_empty;
wire            w_fifo_iic_full;
FIFO_8X16 FIFO_8X16_IIC (
  .clk      (w_sam_clk          ),      // input wire clk
  .srst     (w_sam_clk_rst      ), 
  .din      (IIC_DATA_OUTPUT    ),      // input wire [7 : 0] din
  .wr_en    (IIC_DATA_OUTPUT_VLD),  // input wire wr_en
  .rd_en    (r_fifo_iic_rd_en   ),  // input wire rd_en
  .dout     (w_fifo_iic_dout    ),    // output wire [7 : 0] dout
  .full     (w_fifo_iic_full    ),    // output wire full
  .empty    (w_fifo_iic_empty   )  // output wire empty
);


spi_stream_rx#
(
    .    BITS_LEN    (8   ) ,    //设置接收bit长度
    .    CPOL        (1'b0) ,     //时钟极性
    .    CPHA        (1'b0)       //时钟相位
)spi_stream_rx_u0
(
    .  sys_clk            (w_sam_clk           ),
    .  rst_n              (~w_sam_clk_rst      ),
    .  spi_cs             (i_logic_data[2]     ),           //spi片选信号
    .  spi_clk            (i_logic_data[3]     ),           //spi_clk
    .  spi_mosi           (i_logic_data[4]     ),       //spi_mosi
    .  rx_spi_data_valid  (w_rx_spi_data_valid   ),   //接收到的数据有效信号
    .  rx_data            (w_rx_spi_data             ),   //变换移位信号
    .  spi_data           (w_spi_data            )//接收到存帧信号
);
reg     [3:0]   r_spi_dnum  ;
reg             r_fifo_spi_rd_en;
wire    [7 :0]  w_fifo_spi_dout;
wire            w_fifo_spi_empty;
wire            w_fifo_spi_full;
FIFO_8X16 FIFO_8X16_SPI (
  .clk      (w_sam_clk          ),      // input wire clk
  .srst     (w_sam_clk_rst      ), 
  .din      (w_spi_data         ),      // input wire [7 : 0] din
  .wr_en    (w_rx_spi_data_valid),  // input wire wr_en
  .rd_en    (r_fifo_spi_rd_en   ),  // input wire rd_en
  .dout     (w_fifo_spi_dout    ),    // output wire [7 : 0] dout
  .full     (w_fifo_spi_full    ),    // output wire full
  .empty    (w_fifo_spi_empty   )  // output wire empty
);

uart_stream_rx uart_stream_rx_u0(
    .   i_clk               (w_sam_clk       ),
    .   i_rst               (w_sam_clk_rst   ),
    .   i_logic_frq_sel     (i_logic_frq_sel ),
    .   i_logic_frq_sel_vld (w_pulse_pos     ),
    .   rx                  (i_logic_data[5] ),
    .   o_rx_data           (w_rx_uart_data  ),
    .   o_rx_valid          (w_rx_uart_valid )
);
reg     [3:0]   r_uart_dnum  ;
reg             r_fifo_uart_rd_en;
wire    [7 :0]  w_fifo_uart_dout;
wire            w_fifo_uart_empty;
wire            w_fifo_uart_full;
FIFO_8X16 FIFO_8X16_UART (
  .clk      (w_sam_clk           ),      // input wire clk
  .srst     (w_sam_clk_rst      ), 
  .din      (w_rx_uart_data      ),      // input wire [7 : 0] din
  .wr_en    (w_rx_uart_valid     ),  // input wire wr_en
  .rd_en    (r_fifo_uart_rd_en   ),  // input wire rd_en
  .dout     (w_fifo_uart_dout    ),    // output wire [7 : 0] dout
  .full     (w_fifo_uart_full    ),    // output wire full
  .empty    (w_fifo_uart_empty   )  // output wire empty
);

/***************always****************/

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_logic_ready <= 'd1;
    else 
        ro_logic_ready <= ~o_sam_data_vld;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ri_logic_pulse <= 'd1;
    else 
        ri_logic_pulse <= i_logic_pulse;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        ri_logic_frq_sel      <= 'd0;
        ri_logic_trig_model   <= 'd0;
        ri_logic_trig_channel <= 'd0;
    end else if(i_logic_pulse)begin
        ri_logic_frq_sel      <= i_logic_frq_sel     ;
        ri_logic_trig_model   <= i_logic_trig_model  ;
        ri_logic_trig_channel <= i_logic_trig_channel;
    end else begin 
        ri_logic_frq_sel      <= ri_logic_frq_sel     ;
        ri_logic_trig_model   <= ri_logic_trig_model  ;
        ri_logic_trig_channel <= ri_logic_trig_channel;
    end
end

          

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_d_gen_run <= 'd0;
    else if(w_sam_data_last)
        r_d_gen_run <= 'd0;
    else if(~w_fifo_empty_pulse)
        r_d_gen_run <= 'd1;
    else 
        r_d_gen_run <= r_d_gen_run;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_iic_dnum <= 'd0;
    else if(r_assemble_cnt == 48)
        r_iic_dnum <= 'd0;
    else if(r_d_gen_run && IIC_DATA_OUTPUT_VLD && r_iic_dnum <15)
        r_iic_dnum <= r_iic_dnum + 1;
    else 
        r_iic_dnum <= r_iic_dnum;
end


always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_spi_dnum <= 'd0;
    else if(r_assemble_cnt == 48)
        r_spi_dnum <= 'd0;
    else if(r_d_gen_run && w_rx_spi_data_valid && r_spi_dnum <15)
        r_spi_dnum <= r_spi_dnum + 1;
    else 
        r_spi_dnum <= r_spi_dnum;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_uart_dnum <= 'd0;
    else if(r_assemble_cnt == 48)
        r_uart_dnum <= 'd0;
    else if(r_d_gen_run && w_rx_uart_valid && r_uart_dnum <15)
        r_uart_dnum <= r_uart_dnum + 1;
    else 
        r_uart_dnum <= r_uart_dnum;
end


always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_assemble_cnt <= 'd0;
    else if(r_assemble_cnt == 48)
        r_assemble_cnt <= 'd0;
    else if(w_sam_data_last || r_assemble_cnt)
        r_assemble_cnt <= r_assemble_cnt + 1;
    else 
        r_assemble_cnt <= r_assemble_cnt;
end
         

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        ro_sam_data <= 'd0;
    else if(r_assemble_cnt == 1)
        ro_sam_data <= r_iic_dnum;
    else if(r_assemble_cnt >= 2 && r_assemble_cnt <= 16)//15个数据最多
        ro_sam_data <=  w_fifo_iic_dout;
    else if(r_assemble_cnt == 17)
        ro_sam_data <= r_spi_dnum;
    else if(r_assemble_cnt >= 18 && r_assemble_cnt <= 32)
        ro_sam_data <=  w_fifo_spi_dout;
    else if(r_assemble_cnt == 33)
        ro_sam_data <= r_uart_dnum;
    else if(r_assemble_cnt >= 34 && r_assemble_cnt <= 48)
        ro_sam_data <=  w_fifo_uart_dout;
    else if(r_d_gen_run)
        ro_sam_data <= w_sam_data;
    else 
        ro_sam_data <= 'd0;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        ro_sam_data_vld <= 'd0;
    else if(r_assemble_cnt >=1 && r_assemble_cnt <= 48)    
        ro_sam_data_vld <= 'd1;
    else if(r_d_gen_run)
        ro_sam_data_vld <= w_sam_data_vld;
    else 
        ro_sam_data_vld <= 'd0;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        ro_sam_data_last <= 'd0;
    else if(r_assemble_cnt == 48)
        ro_sam_data_last <= 'd1;
    else 
        ro_sam_data_last <= 'd0;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_fifo_iic_rd_en <= 'd0;
    else if(r_assemble_cnt == 15)
        r_fifo_iic_rd_en <= 'd0;
    else if(w_sam_data_last    )
        r_fifo_iic_rd_en <= 'd1;
    else 
        r_fifo_iic_rd_en <= r_fifo_iic_rd_en;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_fifo_spi_rd_en <= 'd0;
    else if(r_assemble_cnt == 31)
        r_fifo_spi_rd_en <= 'd0;
    else if(r_assemble_cnt == 16)
        r_fifo_spi_rd_en <= 'd1;
    else 
        r_fifo_spi_rd_en <= r_fifo_spi_rd_en;
end

always@(posedge w_sam_clk, posedge w_sam_clk_rst)
begin
    if(w_sam_clk_rst)
        r_fifo_uart_rd_en <= 'd0;
    else if(r_assemble_cnt == 47)
        r_fifo_uart_rd_en <= 'd0;
    else if(r_assemble_cnt == 32)
        r_fifo_uart_rd_en <= 'd1;
    else 
        r_fifo_uart_rd_en <= r_fifo_uart_rd_en;
end
 
// always@(posedge i_clk, posedge i_rst)
// begin
//     if(i_rst)
    
//     else if()
//     else if()
//     else 
// end
 



endmodule

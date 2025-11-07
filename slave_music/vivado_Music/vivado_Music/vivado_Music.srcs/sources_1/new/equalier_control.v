module equalier_control(
    input           sys_clk,                                 //系统时钟
    input           sys_rst,                                 //复位信号
    input           data_valid,                              //数据有效位
    input [31:0]    data_in,                                 //数据输入
    input  [7:0]    equalier_select,                         //选择控制哪段均衡器
    input  [7:0]    equalier_gain,                           //选择增益
    output [31:0]   data_out                                 //数据输出

);


wire [27:0] data_out_temp_left;
wire [27:0] data_out_temp_right;

assign data_out[15:0] = data_out_temp_left[20:5];
assign data_out[31:16] = data_out_temp_right[20:5];


parameter equalier_iir_num = 4;
parameter out_data_length = 3;

reg   [25:0] equalier_data_out_left     [equalier_iir_num-1:0];
reg   [25:0] equalier_data_out_right    [equalier_iir_num-1:0];
wire  [15:0] equalier_data_out_temp_left     [equalier_iir_num-1:0];                       //输出暂存寄存器
wire  [15:0] equalier_data_out_temp_right    [equalier_iir_num-1:0];
reg   [7:0]  equalier_gain_array        [equalier_iir_num-1:0];                                  //增益系数


assign data_out_temp_left = (equalier_data_out_left[0][out_data_length+14:out_data_length] + equalier_data_out_left[1][out_data_length+14:out_data_length] 
+ equalier_data_out_left[2][out_data_length+14:out_data_length] + equalier_data_out_left[3][out_data_length+14:out_data_length])<<7;
assign data_out_temp_right = (equalier_data_out_right[0][out_data_length+14:out_data_length] + equalier_data_out_right[1][out_data_length+14:out_data_length] 
+ equalier_data_out_right[2][out_data_length+14:out_data_length] + equalier_data_out_right[3][out_data_length+14:out_data_length])<<7;


always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst) begin
            equalier_gain_array[0] <= 8'd16;
            equalier_gain_array[1] <= 8'd16;
            equalier_gain_array[2] <= 8'd16;
            equalier_gain_array[3] <= 8'd16;
    end
    else begin
        if(equalier_select <= 8'd6)
            equalier_gain_array[equalier_select] <= equalier_gain;
    end
end

always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst) begin
            equalier_data_out_left[0] <=  23'd0;
            equalier_data_out_right[0] <= 23'd0;
            equalier_data_out_left[1] <=  23'd0;
            equalier_data_out_right[1] <=  23'd0;
            equalier_data_out_left[2] <=  23'd0;
            equalier_data_out_right[2] <= 23'd0;
            equalier_data_out_left[3] <=  23'd0;
            equalier_data_out_right[3] <=  23'd0;
    end
    else begin
            equalier_data_out_left[0] <=  (equalier_data_out_temp_left[0])*equalier_gain_array[0];
            equalier_data_out_right[0] <= (equalier_data_out_temp_right[0])*equalier_gain_array[0];
            equalier_data_out_left[1] <=  (equalier_data_out_temp_left[1])*equalier_gain_array[1]>>1;
            equalier_data_out_right[1] <= (equalier_data_out_temp_right[1])*equalier_gain_array[1]>>1;
            equalier_data_out_left[2] <=  (equalier_data_out_temp_left[2])*equalier_gain_array[2];
            equalier_data_out_right[2] <= (equalier_data_out_temp_right[2])*equalier_gain_array[2];
            equalier_data_out_left[3] <=  (equalier_data_out_temp_left[3])*equalier_gain_array[3]<<1;
            equalier_data_out_right[3] <= (equalier_data_out_temp_right[3])*equalier_gain_array[3]<<1;
    end
end

fir_module_equalier_low 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_left_test_1
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[15:0]),
	.data_out       (equalier_data_out_temp_left[0]),
	.data_valid     (data_valid)
);

fir_module_equalier_low 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_right_test_1
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[31:16]),
	.data_out       (equalier_data_out_temp_right[0]),
	.data_valid     (data_valid)
);

fir_module_equalier_mid 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_left_test_2
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[15:0]),
	.data_out       (equalier_data_out_temp_left[1]),
	.data_valid     (data_valid)
);

fir_module_equalier_mid 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_right_test_2
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[31:16]),
	.data_out       (equalier_data_out_temp_right[1]),
	.data_valid     (data_valid)
);

fir_module_equalier_high 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_left_test_3
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[15:0]),
	.data_out       (equalier_data_out_temp_left[2]),
	.data_valid     (data_valid)
);

fir_module_equalier_high 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_right_test_3
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[31:16]),
	.data_out       (equalier_data_out_temp_right[2]),
	.data_valid     (data_valid)
);

fir_module_equalier_most 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_left_test_4
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[15:0]),
	.data_out       (equalier_data_out_temp_left[3]),
	.data_valid     (data_valid)
);

fir_module_equalier_most 
#(
	.DATA_WIDTH(16)
)fir_module_equalier_low_right_test_4
(
	.sys_fir_clk    (sys_clk),
	.sys_rst        (sys_rst),
	.data_in        (data_in[31:16]),
	.data_out       (equalier_data_out_temp_right[3]),
	.data_valid     (data_valid)
);

endmodule

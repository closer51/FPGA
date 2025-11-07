//fir滤波

module fir_complex_low(
    input sys_fir_clk,
    input sys_rst,
    input data_valid,
	input [7:0] divi_data,
	input [7:0] fir_select,
    input [31:0] data_in,
    output [31:0] data_out
);


fir_module_low
#(
	.DATA_WIDTH(16)
)fir_module_low_left
(
.sys_fir_clk              (sys_fir_clk),
.sys_rst              (sys_rst),
.fir_select           (fir_select),
.divi_data            (divi_data),
.data_in              (data_in[15:0]),
.data_out             (data_out[15:0]),
.data_valid         (data_valid)
);

fir_module_low
#(
	.DATA_WIDTH(16)
)fir_module_low_right
(
.sys_fir_clk              (sys_fir_clk),
.sys_rst              (sys_rst),
.fir_select           (fir_select),
.divi_data            (divi_data),
.data_in              (data_in[31:16]),
.data_out             (data_out[31:16]),
.data_valid         (data_valid)
);



endmodule


module fir_complex_200_high(
    input sys_fir_clk,
    input sys_rst,
    input data_valid,
    input [31:0] data_in,
    output [31:0] data_out
);


fir_module_200_high
#(
	.DATA_WIDTH(16)
)fir_module_200_high_left
(
.sys_fir_clk              (sys_fir_clk),
.sys_rst              (sys_rst),
.data_in              (data_in[15:0]),
.data_out             (data_out[15:0]),
.data_valid         (data_valid)
);

fir_module_200_high
#(
	.DATA_WIDTH(16)
)fir_module_200_high_right
(
.sys_fir_clk              (sys_fir_clk),
.sys_rst              (sys_rst),
.data_in              (data_in[31:16]),
.data_out             (data_out[31:16]),
.data_valid         (data_valid)
);


 endmodule
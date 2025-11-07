module filter_control
(
    input         sys_clk,
    input         sys_rst,
    input  [7:0]  fir_select,
    input  [7:0]  divi_data,
    input         data_valid,
    input  [31:0] data_in,
    output [31:0] data_out
);

wire [31:0] fir_data_out_fir1;              //第一个滤波器的输出
// reg [31:0] fir_data_out_fir2;              //第一个滤波器的输出
// reg [31:0] fir_data_out_fir3;              //第一个滤波器的输出
wire [31:0] fir_data_in_fir2;               //第二个滤波器的输入
wire [31:0] fir_out_data_temp;

assign data_out[15:0] = fir_out_data_temp[15:0] << 4;
assign data_out[31:16] = fir_out_data_temp[31:16] << 4;

assign    fir_data_in_fir2[15:0]  = fir_data_out_fir1[15:5];
assign    fir_data_in_fir2[31:16] = fir_data_out_fir1[31:21];


reg data_valid_2;
always @(posedge sys_clk or negedge sys_rst) begin
    if(!sys_rst)
    data_valid_2 <= 1'd0;
    else begin
            data_valid_2 <= data_valid;
    end
end

fir_complex_low filter_complex_low_test(                                 //低通FIR选择滤波
    .sys_fir_clk              (sys_clk),
    .sys_rst              (sys_rst),
    .data_in              (data_in),
    .fir_select            (fir_select),
    .divi_data            (divi_data),
    .data_out             (fir_data_out_fir1),
    .data_valid         (data_valid)
);


fir_complex_200_high fir_complex_200_high_control(
    .sys_fir_clk              (sys_clk),
    .sys_rst              (sys_rst),
    .data_in              (fir_data_in_fir2),
    .data_out             (fir_out_data_temp),
    .data_valid         (data_valid_2)
);


endmodule
module allcross_iir_module 
#(
    parameter DATA_WIDTH = 32,
    parameter DELAY = 4
)
(  
    input  sys_clk,          
    input  sys_rst,          
    input  data_valid,               //数据有效位
    input  [DATA_WIDTH-1:0] data_in, // 输入信号 x(n)  
    output [DATA_WIDTH-1:0] data_out  // 输出信号 y(n)  
);  

wire signed [DATA_WIDTH/2-1:0] data_signed_in_left = {~data_in[15],data_in[14:0]};
wire signed [DATA_WIDTH/2-1:0] data_signed_in_right = {~data_in[31],data_in[30:16]};
//反馈系数0.7
reg signed [DATA_WIDTH/2-1:0] data_in_delay_left [0:DELAY-1]; // 输入延迟寄存器  
reg signed [DATA_WIDTH/2-1:0] data_in_delay_right [0:DELAY-1]; // 输入延迟寄存器
reg signed [DATA_WIDTH/2-1:0] data_out_delay_left [0:DELAY-1]; // 延迟寄存器
reg signed [DATA_WIDTH/2-1:0] data_out_delay_right [0:DELAY-1]; // 延迟寄存器
  
reg [11:0] i;  
  
always @(posedge sys_clk or negedge sys_rst) begin  
    if (!sys_rst) begin  
        // 复位时，清空所有寄存器  
        for (i = 0; i < DELAY; i = i + 1) begin  
            data_in_delay_left[i] <= 16'sd0;  
            data_in_delay_right[i] <= 16'sd0;  
            data_out_delay_left[i] <= 16'sd0;  
            data_out_delay_right[i] <= 16'sd0;  
        end  
    end 
    else if(data_valid == 1'd1) begin  
        // 移位寄存器更新  
        for (i = DELAY-1; i > 0; i = i - 1) begin  
            data_in_delay_left[i] <= data_in_delay_left[i-1]; 
            data_in_delay_right[i] <= data_in_delay_right[i-1];
            data_out_delay_left[i] <= data_out_delay_left[i-1]; 
            data_out_delay_right[i] <= data_out_delay_right[i-1];
        end  
        data_in_delay_left[0] <= data_signed_in_left; 
        data_in_delay_right[0] <= data_signed_in_right;
        data_out_delay_left[0] <= data_out_temp_left; 
        data_out_delay_right[0] <= data_out_temp_right;
    end  
end  

wire signed [DATA_WIDTH/2:0] delay_add_left;
wire signed [DATA_WIDTH/2:0] delay_add_right;

wire signed [15:0] data_out_temp_left;
wire signed [15:0] data_out_temp_right;

wire signed [31:0] data_out_delay_left_mult;
wire signed [31:0] data_out_delay_right_mult;

wire signed [31:0] data_signed_in_left_mult;
wire signed [31:0] data_signed_in_right_mult;


assign data_signed_in_left_mult = 11*data_signed_in_left>>4;
assign data_signed_in_right_mult = 11*data_signed_in_right>>4;

assign data_out_delay_left_mult = 11*data_out_delay_left[DELAY-1]>>4;
assign data_out_delay_right_mult = 11*data_out_delay_right[DELAY-1]>>4;

assign delay_add_left = data_in_delay_left[DELAY-1] + {data_out_delay_left_mult[31],data_out_delay_left_mult[14:0]};
assign delay_add_right = data_in_delay_right[DELAY-1] + {data_out_delay_right_mult[31],data_out_delay_right_mult[14:0]};

assign data_out_temp_left = delay_add_left - {data_signed_in_left_mult[31],data_signed_in_left_mult[14:0]};
assign data_out_temp_right = delay_add_right - {data_signed_in_right_mult[31],data_signed_in_right_mult[14:0]};
 

assign data_out[15:0] = {~data_out_temp_left[15],data_out_temp_left[14:0]};
assign data_out[31:16] = {~data_out_temp_right[15],data_out_temp_right[14:0]};
  
endmodule
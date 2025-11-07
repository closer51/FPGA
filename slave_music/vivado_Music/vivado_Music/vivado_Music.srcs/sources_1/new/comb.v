module comb_module
#(
    parameter DATA_WIDTH = 32,
    parameter back_gain = 9,
    parameter DELAY = 16                          //最大延时
)
(
    input sys_clk,
    input sys_rst,
    input data_valid,                  //数据有效位 
    input [DATA_WIDTH-1:0] data_in,    //数据输入
    output [DATA_WIDTH/2-1:0] data_out_left,    //数据输出
    output [DATA_WIDTH/2-1:0] data_out_right    //数据输出
);

    //反馈系数0.6
    // 定义一个寄存器数组来存储延迟的样本  
    reg [DATA_WIDTH/2+3:0] delay_line_left [0:2 * DELAY-1];  
    reg [DATA_WIDTH/2+3:0] delay_line_right [0:2 * DELAY-1];  
    wire [DATA_WIDTH/2+4:0] out_data_delay_left;
    wire [DATA_WIDTH/2+4:0] out_data_delay_right;

    reg [11:0] i;  


    always @(posedge sys_clk or negedge sys_rst) begin  
        if (!sys_rst) begin  
            for (i = 0; i < DELAY * 2-1; i = i + 1) begin  
                delay_line_left[i] <= 16'd0; 
                delay_line_right[i] <= 16'd0; 
            end  
        end else if(data_valid == 1'd1) begin                   //移位
            for (i = DELAY*2-1; i > 0; i = i - 1) begin  
                delay_line_left[i] <= delay_line_left[i-1];  
                delay_line_right[i] <= delay_line_right[i-1];  
            end  
            delay_line_left[0] <= data_in[DATA_WIDTH/2-1:0];  
            delay_line_right[0] <= data_in[DATA_WIDTH-1:DATA_WIDTH/2];  
        end  
    end  
  assign out_data_delay_left = delay_line_left[DELAY-1] + back_gain*delay_line_left[2*DELAY-1]>>4;
  assign out_data_delay_right = delay_line_right[DELAY-1] + back_gain*delay_line_right[2*DELAY-1]>>4;          //二阶延迟寄存器

  wire [21:0] data_out_left_temp;
  wire [21:0] data_out_right_temp;
  assign data_out_left_temp = data_in[DATA_WIDTH/2-1:0] + back_gain*out_data_delay_left>>4;
  assign data_out_right_temp = data_in[DATA_WIDTH-1:DATA_WIDTH/2+0] + back_gain*out_data_delay_right>>4;
    
  assign data_out_left = data_out_left_temp[DATA_WIDTH/2-1:1];
  assign data_out_right = data_out_right_temp[DATA_WIDTH/2-1:1];
endmodule
`timescale 1ns / 1ps
`define CLK_FREQ 50_000_000  // 系统时钟频率（50MHz）
`define CLK_PERIOD 20        // 系统时钟周期（20ns，1/50e6）

module tb_uart_adaptive_baud_rate;

// 测试平台信号
reg         i_clk;
reg         i_rst;
reg         i_uart_rx;
// wire [7:0]  o_user_rx_data  ;
// wire        o_user_rx_valid ;

// 实例化待测试模块
// uart_adaptive_baud_rate uut (
//     .i_clk          (i_clk),
//     .i_rst          (i_rst),
//     .i_uart_rx      (i_uart_rx),
//     .o_uart_data    (o_uart_data),
//     .o_uart_data_vld(o_uart_data_vld)
// );

uart_adaptive_top uart_adaptive_top_u0(
    .   i_clk            (i_clk )   ,
    .   i_rst_n            (~i_rst )   ,
    .   i_uart_rx        (i_uart_rx)   ,
    .   o_uart_tx         (o_uart_tx )         

);
 
// 生成系统时钟（50MHz，20ns周期）
initial begin
    i_clk = 1'b0;
    forever #(`CLK_PERIOD/2) i_clk = ~i_clk;  // 每10ns翻转一次，周期20ns
end

// 主测试流程
initial begin
    // 初始化：复位+UART空闲高电平
    i_rst = 1'b1;
    i_uart_rx = 1'b1;  
    #(10 * `CLK_PERIOD);  // 等待10个时钟周期（200ns），复位稳定
    i_rst = 1'b0;


    #(20 * `CLK_PERIOD);  // 等待20个时钟周期（400ns），模块进入空闲状态
    send_uart_byte(115200 , 8'h55); 
    send_uart_byte(115200 , 8'h55); 
    send_uart_byte(115200 , 8'h01);  
    send_uart_byte(115200 , 8'h02); 
    send_uart_byte(115200 , 8'h03); ////////////
    send_uart_byte(115200 , 8'h04); 
    send_uart_byte(115200 , 8'h05); 
    send_uart_byte(115200 , 8'h06);  
    send_uart_byte(115200 , 8'h07); 
    send_uart_byte(115200 , 8'h08);
    send_uart_byte(115200 , 8'h09);  
    send_uart_byte(115200 , 8'h10); 
    send_uart_byte(115200 , 8'h11); 
    send_uart_byte(115200 , 8'h12); 
    send_uart_byte(115200 , 8'h13);  
    send_uart_byte(115200 , 8'h14); 
    send_uart_byte(115200 , 8'h15);
    send_uart_byte(115200 , 8'h16);  
    send_uart_byte(115200 , 8'h17); 
    send_uart_byte(115200 , 8'h18); 
    send_uart_byte(115200 , 8'h19); 
    send_uart_byte(115200 , 8'h20);  
    send_uart_byte(115200 , 8'h21); 
    send_uart_byte(115200 , 8'h22);
    send_uart_byte(115200 , 8'h23);  
    send_uart_byte(115200 , 8'h24); 
    send_uart_byte(115200 , 8'h25);  
    send_uart_byte(115200 , 8'h26); 
    send_uart_byte(115200 , 8'h27);

    // send_uart_byte(115200 , 8'hdd);
    // send_uart_byte(115200 , 8'hee); 
    // send_uart_byte(115200 , 8'hff);
end

// 任务1：发送完整UART帧（1起始位+8数据位+1停止位，LSB先传）
task send_uart_byte(input integer baud_rate, input [7:0] data);
    integer uart_bit_cycles;  // 1个UART位对应的系统时钟周期数
    integer i;
    begin
        // 计算：UART位周期 = 1/波特率，对应系统时钟周期数 = 时钟频率 / 波特率
        uart_bit_cycles = `CLK_FREQ / baud_rate;

        // 1. 起始位（低电平，持续1个UART位周期）
        i_uart_rx = 1'b0;
        #(uart_bit_cycles * `CLK_PERIOD);  // 延迟 = 时钟周期数 × 单个时钟周期（20ns）

        // 2. 数据位（8位，LSB先发送）
        for ( i = 0; i < 8; i = i + 1) begin
            i_uart_rx = data[i];  // 取第i位（LSB为i=0）
            #(uart_bit_cycles * `CLK_PERIOD);
        end

        // 3. 停止位（高电平，持续1个UART位周期）
        i_uart_rx = 1'b1;
        #(uart_bit_cycles * `CLK_PERIOD);
    end
endtask

 

endmodule
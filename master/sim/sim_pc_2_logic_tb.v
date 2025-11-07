`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 01:57:21
// Design Name: 
// Module Name: sim_logic_tb
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


module sim_logic_tb();

reg clk,rst;

initial begin
    clk = 0;
end

always
begin
    clk = 0;
    #10;
    clk = 1;
    #10;    
end

initial 
begin
    rst = 1;
    #100 @(posedge clk)rst = 0;
end

reg [7 :0]  r_logic_data;
reg [7 :0]  r_udma_tx_data  ;
reg         r_udma_tx_valid ;

wire    w_uart_rx ;
wire    w_uart_tx ;

wire   [7:0] w_uart_tx_data  ;
wire    w_uart_tx_valid ;
wire    w_uart_tx_ready ;

wire    w_uart_clk;
wire    w_uart_rst;

//uart协议驱动
uart_drive#(
    .P_SYSTEM_CLK                       (50_000_000             ),   //输入时钟频率
    .P_UART_BUADRATE                    (115200                 ),   //波特率
    .P_UART_DATA_WIDTH                  (8                      ),   //数据宽度
    .P_UART_STOP_WIDTH                  (1                      ),   //1或者2
    .P_UART_CHECK                       (0                      )    //None=0 Odd-1 Even-2
)
uart_drive_U0
(                  
    .i_clk                              (clk            ),
    .i_rst                              (rst            ),  

    .i_uart_rx                          (w_uart_rx             ),
    .o_uart_tx                          (w_uart_tx             ),

    .i_user_tx_data                     (w_uart_tx_data         ),
    .i_user_tx_valid                    (w_uart_tx_valid        ),
    .o_user_tx_ready                    (w_uart_tx_ready        ),
    .o_user_rx_data                     (         ),
    .o_user_rx_valid                    (         ),

    .o_user_clk                         (w_uart_clk             ),
    .o_user_rst                         (w_uart_rst             ) 
);

//uart DMA引擎
Uart_DMA Uart_DMA_u0(
    .i_clk                              (w_uart_clk             ),
    .i_rst                              (w_uart_rst             ),

    .i_uart_rx_data                     (         ),
    .i_uart_rx_valid                    (         ),
    .o_uart_tx_data                     (w_uart_tx_data        ),
    .o_uart_tx_valid                    (w_uart_tx_valid        ),
    .i_uart_tx_ready                    (w_uart_tx_ready        ),

    .o_user_rx_data                     (         ),
    .o_user_rx_valid                    (         ),
    .i_user_tx_data                     (r_udma_tx_data         ),
    .i_user_tx_valid                    (r_udma_tx_valid        ),
    .i_logic_send_model                 (0     )
);

top top_u0(
    . i_clk       (clk      ), 
    . i_uart_rx   (w_uart_tx),
    . o_uart_tx   (w_uart_rx),
    . i_logic_data(r_logic_data)
);

reg [16:0]  r_send_len   = 3;
reg [7 :0]  r_channel    = 8'b10101010;
reg [2 :0]  r_tri_model  = 4;
reg [3 :0]  r_frq_sel    = 5;
reg         r_pulse      = 1;
reg         r_send_model = 0;

initial begin
r_udma_tx_data  <= 'd0;
r_udma_tx_valid <= 'd0;
wait(!rst);
repeat(5)@(posedge w_uart_clk);
udma(r_send_len,r_channel,r_tri_model,r_frq_sel,r_pulse,r_send_model);

end

task udma(input  [16:0] i_send_len,input[7:0]i_channel,input[2:0]i_tri_model,input[3:0]i_frq_sel,input i_pulse,input i_send_model);
begin:hehe
    integer i;
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;//*********
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_send_len[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_send_len[7 :0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= i_channel;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= {1'b0,i_tri_model,i_frq_sel};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= {6'b0,i_pulse,i_send_model};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge w_uart_clk);
end
endtask




endmodule

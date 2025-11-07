`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/07/13 22:35:07
// Design Name: 
// Module Name: UART_TOP
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
`define VIVADO // Quartus/VIVADO


module UART_TOP(
    input               i_clk               ,

    input               i_uart_rx           ,      
    output              o_uart_tx                 
);

wire                    w_clk_50Mhz         ;
wire                    w_clk_rst           ;
wire                    w_system_pll_locked ;

assign w_clk_rst = ~w_system_pll_locked     ;


wire [7 :0]             w_user_tx_data  ;
wire                    w_user_tx_ready ;
wire [7 :0]             w_user_rx_data  ;
wire                    w_user_rx_valid ;
wire                    w_user_clk      ;
wire                    w_user_rst      ;
wire                    w_fifo_empty    ;
reg                     r_fifo_rden     ;
reg                     r_uart_tx_valid ;
reg                     r_rden_lock     ;
reg                     r_user_tx_ready ;


`ifdef VIVADO

system_pll system_pll_u0
(
    .clk_in1            (i_clk                  ),
    .clk_out1           (w_clk_50Mhz            ),   
    .locked             (w_system_pll_locked    )      
);

`elsif Quartus

system_clk system_clk_u0(
    .inclk0              (i_clk                  ),
    .c0                  (w_clk_50Mhz            ),
    .locked              (w_system_pll_locked    )
);

`endif 


uart_drive#(
    .P_SYSTEM_CLK       (50_000_000             ),   //输入时钟频率
    .P_UART_BUADRATE    (115200                 ),   //波特率
    .P_UART_DATA_WIDTH  (8                      ),   //数据宽度
    .P_UART_STOP_WIDTH  (1                      ),   //1或者2
    .P_UART_CHECK       (0                      )    //None=0 Odd-1 Even-2
)
uart_drive_u0
(                  
    .i_clk              (w_clk_50Mhz            ),
    .i_rst              (w_clk_rst              ),  

    .i_uart_rx          (i_uart_rx              ),
    .o_uart_tx          (o_uart_tx              ),

    .i_user_tx_data     (w_user_tx_data         ),
    .i_user_tx_valid    (r_uart_tx_valid        ),
    .o_user_tx_ready    (w_user_tx_ready        ),
    .o_user_rx_data     (w_user_rx_data         ),
    .o_user_rx_valid    (w_user_rx_valid        ),
    .o_user_clk         (w_user_clk             ),
    .o_user_rst         (w_user_rst             )   
);

`ifdef VIVADO

UART_FIFO UART_FIFO_U0 (
  .clk                  (w_user_clk             ),      // input wire clk
  .srst                 (w_user_rst             ),    // input wire srst
  .din                  (w_user_rx_data         ),      // input wire [7 : 0] din
  .wr_en                (w_user_rx_valid        ),  // input wire wr_en
  .rd_en                (r_fifo_rden            ),  // input wire rd_en
  .dout                 (w_user_tx_data         ),    // output wire [7 : 0] dout
  .full                 (),    // output wire full
  .empty                (w_fifo_empty           )  // output wire empty
);

`elsif Quartus

UART_FIFO UART_FIFO_U0(
    .clock              (w_user_clk             ),
    .data               (w_user_rx_data         ),
    .rdreq              (r_fifo_rden            ),
    .wrreq              (w_user_rx_valid        ),
    .empty              (w_fifo_empty           ),
    .full               (),
    .q                  (w_user_tx_data         )   
);

`endif 

always@(posedge w_user_clk,posedge w_user_rst)
begin
    if(w_user_rst)
        r_user_tx_ready <= 'd0;
    else
        r_user_tx_ready <= w_user_tx_ready;
end


always@(posedge w_user_clk,posedge w_user_rst)
begin
    if(w_user_rst)
        r_rden_lock <= 'd0;
    else if(w_user_tx_ready && !r_user_tx_ready)
        r_rden_lock <= 'd0;
    else if(~w_fifo_empty && w_user_tx_ready)
        r_rden_lock <= 'd1;
    else 
        r_rden_lock <= r_rden_lock;
end

always@(posedge w_user_clk,posedge w_user_rst)
begin
    if(w_user_rst)
        r_fifo_rden <= 'd0;
    else if(~w_fifo_empty && w_user_tx_ready && !r_rden_lock)
        r_fifo_rden <= 'd1;
    else 
        r_fifo_rden <= 'd0;
end

always@(posedge w_user_clk,posedge w_user_rst)
begin
    if(w_user_rst)
        r_uart_tx_valid <= 'd0;
    else 
        r_uart_tx_valid <= r_fifo_rden;
end


endmodule

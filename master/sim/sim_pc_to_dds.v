`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/18 22:21:12
// Design Name: 
// Module Name: sim_pc_to_dds
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


module sim_pc_to_dds();

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

wire    w_sam_clk ;
wire    w_sam_rst ;
wire    [7:0]   w_lfsr_value;
// LFSR_Gen_8dout#(
//     .           P_LFSR_INIT (16'hA076 )  
// )LFSR_Gen_8dout(
//     .   i_clk          (w_sam_clk)         ,
//     .   i_rst          (w_sam_rst)         ,
//     .   o_lfsr_value   (w_lfsr_value)        
// );

top top_u0(
    . i_clk       (clk      ), 
    . i_uart_rx   (w_uart_tx),
    . o_uart_tx   (w_uart_rx) 
);

reg [16:0]  r_send_len   = 22;

reg [0:0]     r_dds1_run   = 1;
reg [2:0]   r_dds1_type  = 0;
reg [15:0]  r_dds1_frq   = 5000000;
reg [15:0]  r_dds1_amp   = 1500;
reg [15:0]  r_dds1_offset   = 0;
reg [15:0]  r_dds1_pha   = 0;
reg [15:0]  r_dds1_duty   = 200;

reg [0:0]     r_dds2_run   = 1;//
reg [2:0]   r_dds2_type  = 0;//
reg [15:0]  r_dds2_frq   = 2500000;//
reg [15:0]  r_dds2_amp   = 1500;//
reg [15:0]  r_dds2_offset   = 0;//
reg [15:0]  r_dds2_pha   = 0;//
reg [15:0]  r_dds2_duty   = 800;


initial begin
r_udma_tx_data  <= 'd0;
r_udma_tx_valid <= 'd0;
wait(!rst);
repeat(1)@(posedge w_uart_clk);
udma(r_send_len,r_dds1_run,r_dds1_type,r_dds1_frq,r_dds1_amp,r_dds1_offset,r_dds1_pha,r_dds1_duty,
                r_dds2_run,r_dds2_type,r_dds2_frq,r_dds2_amp,r_dds2_offset,r_dds2_pha,r_dds2_duty);
end



task udma(input  [16:0] r_send_len,input r_dds1_run,input[2:0]   r_dds1_type,input[23:0]  r_dds1_frq,input [15:0]  r_dds1_amp,input [15:0]  r_dds1_offset,input [15:0]  r_dds1_pha,input [15:0]  r_dds1_duty,
                                   input r_dds2_run,input[2:0]   r_dds2_type,input[15:0]  r_dds2_frq,input [15:0]  r_dds2_amp,input [15:0]  r_dds2_offset,input [15:0]  r_dds2_pha,input [15:0]  r_dds2_duty
);
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
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd1;
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_send_len[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_send_len[7 :0];
    r_udma_tx_valid <= 'd1; 

    @(posedge w_uart_clk);
    r_udma_tx_data  <= {4'd0,r_dds1_run,r_dds1_type};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_frq[23:16];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_frq[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_frq[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_amp[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_amp[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_offset[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_offset[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_pha[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_pha[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_duty[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds1_duty[7:0];
    r_udma_tx_valid <= 'd1; 

    @(posedge w_uart_clk);
    r_udma_tx_data  <= {4'd0,r_dds2_run,r_dds2_type};
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_frq[23:16];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_frq[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_frq[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_amp[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_amp[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_offset[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_offset[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_pha[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_pha[7:0];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_duty[15:8];
    r_udma_tx_valid <= 'd1; 
    @(posedge w_uart_clk);
    r_udma_tx_data  <= r_dds2_duty[7:0];
    r_udma_tx_valid <= 'd1; 

    @(posedge w_uart_clk);
    r_udma_tx_data  <= 'd0;
    r_udma_tx_valid <= 'd0; 
    @(posedge w_uart_clk);
end
endtask
endmodule

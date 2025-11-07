`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/07 16:41:38
// Design Name: 
// Module Name: sim_scope_2_pc
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


module sim_scope_2_pc();

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

reg w_udp_clk;

initial begin
    w_udp_clk = 0;
end

always
begin
    w_udp_clk = 0;
    #4;
    w_udp_clk = 1;
    #4;    
end


// wire              i_rxc      ;         
// wire [3 :0]       i_rxd      ;         
// wire              i_rx_ctl   ;         
// wire              o_txc      ;         
// wire [3 :0]       o_txd      ;         
// wire              o_tx_ctl   ;         

top top_u0(
    . i_clk       (clk      )
);
   


// // /*------start---------------udp协议栈大帝-------------------------------*/


// reg [15:0]              r_send_len              ;
// reg [7 :0]              r_send_data             ;
// reg                     r_send_last             ;
// reg                     r_send_valid            ;
// wire                    w_send_ready            ;
// wire [15:0]             w_rec_len               ;
// wire [7 :0]             w_rec_data              ;
// wire                    w_rec_last              ;
// wire                    w_rec_valid             ;
// wire [7 :0]             w_GMII_tx_data          ;
// wire                    w_GMII_tx_valid         ;
// wire [7 :0]             w_GMII_rx_data          ;
// wire                    w_GMII_rx_valid         ; 
// //UDP协议栈，时钟为PLL输出的125MHZ
// UDP_Stack_Module#(
//     .P_TARGET_PORT          (16'd8080                                  ),//PC端口
//     .P_SOURCE_PORT          (16'd8080                                  ),//板卡端口
//     .P_TARGET_IP            ({8'd192,8'd168,8'd100,8'd100}              ),//PC端IP
//     .P_SOURCE_IP            ({8'd192,8'd168,8'd100,8'd99}             ),//板卡IP
//     .P_TARTGET_MAC          ({8'h01,8'h02,8'h03,8'h04,8'h05,8'h06}    ),//PC端MAC
//     .P_SOURCE_MAC           ({8'hff,8'hff,8'hff,8'hff,8'hff,8'hff}      ),//板卡MAC
//     .P_CRC_CHEKC            ( 1                                        ) //CRC使能
// )
// UDP_Stack_Module_u0
// (
//     .i_clk                  (w_udp_clk              ),
//     .i_rst                  (0          ),
//     /*--------info port-------*/    
//     .i_target_port          (0                      ),
//     .i_target_port_valid    (0                      ),
//     .i_source_port          (0                      ),
//     .i_source_port_valid    (0                      ),
//     .i_target_ip            (0                      ),
//     .i_target_ip_valid      (0                      ),
//     .i_source_ip            (0                      ),
//     .i_source_ip_valid      (0                      ),
//     .i_target_mac           (0                      ),
//     .i_target_mac_valid     (0                      ),
//     .i_source_mac           (0                      ),
//     .i_source_mac_valid     (0                      ),
//     /*--------data port--------*/
//     .i_send_len             (r_send_len             ),//user发送数据长度
//     .i_send_data            (r_send_data            ),//user发送数据
//     .i_send_last            (r_send_last            ),//user发送结束
//     .i_send_valid           (r_send_valid           ),//user发送有效
//     // .i_send_len             (w_rec_len             ),//user发送数据长度
//     // .i_send_data            (w_rec_data            ),//user发送数据
//     // .i_send_last            (w_rec_last            ),//user发送结束
//     // .i_send_valid           (w_rec_valid           ),//user发送有效

//     .o_send_ready           (w_send_ready           ),//user可以发送信号
//     .o_rec_len              (w_rec_len              ),//user接收数据长度
//     .o_rec_data             (w_rec_data             ),//user接收数据
//     .o_rec_last             (w_rec_last             ),//user接收结束
//     .o_rec_valid            (w_rec_valid            ),//user接收有效

//     .o_source_ip            (),
//     .o_source_ip_valid      (),
//     .o_rec_src_mac          (),
//     .o_rec_src_valid        (),
//     .o_crc_error            (),   
//     .o_crc_valid            (), 
//     /*--------GMII port--------*/
//     .o_GMII_data            (w_GMII_tx_data         ),
//     .o_GMII_valid           (w_GMII_tx_valid        ),
//     .i_GMII_data            (w_GMII_rx_data         ),
//     .i_GMII_valid           (w_GMII_rx_valid        )   
// );


// //GMII转RGMII接口模块，时钟为i_rxc
// GMII2RGMII_Drive GMII2RGMII_Drive_u0(
//     //UDP协议栈输入
//     .i_udp_stack_clk        (w_udp_clk              ),
//     .i_GMII_data            (w_GMII_tx_data         ),
//     .i_GMII_valid           (w_GMII_tx_valid        ),
//     .o_GMII_data            (w_GMII_rx_data         ),
//     .o_GMII_valid           (w_GMII_rx_valid        ),

//     //RGMII接口输出
//     .i_rxc                  (i_rxc   ),
//     .i_rxd                  (i_rxd   ),
//     .i_rx_ctl               (i_rx_ctl),
//     .o_txc                  (o_txc   ),
//     .o_txd                  (o_txd   ),
//     .o_tx_ctl               (o_tx_ctl),
//     .o_speed                ( ),
//     .o_link                 ( ),
//     .o_user_clk             (                       )
// );

// /*-------end-----------------udp协议栈大帝------------------------------*/
// initial begin
//     wait(!rst);
//     #100;
//     udp_send();

// end

   
   
// task udp_send();
// begin:hehe
// r_send_len   <= 'd0;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd0;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd100;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd1;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd1;
// r_send_last  <= 'd0;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd8;
// r_send_data  <= 'd0;
// r_send_last  <= 'd1;
// r_send_valid <= 'd1;
// @(posedge w_udp_clk);
// r_send_len   <= 'd0;
// r_send_data  <= 'd0;
// r_send_last  <= 'd0;
// r_send_valid <= 'd0;

// end
// endtask
endmodule

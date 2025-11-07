`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/14 10:58:04
// Design Name: 
// Module Name: UDP_Stack_Module
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


 module UDP_Stack_Module#(
    parameter           P_TARGET_PORT   = 16'h8080                                 ,
                        P_SOURCE_PORT   = 16'h8080                                 ,
                        P_TARGET_IP     = {8'd192,8'd168,8'd1,8'd0}                ,
                        P_SOURCE_IP     = {8'd192,8'd168,8'd1,8'd1}                ,
                        P_TARTGET_MAC   = {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00}    ,
                        P_SOURCE_MAC    = {8'h00,8'h00,8'h00,8'h00,8'h00,8'h00}    ,
                        P_CRC_CHEKC     =  1                                                                               
)(
    input               i_clk               ,
    input               i_rst               ,
    /*--------info port-------*/    
    input  [15:0]       i_target_port       ,
    input               i_target_port_valid ,
    input  [15:0]       i_source_port       ,
    input               i_source_port_valid ,
    input  [31:0]       i_target_ip         ,
    input               i_target_ip_valid   ,
    input  [31:0]       i_source_ip         ,
    input               i_source_ip_valid   ,
    input  [47:0]       i_target_mac        ,
    input               i_target_mac_valid  ,
    input  [47:0]       i_source_mac        ,
    input               i_source_mac_valid  ,
    /*--------data port--------*/
    input  [15:0]       i_send_len          ,
    input  [7 :0]       i_send_data         ,
    input               i_send_last         ,
    input               i_send_valid        ,
    output              o_send_ready        ,
    output [15:0]       o_rec_len           ,
    output [7 :0]       o_rec_data          ,
    output              o_rec_last          ,
    output              o_rec_valid         ,

    output [31:0]       o_source_ip         ,
    output              o_source_ip_valid   ,
    output [47:0]       o_rec_src_mac       ,
    output              o_rec_src_valid     ,
    output              o_crc_error         ,   
    output              o_crc_valid         , 
    /*--------GMII port--------*/
    output [7 :0]       o_GMII_data         ,
    output              o_GMII_valid        ,
    input  [7 :0]       i_GMII_data         ,
    input               i_GMII_valid
);


wire                    w_udp_ready             ;
wire                    w_ip_next_frame_stop    ;
wire                    w_udp_next_frame_stop   ;
wire [15:0]             w_udp2ip_len            ;    
wire [7 :0]             w_udp2ip_data           ;    
wire                    w_udp2ip_last           ;    
wire                    w_udp2ip_valid          ;    
wire [15:0]             w_ip2udp_len            ;    
wire [7 :0]             w_ip2udp_data           ;    
wire                    w_ip2udp_last           ;    
wire                    w_ip2udp_valid          ;    

wire [15:0]             w_icmp_rec_len          ;
wire [7 :0]             w_icmp_rec_data         ;
wire                    w_icmp_rec_last         ;
wire                    w_icmp_rec_valid        ;
wire [15:0]             w_icmp_send_len         ;
wire [7 :0]             w_icmp_send_data        ;
wire                    w_icmp_send_last        ;
wire                    w_icmp_send_valid       ;

wire [15:0]             w_icmp_udp_type         ;
wire [15:0]             w_icmp_udp_len          ;
wire [7 :0]             w_icmp_udp_data         ;
wire                    w_icmp_udp_last         ;
wire                    w_icmp_udp_valid        ;

wire [47:0]             w_arp_rec_target_mac    ;
wire                    w_arp_rec_target_valid  ;

wire [7 :0]             w_arp2mac_data          ;
wire                    w_arp2mac_last          ;
wire                    w_arp2mac_valid         ;
wire [7 :0]             w_mac2arp_data          ;
wire                    w_mac2arp_last          ;
wire                    w_mac2arp_valid         ;

wire [15:0]             w_ip2mac_type           ;
wire [15:0]             w_ip2mac_len            ;
wire [7 :0]             w_ip2mac_data           ;
wire                    w_ip2mac_last           ;
wire                    w_ip2mac_valid          ;
wire [7 :0]             w_mac2ip_data           ;
wire                    w_mac2ip_last           ;
wire                    w_mac2ip_valid          ;

wire [15:0]             w_ip_icmp_2_mac_type    ;
wire [15:0]             w_ip_icmp_2_mac_len     ;
wire [7 :0]             w_ip_icmp_2_mac_data    ;
wire                    w_ip_icmp_2_mac_last    ;
wire                    w_ip_icmp_2_mac_valid   ;

wire [31:0]             w_arp_seek_ip           ;
wire                    w_arp_seek_valid        ;

wire                    w_send_ready            ;
reg                     ro_send_ready           ;
reg  [7 :0]             r_ready_cnt             ;
reg                     ri_send_valid           ;

assign o_send_ready     = w_send_ready;
assign w_send_ready     = ~w_ip_next_frame_stop & ~w_udp_next_frame_stop & w_udp_ready;

Ethernet_UDP#(
    .P_TARGET_PORT              (P_TARGET_PORT      ),
    .P_SOURCE_PORT              (P_SOURCE_PORT      )  
)           
Ethernet_UDP_u0         
(           
    .i_clk                      (i_clk              ),
    .i_rst                      (i_rst              ),
    .i_target_port              (i_target_port      ),
    .i_target_valid             (i_target_port_valid),
    .i_source_port              (i_source_port      ),
    .i_source_valid             (i_source_port_valid),
    .i_send_len                 (i_send_len         ),
    .i_send_data                (i_send_data        ),
    .i_send_last                (i_send_last        ),
    .i_send_valid               (i_send_valid       ),
    .o_udp_len                  (o_rec_len          ),
    .o_udp_data                 (o_rec_data         ),
    .o_udp_last                 (o_rec_last         ),
    .o_udp_valid                (o_rec_valid        ),
    .o_ip_len                   (w_udp2ip_len       ),
    .o_ip_data                  (w_udp2ip_data      ),
    .o_ip_last                  (w_udp2ip_last      ),
    .o_ip_valid                 (w_udp2ip_valid     ),
    .i_ip_len                   (w_ip2udp_len       ),
    .i_ip_data                  (w_ip2udp_data      ),
    .i_ip_last                  (w_ip2udp_last      ),
    .i_ip_valid                 (w_ip2udp_valid     )
);

Ethernet_ICMP Ethernet_ICMP_u0(
    .i_clk                      (i_clk              ),
    .i_rst                      (i_rst              ),
    .i_icmp_len                 (w_icmp_rec_len     ),
    .i_icmp_data                (w_icmp_rec_data    ),
    .i_icmp_last                (w_icmp_rec_last    ),
    .i_icmp_valid               (w_icmp_rec_valid   ), 
    .o_icmp_len                 (w_icmp_send_len    ),
    .o_icmp_data                (w_icmp_send_data   ),
    .o_icmp_last                (w_icmp_send_last   ),
    .o_icmp_valid               (w_icmp_send_valid  )
);

Data_2to1#(
    .P_LEN                      (38                 )
)
Data_2to1_ICMP_UDP
(
    .i_clk                      (i_clk              ),
    .i_rst                      (i_rst              ),

    .i_type_A                   (17                 ),
    .i_len_A                    (w_udp2ip_len       ),
    .i_data_A                   (w_udp2ip_data      ),
    .i_last_A                   (w_udp2ip_last      ),
    .i_valid_A                  (w_udp2ip_valid     ),
    .o_next_frame_stop          (w_udp_next_frame_stop),
        
    .i_type_B                   (1                  ),
    .i_len_B                    (w_icmp_send_len    ),
    .i_data_B                   (w_icmp_send_data   ),
    .i_last_B                   (w_icmp_send_last   ),
    .i_valid_B                  (w_icmp_send_valid  ),

    .o_type                     (w_icmp_udp_type    ),
    .o_len                      (w_icmp_udp_len     ),
    .o_data                     (w_icmp_udp_data    ),
    .o_last                     (w_icmp_udp_last    ),
    .o_valid                    (w_icmp_udp_valid   )
);


Ethernet_ARP#(
    .P_TARGET_IP                (P_TARGET_IP                            ),
    .P_SOURCE_MAC               (P_SOURCE_MAC                           ),
    .P_SOURCE_IP                (P_SOURCE_IP                            )
)   
Ethernet_ARP_u0 
(   
    .i_clk                      (i_clk                                  ),
    .i_rst                      (i_rst                                  ),
    .i_source_ip                (i_source_ip                            ),
    .i_s_ip_valid               (i_source_ip_valid                      ),
    .i_source_mac               (i_source_mac                           ),
    .i_s_mac_valid              (i_source_mac_valid                     ),
    .i_target_ip                (i_target_ip                            ),
    .i_target_valid             (i_target_ip_valid                      ), 
    .i_seek_ip                  (w_arp_seek_ip                          ),
    .i_seek_valid               (w_arp_seek_valid                       ),
    .o_rec_target_mac           (w_arp_rec_target_mac                   ),
    .o_rec_target_valid         (w_arp_rec_target_valid                 ),
    .o_mac_data                 (w_arp2mac_data                         ),
    .o_mac_last                 (w_arp2mac_last                         ),
    .o_mac_valid                (w_arp2mac_valid                        ),
    .i_mac_data                 (w_mac2arp_data                         ),
    .i_mac_last                 (w_mac2arp_last                         ),
    .i_mac_valid                (w_mac2arp_valid                        )
);

Ethernet_IP#(
    .P_ST_TARGET_IP             (P_TARGET_IP            ),
    .P_ST_SOURCE_IP             (P_SOURCE_IP            )
)
Ethernet_IP_u0
(
    .i_clk                      (i_clk                  ),
    .i_rst                      (i_rst                  ),
    .i_target_ip                (i_target_ip            ),
    .i_target_valid             (i_target_ip_valid      ),
    .i_source_ip                (i_source_ip            ),
    .i_source_valid             (i_source_ip_valid      ),
    .i_send_type                (w_icmp_udp_type[7 :0]  ),
    .i_send_len                 (w_icmp_udp_len         ),
    .i_send_data                (w_icmp_udp_data        ),
    .i_send_last                (w_icmp_udp_last        ),
    .i_send_valid               (w_icmp_udp_valid       ),
    .o_udp_len                  (w_ip2udp_len           ),
    .o_udp_data                 (w_ip2udp_data          ),
    .o_udp_last                 (w_ip2udp_last          ),
    .o_udp_valid                (w_ip2udp_valid         ),
    .o_icmp_len                 (w_icmp_rec_len         ),
    .o_icmp_data                (w_icmp_rec_data        ),
    .o_icmp_last                (w_icmp_rec_last        ),
    .o_icmp_valid               (w_icmp_rec_valid       ),
    .o_source_ip                (o_source_ip            ),
    .o_source_ip_valid          (o_source_ip_valid      ),
    .o_arp_seek_ip              (w_arp_seek_ip          ),
    .o_arp_seek_valid           (w_arp_seek_valid       ),
    .o_mac_type                 (w_ip2mac_type          ),
    .o_mac_len                  (w_ip2mac_len           ),
    .o_mac_data                 (w_ip2mac_data          ),
    .o_mac_last                 (w_ip2mac_last          ),
    .o_mac_valid                (w_ip2mac_valid         ),
    .i_mac_data                 (w_mac2ip_data          ),
    .i_mac_last                 (w_mac2ip_last          ),
    .i_mac_valid                (w_mac2ip_valid         )   

);

Data_2to1#(
    .P_LEN                      (28                 )    
)
Data_2to1_ARP_IP_U0
(
    .i_clk                      (i_clk              ),
    .i_rst                      (i_rst              ),

    .i_type_A                   (16'h0806           ),
    .i_len_A                    (50                 ),
    .i_data_A                   (w_arp2mac_data     ),
    .i_last_A                   (w_arp2mac_last     ),
    .i_valid_A                  (w_arp2mac_valid    ),
    .o_next_frame_stop          (w_ip_next_frame_stop),
        
    .i_type_B                   (w_ip2mac_type      ),
    .i_len_B                    (w_ip2mac_len       ),
    .i_data_B                   (w_ip2mac_data      ),
    .i_last_B                   (w_ip2mac_last      ),
    .i_valid_B                  (w_ip2mac_valid     ),

    .o_type                     (w_ip_icmp_2_mac_type   ),
    .o_len                      (w_ip_icmp_2_mac_len    ),
    .o_data                     (w_ip_icmp_2_mac_data   ),
    .o_last                     (w_ip_icmp_2_mac_last   ),
    .o_valid                    (w_ip_icmp_2_mac_valid  )
);

Ethernet_MAC#(
    .P_TARTGET_MAC              (P_TARTGET_MAC                          ),
    .P_SOURCE_MAC               (P_SOURCE_MAC                           ),
    .P_CRC_CHECK                (P_CRC_CHEKC                            ) 
)   
Ethernet_MAC_u0 
(   
    .i_clk                      (i_clk                              ),
    .i_rst                      (i_rst                              ),
    .i_target_mac               (w_arp_rec_target_mac               ),
    .i_target_mac_valid         (w_arp_rec_target_valid             ),
    .i_source_mac               (i_source_mac                       ),
    .i_source_mac_valid         (i_source_mac_valid                 ),
    .i_udp_valid                (i_send_valid                       ),
    .o_udp_ready                (w_udp_ready                        ),
    .i_send_type                (w_ip_icmp_2_mac_type               ),
    .i_send_len                 (w_ip_icmp_2_mac_len                ),
    .i_send_data                (w_ip_icmp_2_mac_data               ),
    .i_send_last                (w_ip_icmp_2_mac_last               ),
    .i_send_valid               (w_ip_icmp_2_mac_valid              ),
    .o_ip_data                  (w_mac2ip_data                      ),
    .o_ip_last                  (w_mac2ip_last                      ),
    .o_ip_valid                 (w_mac2ip_valid                     ),
    .o_arp_data                 (w_mac2arp_data                     ),
    .o_arp_last                 (w_mac2arp_last                     ),
    .o_arp_valid                (w_mac2arp_valid                    ),
    .o_rec_src_mac              (o_rec_src_mac                      ),
    .o_rec_src_valid            (o_rec_src_valid                    ),
    .o_crc_error                (o_crc_error                        ),   
    .o_crc_valid                (o_crc_valid                        ), 
    .o_GMII_data                (o_GMII_data                        ),
    .o_GMII_valid               (o_GMII_valid                       ),
    .i_GMII_data                (i_GMII_data                        ),
    .i_GMII_valid               (i_GMII_valid                       )    
);

endmodule

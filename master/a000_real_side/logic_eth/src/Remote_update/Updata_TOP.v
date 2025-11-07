`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/07/25 12:42:19
// Design Name: 
// Module Name: Updata_TOP
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description:  ID(1) + cmd(1) + addr4(1) + addr3(1) + addr2(1) + addr1(1) + plyload(1024);
// cmd:
// H4bit : 0-更新完成 1-开始更新
// L4bit : 0-普通写   1-先擦除4KB扇区再写 2-回复
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Updata_TOP(
    input           i_clk                   ,
    input           i_rst                   ,

    input  [7 :0]   i_erx_axis_data         ,
    input  [15:0]   i_erx_axis_user         ,
    input           i_erx_axis_last         ,
    input           i_erx_axis_valid        ,

    output [7 :0]   o_etx_axis_data         ,
    output [15:0]   o_etx_axis_user         ,
    output          o_etx_axis_last         ,
    output          o_etx_axis_valid        ,
    input           i_etx_axis_ready        ,

    output          o_updata_run            ,

    output  [1 :0]  o_operation_type        ,//操作类型
    output  [23:0]  o_operation_addr        ,//操作地址
    output  [8 :0]  o_operation_num         ,//限制用户每次最多写256字节
    output          o_operation_valid       ,//操作握手有效
    input           i_operation_ready       ,//操作握手准备
    output  [7 :0]  o_write_data            ,//写数据
    output          o_write_sop             ,//写数据-开始信号
    output          o_write_eop             ,//写数据-结束信号
    output          o_write_valid           ,//写数据-有效信号
    input   [7 :0]  i_read_data             ,//读数据
    input           i_read_sop              ,//读数据-开始信号
    input           i_read_eop              ,//读数据-结束信号
    input           i_read_valid             //读数据-有效信号
);

wire [1 :0]         w_reply_info            ;
wire                w_reply_valid           ;

//**********************************************
wire [127:0]        w_encrypt_data      ;
wire                w_encrypt_valid     ;
wire                w_decrypt_ready     ;
wire [127:0]        w_decrypt_data      ;
wire                w_decrypt_valid     ;
SM4_Decrypt#(
    .P_INITIAL_KEY      (128'h000102030405060708090A0B0C0D0E0F  )
)
SM4_Decrypt_u0
(
    .i_clk              (i_clk              ),
    .i_rst              (i_rst              ),
    .i_Initial_Key      (0                  ),
    .i_Initial_valid    (0                  ),
    .i_axis_data        (w_encrypt_data     ),
    .i_axis_valid       (w_encrypt_valid    ),
    .o_axis_ready       (w_decrypt_ready    ),      
    .o_axim_data        (w_decrypt_data     ),
    .o_axim_valid       (w_decrypt_valid    )
);
//**********************************************

Updata_Ctrl Updata_Ctrl_u0(
    .i_clk                      (i_clk              ),
    .i_rst                      (i_rst              ),

    .i_erx_axis_data            (i_erx_axis_data    ),
    .i_erx_axis_user            (i_erx_axis_user    ),
    .i_erx_axis_last            (i_erx_axis_last    ),
    .i_erx_axis_valid           (i_erx_axis_valid   ),

    .o_reply_info               (w_reply_info       ),
    .o_reply_valid              (w_reply_valid      ),
    .o_updata_run               (o_updata_run       ),

    .o_operation_type           (o_operation_type   ),//操作类型
    .o_operation_addr           (o_operation_addr   ),//操作地址
    .o_operation_num            (o_operation_num    ),//限制用户每次最多写256字节
    .o_operation_valid          (o_operation_valid  ),//操作握手有效
    .i_operation_ready          (i_operation_ready  ),//操作握手准备
    .o_write_data               (o_write_data       ),//写数据
    .o_write_sop                (o_write_sop        ),//写数据-开始信号
    .o_write_eop                (o_write_eop        ),//写数据-结束信号
    .o_write_valid              (o_write_valid      ),//写数据-有效信号
    .i_read_data                (i_read_data        ),//读数据
    .i_read_sop                 (i_read_sop         ),//读数据-开始信号
    .i_read_eop                 (i_read_eop         ),//读数据-结束信号
    .i_read_valid               (i_read_valid       ) //读数据-有效信号
);

Updata_reply Updata_reply_u0(
    .i_clk                      (i_clk              ),  
    .i_rst                      (i_rst              ),  

    .i_reply_info               (w_reply_info       ),  
    .i_reply_valid              (w_reply_valid      ),  
    
    .o_etx_axis_data            (o_etx_axis_data    ),  
    .o_etx_axis_user            (o_etx_axis_user    ),  
    .o_etx_axis_last            (o_etx_axis_last    ),  
    .o_etx_axis_valid           (o_etx_axis_valid   ),  
    .i_etx_axis_ready           (i_etx_axis_ready   )  
);


endmodule

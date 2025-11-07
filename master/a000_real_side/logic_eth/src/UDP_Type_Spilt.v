`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/30 21:52:03
// Design Name: 
// Module Name: UDP_Type_Spilt
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


module UDP_Type_Spilt(
    input                   i_clk                       ,
    input                   i_rst                       ,
    input   [15:0]          i_udp_len                   ,
    input   [7 :0]          i_udp_data                  ,
    input                   i_udp_last                  ,
    input                   i_udp_valid                 ,

    output  [7:0]           o_scope_channel              ,
    output  [1:0]           o_trigger_coupling          ,
    output                  o_trigger_coupling_vld      ,
    output  [1:0]           o_trigger_mode              ,  
    output                  o_trigger_mode_vld          ,

    output  [7 :0]          o_dds_custom_channel        ,
    output  [15:0]          o_dds_custom_len            ,
    output  [7 :0]          o_dds_custom_data           ,
    output                  o_dds_custom_last           ,
    output                  o_dds_custom_valid           ,

    output  [7 :0]          o_music_data           ,
    output  [15:0]          o_music_len            ,
    output                  o_music_last           ,
    output                  o_music_valid          ,
    output                  o_music_run            ,

    output    [255:0]       o_cipher_code_data          ,
    output                  o_cipher_code_vld        ,

    output                  o_uart_min_b_vld            ,
    output   [15:0]         o_uart_min_b_data           ,
    output                  o_uart_max_b_vld            ,
    output   [15:0]         o_uart_max_b_data           ,
    output                  o_uart_8b10_or_nor_vld      ,
    output                  o_uart_8b10_or_nor_data     ,   //0 正常模式    1 8b10b编码模式 

    output  [15:0]          o_updata_len            ,
    output  [7 :0]          o_updata_data           ,
    output                  o_updata_last           ,
    output                  o_updata_valid        
 
);
localparam  LP_TYPE_SCOPE  = 0 ;
localparam  LP_TYPE_CUSTOM = 1 ;
localparam  LP_TYPE_MUSIC  = 2 ;
localparam  LP_TYPE_CIPHER_CODE     = 3 ; 
localparam  LP_TYPE_UART            = 4 ; 
localparam  LP_TYPE_UPDATA            = 5 ; 

reg         [15:0]          r_cnt                       ;
reg         [15:0]          ri_udp_len                  ;
reg         [7 :0]          ri_udp_data                 ;
reg                         ri_udp_last                 ;
reg                         ri_udp_valid                ;

reg         [7 :0]          r_udp_type                  ;
reg         [7 :0]          r_channel                   ;
reg         [15:0]          r_payload_len               ;


reg         [1:0]           ro_trigger_coupling         ;
reg                         ro_trigger_coupling_vld     ;
reg         [1:0]           ro_trigger_mode             ;
reg                         ro_trigger_mode_vld         ;
reg                         ro_dds_custom_last          ;
reg                         ro_dds_custom_valid         ;

reg         [15:0]          ro_music_len                ;
reg                         ro_music_last               ;
reg                         ro_music_valid              ;
reg                         ro_music_run                ;

reg     [255:0]             ro_cipher_code_data         ;
reg                         ro_cipher_code_vld          ;

reg                         ro_uart_min_b_vld           ;      
reg     [15:0]              ro_uart_min_b_data          ;      
reg                         ro_uart_max_b_vld           ;    
reg     [15:0]              ro_uart_max_b_data          ;    
reg                         ro_uart_8b10_or_nor_vld     ;    
reg                         ro_uart_8b10_or_nor_data    ;   

reg     [15:0]              ro_updata_len               ;
reg     [7 :0]              ro_updata_data              ;
reg                         ro_updata_last              ;
reg                         ro_updata_valid             ;



assign      o_scope_channel        = r_channel              ;
assign      o_trigger_coupling     = ro_trigger_coupling    ;
assign      o_trigger_coupling_vld = ro_trigger_coupling_vld;
assign      o_trigger_mode         = ro_trigger_mode        ;
assign      o_trigger_mode_vld     = ro_trigger_mode_vld    ;

assign      o_dds_custom_channel   = r_channel              ;
assign      o_dds_custom_len       = r_payload_len          ;
assign      o_dds_custom_data      = ri_udp_data            ;
assign      o_dds_custom_last      = ro_dds_custom_last     ;
assign      o_dds_custom_valid     = ro_dds_custom_valid    ;

 

assign      o_music_data   = ri_udp_data    ;
assign      o_music_len    = ro_music_len   ;
assign      o_music_last   = ro_music_last  ;
assign      o_music_valid  = ro_music_valid ;
assign      o_music_run    = ro_music_run   ;  

assign      o_cipher_code_data = ro_cipher_code_data;
assign      o_cipher_code_vld  = ro_cipher_code_vld ;

assign      o_uart_min_b_vld        = ro_uart_min_b_vld         ;
assign      o_uart_min_b_data       = ro_uart_min_b_data        ;
assign      o_uart_max_b_vld        = ro_uart_max_b_vld         ;
assign      o_uart_max_b_data       = ro_uart_max_b_data        ;
assign      o_uart_8b10_or_nor_vld  = ro_uart_8b10_or_nor_vld   ;
assign      o_uart_8b10_or_nor_data = ro_uart_8b10_or_nor_data  ;

assign      o_updata_len            = ro_updata_len             ;
assign      o_updata_data           = ro_updata_data            ;
assign      o_updata_last           = ro_updata_last            ;
assign      o_updata_valid          = ro_updata_valid           ;


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_udp_len   <= 'd0;
        ri_udp_data  <= 'd0;
        ri_udp_last  <= 'd0;
        ri_udp_valid <= 'd0;
    end else begin
        ri_udp_len   <= i_udp_len  ;
        ri_udp_data  <= i_udp_data ;
        ri_udp_last  <= i_udp_last ;
        ri_udp_valid <= i_udp_valid;
    end
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_cnt <= 'd0;
    else if(ri_udp_valid)
        r_cnt <= r_cnt + 1;
    else 
        r_cnt <= 'd0;
end



always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_udp_type <= 'd0;
    else if(ri_udp_valid && r_cnt == 0&&ri_udp_data == "$")
        r_udp_type <= LP_TYPE_MUSIC;
    else if(!ri_udp_valid&&i_udp_valid && r_cnt == 0&&i_udp_data == 8'h00)//提前周期
        r_udp_type <= LP_TYPE_UPDATA;
    else if(ri_udp_valid && r_cnt == 3 && r_udp_type != LP_TYPE_MUSIC && r_udp_type != LP_TYPE_UPDATA)
        r_udp_type <= ri_udp_data;
    else if(!ri_udp_valid)
        r_udp_type <= 'd0;        
    else 
        r_udp_type <= r_udp_type;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_channel <= 'd0;
    else if(ri_udp_valid && r_cnt == 4)
        r_channel <= ri_udp_data;
    else 
        r_channel <= r_channel;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_payload_len <= 'd0;
    else if(r_cnt == 5 && r_cnt == 6)
        r_payload_len <= {r_payload_len[7 :0],ri_udp_data};
    else 
        r_payload_len <= r_payload_len;
end


//数据处理
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_trigger_coupling <= 'd0;
    else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_SCOPE)
        ro_trigger_coupling <= ri_udp_data[3:2];
    else 
        ro_trigger_coupling <= ro_trigger_coupling;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_trigger_coupling_vld <= 'd0;
    else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_SCOPE)
        ro_trigger_coupling_vld <= 'd1;
    else 
        ro_trigger_coupling_vld <= 'd0;
end
        
  
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_trigger_mode <= 'd0;
    else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_SCOPE)
        ro_trigger_mode <= ri_udp_data[1:0];
    else 
        ro_trigger_mode <= ro_trigger_mode;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_trigger_mode_vld <= 'd0;
    else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_SCOPE)
        ro_trigger_mode_vld <= 'd1;
    else 
        ro_trigger_mode_vld <= 'd0;
end

//自定义

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_dds_custom_valid <= 'd0;
    else if(ro_dds_custom_last)
        ro_dds_custom_valid <= 'd0;
    else if(r_udp_type == LP_TYPE_CUSTOM && r_cnt == 6)
        ro_dds_custom_valid <= 'd1;
    else 
        ro_dds_custom_valid <= ro_dds_custom_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_dds_custom_last <= 'd0;
    else if(i_udp_last && r_udp_type == LP_TYPE_CUSTOM)
        ro_dds_custom_last <= 'd1;
    else 
        ro_dds_custom_last <= 'd0;
end

//music

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_music_run <= 'd1;
    else if(i_udp_data == "#" && ri_udp_data == "$" && r_cnt == 0&&ri_udp_valid)
        ro_music_run <= 'd0;
    else if(i_udp_data == "$" && ri_udp_data == "$" && r_cnt == 0&&ri_udp_valid)
        ro_music_run <= 'd1;
    else 
        ro_music_run <= ro_music_run;
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_music_valid <= 'd0;
    else if(ro_music_last)
        ro_music_valid <= 'd0;
    else if(r_udp_type == LP_TYPE_MUSIC && ri_udp_valid && r_cnt ==1 )
        ro_music_valid <= 'd1;
    else 
        ro_music_valid <= ro_music_valid;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_music_last <= 'd0;
    else if(i_udp_last && r_udp_type == LP_TYPE_MUSIC)
        ro_music_last <= 'd1;
    else 
        ro_music_last <= 'd0;
end
 
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_music_len <= 'd0;
    else if(ri_udp_valid && r_udp_type == LP_TYPE_MUSIC && r_cnt == 1)//文本模式
        ro_music_len <= ri_udp_data-"0";
    else 
        ro_music_len <= ro_music_len;
end


//sm3
 

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_cipher_code_data <= 'd0;
    else if(ri_udp_valid && r_udp_type == LP_TYPE_CIPHER_CODE && r_cnt >= 7)
        ro_cipher_code_data <= {ro_cipher_code_data[248:0],ri_udp_data};
    else 
        ro_cipher_code_data <= ro_cipher_code_data;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_cipher_code_vld <= 'd0;
    else if(ri_udp_valid && r_udp_type == LP_TYPE_CIPHER_CODE && r_cnt == 262)
        ro_cipher_code_vld <= 'd1;
    else 
        ro_cipher_code_vld <= ro_cipher_code_vld;
end

//uart


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_8b10_or_nor_data <= 'd0;
    else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_UART)
        ro_uart_8b10_or_nor_data <= ri_udp_data;
    else 
        ro_uart_8b10_or_nor_data <= ro_uart_8b10_or_nor_data;
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_8b10_or_nor_vld <= 'd0;
    // else if(ri_udp_valid && r_cnt == 7&&r_udp_type==LP_TYPE_UART)
    //     ro_uart_8b10_or_nor_vld <= 'd1;
    else 
        ro_uart_8b10_or_nor_vld <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_max_b_data <= 'd0;
    else if(ri_udp_valid && (r_cnt == 8 || r_cnt == 9)&&r_udp_type==LP_TYPE_UART)
        ro_uart_max_b_data <= {ro_uart_max_b_data[7:0],ri_udp_data};
    else 
        ro_uart_max_b_data <= ro_uart_max_b_data;
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_max_b_vld <= 'd0;
    else if(ri_udp_valid && r_cnt == 9&&r_udp_type==LP_TYPE_UART)
        ro_uart_max_b_vld <= 'd1;
    else 
        ro_uart_max_b_vld <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_min_b_data <= 'd0;
    else if(ri_udp_valid && (r_cnt == 8 || r_cnt == 9)&&r_udp_type==LP_TYPE_UART)
        ro_uart_min_b_data <= {ro_uart_min_b_data[7:0],ri_udp_data};
    else 
        ro_uart_min_b_data <= ro_uart_min_b_data;
end


always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_uart_min_b_vld <= 'd0;
    else if(ri_udp_valid && r_cnt == 9&&r_udp_type==LP_TYPE_UART)
        ro_uart_min_b_vld <= 'd1;
    else 
        ro_uart_min_b_vld <= 'd0;
end
 //updata
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_updata_len <= 'd0;
    else 
        ro_updata_len <= ri_udp_len;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_updata_data <= 'd0;
    else if(ri_udp_valid &&r_udp_type==LP_TYPE_UPDATA)
        ro_updata_data <= ri_udp_data;
    else 
        ro_updata_data <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_updata_valid <= 'd0;
    else if(ri_udp_valid &&r_udp_type==LP_TYPE_UPDATA)
        ro_updata_valid <= ri_udp_valid;
    else 
        ro_updata_valid <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_updata_last <= 'd0;
    else if(ri_udp_last &&r_udp_type==LP_TYPE_UPDATA)
        ro_updata_last <= ri_udp_last;
    else 
        ro_updata_last <= 'd0;
end
  
endmodule

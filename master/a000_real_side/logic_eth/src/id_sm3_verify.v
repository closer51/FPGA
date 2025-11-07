`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/10/24 16:35:47
// Design Name: 
// Module Name: id_sm3_verify
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


module id_sm3_verify(
    input                   i_clk                   ,
    input                   i_rst                   ,

    input [255:0]           i_udp_code_data         ,
    input                   i_udp_code_vld          ,

    input  [15:0]           i_board_card            ,
    input                   i_board_card_vld        ,
    
    output                  o_verify_sm3_ok                
);

localparam    LP_IDLE                   = 0;
localparam    LP_C_ID_RESULT            = 1;
localparam    LP_C_ID_RECODE_RESULT     = 2;
localparam    LP_VERIFY                 = 3; 

reg [15:0]           ri_board_card      ; 
reg                  ri_board_card_vld  ;
reg                  ro_verify_sm3_ok   ;
reg  [255:0]         ri_udp_code_data   ;


reg [2:0]   r_st_current;
reg [2:0]   r_st_next   ;  
reg [7:0]   r_st_cnt;


reg  [255:0]        ri_Original_Data    ;
reg                 ri_Original_Valid   ; 

reg  [255:0]        r_board_encode_Data    ;
reg                 r_board_encode_Valid   ; 


wire [255:0]        w_Encrypt_Data      ;
wire                w_Encrypt_Valid     ;

assign  o_verify_sm3_ok = ro_verify_sm3_ok;

SM3_Encrypt#(
    .PARALLEL_NUM        (1                 )   
)
SM3_Encrypt_u0
(
    .i_clk               (i_clk            ),
    .i_rst               (i_rst            ),

    .i_Original_Data     (ri_Original_Data  ),
    .i_Original_Valid    (ri_Original_Valid ),
    .o_Encrypt_Data      (w_Encrypt_Data    ),
    .o_Encrypt_Valid     (w_Encrypt_Valid   )
);

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_st_current <= LP_IDLE; 
    else  
        r_st_current <= r_st_next;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_st_cnt <= 'd0; 
    else if(r_st_current != r_st_next)
        r_st_cnt <= 'd0;
    else  
        r_st_cnt <= r_st_cnt+1;
end



always@(*)begin
    case(r_st_current)
        LP_IDLE                     : r_st_next <= ri_board_card_vld?LP_C_ID_RESULT:LP_IDLE;       
        LP_C_ID_RESULT              : r_st_next <= w_Encrypt_Valid? LP_C_ID_RECODE_RESULT: LP_C_ID_RESULT;               
        LP_C_ID_RECODE_RESULT       : r_st_next <= w_Encrypt_Valid? LP_VERIFY:LP_C_ID_RECODE_RESULT;            
        LP_VERIFY                   : r_st_next <= LP_VERIFY;          
    default                         : r_st_next <= LP_IDLE;          
    endcase
end 
    
 
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_board_card <= 'd0;
    else if(i_board_card_vld)
        ri_board_card <= i_board_card; 
    else  
        ri_board_card <= ri_board_card; 
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_board_card_vld <= 'd0; 
    else  
        ri_board_card_vld <= i_board_card_vld; 
end

 

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_Original_Data <= 'd0;
    else if(ri_board_card_vld && r_st_current == LP_IDLE)
        ri_Original_Data <= {240'd0,ri_board_card}; 
    else if(r_st_current == LP_C_ID_RECODE_RESULT && r_st_cnt == 0)
        ri_Original_Data <= r_board_encode_Data;
    else  
        ri_Original_Data <= 'd0; 
end

 
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_Original_Valid <= 'd0;
    else if(ri_board_card_vld && r_st_current == LP_IDLE)
        ri_Original_Valid <= 'd1; 
    else if(r_st_current == LP_C_ID_RECODE_RESULT && r_st_cnt == 0)
        ri_Original_Valid <= 'd1;
    else  
        ri_Original_Valid <= 'd0; 
end



always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_board_encode_Data <= 'd0;
    else if(w_Encrypt_Valid && r_st_current == LP_C_ID_RESULT)
        r_board_encode_Data <= w_Encrypt_Data; 
    else if(w_Encrypt_Valid && r_st_current == LP_C_ID_RECODE_RESULT)
        r_board_encode_Data <= w_Encrypt_Data; 
    else  
        r_board_encode_Data <= r_board_encode_Data; 
end




always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ro_verify_sm3_ok <= 'd0;
    else if(r_st_current == LP_VERIFY && r_board_encode_Data == ri_udp_code_data)
        ro_verify_sm3_ok <= 'd1;  
    else  
        ro_verify_sm3_ok <= ro_verify_sm3_ok; 
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_udp_code_data <= 'd0;
    else if(i_udp_code_vld)
        ri_udp_code_data <= i_udp_code_data;  
    else  
        ri_udp_code_data <= ri_udp_code_data; 
end



endmodule

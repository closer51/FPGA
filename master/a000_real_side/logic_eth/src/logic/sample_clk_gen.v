`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/17 01:13:01
// Design Name: 
// Module Name: sample_clk_gen
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


module sample_clk_gen(
    input           i_clk               ,//输入50MHZ时钟 
    input           i_rst               ,

    input   [3:0]   i_logic_frq_sel     ,
    input           i_logic_frq_sel_vld ,
    output          o_sam_clk_en    
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg         ro_sam_clk_en   ;   
reg [19:0]  r_count         ;    //分频计数器 
reg [19:0]  r_clk_div       ;    //时钟分频值 
/***************wire******************/

/***************assign****************/
assign o_sam_clk_en = ro_sam_clk_en;
/***************component*************/

/***************always****************/

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)begin
        r_clk_div <= 20'd9; 
    end else if(i_logic_frq_sel_vld)begin
             case(i_logic_frq_sel) 
                 4'h0: r_clk_div = 20'd499999; //  50hz
                 4'h1: r_clk_div = 20'd99999; //   250hz
                 4'h2: r_clk_div = 20'd49999;  //  500hz
                 4'h3: r_clk_div = 20'd9999;  //  2.5k 
                 4'h4: r_clk_div = 20'd4999;   // 5k
                 4'h5: r_clk_div = 20'd999;   //  25k
                 4'h6: r_clk_div = 20'd499;    // 50k 
                 4'h7: r_clk_div = 20'd249;    // 100k
                 4'h8: r_clk_div = 20'd99;    //  250k 
                 4'h9: r_clk_div = 20'd49;     // 500k 
                 4'ha: r_clk_div = 20'd24;     //1M  
                 4'hb: r_clk_div = 20'd9;      //2.5M
                 4'hc: r_clk_div = 20'd4;      //5MHZ  
                 4'hd: r_clk_div = 20'd3;      //6.25M
                 4'he: r_clk_div = 20'd1;      //12.5MHZ 
                 4'hf: r_clk_div = 20'd0;      //25MHz
                 default:r_clk_div = 20'd49;     //1MHZ
             endcase 
    end else 
        r_clk_div <= r_clk_div;
end


always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        r_count <= 'd0;
    else if(i_logic_frq_sel_vld)
        r_count <= 'd0;
    else if(r_count == r_clk_div)
        r_count <= 'd0;
    else 
        r_count <= r_count + 1;
end

always@(posedge i_clk, posedge i_rst)
begin
    if(i_rst)
        ro_sam_clk_en <= 'd1; 
    else if(r_count == r_clk_div)
        ro_sam_clk_en <= ~ro_sam_clk_en;
    else 
        ro_sam_clk_en <= ro_sam_clk_en;
end

endmodule

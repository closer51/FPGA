//`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////////
//// Company: 
//// Engineer: 
//// 
//// Create Date: 2025/06/08 14:35:29
// Design Name: 
// Module Name: uart_tx
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
 
////////////////////////////////////////////////////////////////////////////////


module uart_tx(
    input           i_clk           ,
    input           i_rst           ,
    
    input           i_tx_valid      ,
    input   [7:0]   i_tx_data       ,
    output          o_tx_ready      ,
    input   [31:0]  i_baud_cnt_num  ,
    output          o_tx
);
//50_000_000/9600 = 5208;
// localparam r_baud_cnt_num = 13'd5208;
/*����Ĵ���  */
reg     ro_tx       ;
reg     [7:0]   ri_tx_data;
/*ϵͳ����*/
reg     r_run;
reg     [12:0]  r_cnt;
reg [3:0]   r_tx_pos;
reg [31:0]  r_baud_cnt_num;


assign o_tx_ready = ~r_run;
assign o_tx = ro_tx;



always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_baud_cnt_num <= 'd0; 
    end else begin
        r_baud_cnt_num <= i_baud_cnt_num;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ri_tx_data <= 'd0;
    end else if(i_tx_valid&&!r_run)begin
        ri_tx_data <= i_tx_data;
    end else begin
        ri_tx_data <= ri_tx_data;
    end
end


always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_run <= 'd0;
    end else if(r_tx_pos==9 && r_cnt == (r_baud_cnt_num-2))begin 
        r_run <= 'd0; 
    end else if(i_tx_valid&&!r_run)begin
        r_run <= 'd1;
    end else begin
        r_run <= r_run;
    end
end


always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_cnt <= 'd0;
    end else if(r_cnt == r_baud_cnt_num-1)begin
        r_cnt <= 'd0;  
    end else if(r_run)begin
        r_cnt <= r_cnt + 1;
    end else begin
        r_cnt <= 'd0;
    end
end


always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_tx_pos <= 'd0;
    end else if(!r_run)begin
        r_tx_pos <= 'd0;
    end else if(r_cnt == r_baud_cnt_num-1)begin
        r_tx_pos <= r_tx_pos + 1;
    end else begin
        r_tx_pos <= r_tx_pos;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_tx <= 'd1;
    end else if(r_cnt == 3)begin
        case(r_tx_pos)
        0: ro_tx <= 'd0; 
        1: ro_tx <= ri_tx_data[0]; 
        2: ro_tx <= ri_tx_data[1]; 
        3: ro_tx <= ri_tx_data[2]; 
        4: ro_tx <= ri_tx_data[3]; 
        5: ro_tx <= ri_tx_data[4]; 
        6: ro_tx <= ri_tx_data[5]; 
        7: ro_tx <= ri_tx_data[6]; 
        8: ro_tx <= ri_tx_data[7]; 
        9: ro_tx <= 'd1; 
  default: ro_tx <= 'd1; 
        endcase
    end else begin
        ro_tx <= ro_tx; 
    
    end
end

 
endmodule
 
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/06/08 14:35:29
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
    input           i_clk       ,
    input           i_rst       ,
    
    input           rx          
    // output  [7:0]   o_rx_data   ,
    // output          o_rx_valid
);
//50_000_000/9600 = 5208;


// localparam LP_CNT = 13'd5208;
localparam LP_CNT = 50_000_000/115200;
reg [7:0]   ro_rx_data ;
(* mark_debug = "true" *)reg         ro_rx_valid;
(* mark_debug = "true" *)reg         r_rx_1d;
reg         r_rx_2d;
reg         r_rx_3d;
 
reg [12:0]      r_cnt;
(* mark_debug = "true" *)reg             r_run;
reg     [3:0]   r_rx_pos;

(* mark_debug = "true" *)wire    w_active;

// assign  o_rx_data  = ro_rx_data ;
// assign  o_rx_valid = ro_rx_valid;
assign  w_active = r_rx_2d && !r_rx_1d && !r_run;


wire        w_rst;
assign      w_rst   =  ~i_rst;

always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        r_rx_1d <= 'd1;
        r_rx_2d <= 'd1;
        r_rx_3d <= 'd1; 
    end else begin
        r_rx_1d <= rx;
        r_rx_2d <= r_rx_1d;
        r_rx_3d <= r_rx_2d; 
    end
end



always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        r_cnt <= 'd0;
    end else if(r_run && r_cnt == LP_CNT-1)begin 
        r_cnt <= 'd0;
    end else if(r_run)begin
        r_cnt <= r_cnt + 1;  
    end else begin
        r_cnt <= 'd0;
    end
end


always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        r_rx_pos <= 'd0;
    end else if(!r_run)begin 
        r_rx_pos <= 'd0; 
    end else if(r_cnt == (LP_CNT>>1)-1)begin
        r_rx_pos <= r_rx_pos + 1;
    end else begin
        r_rx_pos <= r_rx_pos; 
    end
end

always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        ro_rx_data <= 'd0;
    end else if((r_cnt ==(LP_CNT>>1)-1)&& r_rx_pos>=1 && r_rx_pos<=8)begin
        ro_rx_data <= {r_rx_3d,ro_rx_data[7:1]}; 
    end else begin
        ro_rx_data <= ro_rx_data; 
    end
end
always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        r_run <= 'd0;
    end else if((r_rx_pos == 9)&&(r_cnt == LP_CNT-1))begin 
        r_run <= 'd0;
    end else if(w_active)begin
        r_run <= 'd1;
    end else begin
        r_run <= r_run;
    end
end

always@(posedge i_clk, posedge w_rst)begin
    if(w_rst)begin
        ro_rx_valid <= 'd0;
    end else if((r_rx_pos == 9)&&(r_cnt == LP_CNT-1)&&r_run)begin
        ro_rx_valid <= 'd1;
    end else begin
        ro_rx_valid <= 'd0;
    end
end

//always@(posedge i_clk, posedge i_rst)begin
//    if(i_rst)begin
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end

//always@(posedge i_clk, posedge i_rst)begin
//    if(i_rst)begin
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end

//always@(posedge i_clk, posedge i_rst)begin
//    if(i_rst)begin
//    end else if()begin
//    end else if()begin
//    end else begin
//    end
//end
endmodule

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


module uart_stream_rx(
    input           i_clk       ,
    input           i_rst       ,
    input   [3:0]   i_logic_frq_sel     ,
    input           i_logic_frq_sel_vld ,
    input           rx          ,
    output  [7:0]   o_rx_data   ,
    output          o_rx_valid
);
//50_000_000/9600 = 5208;
reg [15:0] LP_CNT ;
/*入出寄存信号*/  
reg [7:0]   ro_rx_data ;
reg         ro_rx_valid;
reg         r_rx_1d;
reg         r_rx_2d;
reg         r_rx_3d;

reg [3:0]   ri_logic_frq_sel;
/*系统指示信号*/
reg [15:0]      r_cnt;
reg             r_run;
reg     [3:0]   r_rx_pos;

wire    w_active;

assign  o_rx_data  = ro_rx_data ;
assign  o_rx_valid = ro_rx_valid;
assign  w_active = r_rx_2d && !r_rx_1d && !r_run;



always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rx_1d <= 'd1;
        r_rx_2d <= 'd1;
        r_rx_3d <= 'd1; 
    end else begin
        r_rx_1d <= rx;
        r_rx_2d <= r_rx_1d;
        r_rx_3d <= r_rx_2d; 
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ri_logic_frq_sel <= 4'hf;
    end else if(i_logic_frq_sel_vld)begin
        ri_logic_frq_sel <= i_logic_frq_sel;
    end else begin 
        ri_logic_frq_sel <= ri_logic_frq_sel;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        LP_CNT <= 25_000_000/115200; 
    end else begin 
        case(ri_logic_frq_sel)
             4'h0: LP_CNT <=         50/115200 ; //  50hz
             4'h1: LP_CNT <=        250/115200 ; //   250hz
             4'h2: LP_CNT <=        500/115200 ;  //  500hz
             4'h3: LP_CNT <=      2_500/115200 ;  //  2.5k 
             4'h4: LP_CNT <=      5_000/115200 ;   // 5k
             4'h5: LP_CNT <=     25_000/115200 ;   //  25k
             4'h6: LP_CNT <=     50_000/115200 ;    // 50k 
             4'h7: LP_CNT <=    100_000/115200 ;    // 100k
             4'h8: LP_CNT <=    250_000/115200 ;    //  250k 
             4'h9: LP_CNT <=    500_000/115200 ;     // 500k 
             4'ha: LP_CNT <=  1_000_000/115200 ;     //1M  
             4'hb: LP_CNT <=  2_500_000/115200 ;      //2.5M
             4'hc: LP_CNT <=  5_000_000/115200 ;      //5MHZ  
             4'hd: LP_CNT <=  6_250_000/115200 ;      //6.25M
             4'he: LP_CNT <= 12_500_000/115200 ;      //12.5MHZ 
             4'hf: LP_CNT <= 25_000_000/115200 ;      //25MHz
          default: LP_CNT <= 10 ;      //25MHz
        endcase
        //   LP_CNT <= 10 ;
        
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_cnt <= 'd0;
    end else if(r_run && r_cnt == LP_CNT-1)begin 
        r_cnt <= 'd0;
    end else if(r_run)begin
        r_cnt <= r_cnt + 1;  
    end else begin
        r_cnt <= 'd0;
    end
end


always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rx_pos <= 'd0;
    end else if(!r_run)begin 
        r_rx_pos <= 'd0; 
    end else if(r_cnt == (LP_CNT>>1)-1)begin
        r_rx_pos <= r_rx_pos + 1;
    end else begin
        r_rx_pos <= r_rx_pos; 
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_rx_data <= 'd0;
    end else if((r_cnt ==(LP_CNT>>1)-1)&& r_rx_pos>=1 && r_rx_pos<=8)begin
        ro_rx_data <= {r_rx_3d,ro_rx_data[7:1]}; 
    end else begin
        ro_rx_data <= ro_rx_data; 
    end
end
always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_run <= 'd0;
    end else if((r_rx_pos == 9)&&(r_cnt == LP_CNT-1))begin 
        r_run <= 'd0;
    end else if(w_active)begin
        r_run <= 'd1;
    end else begin
        r_run <= r_run;
    end
end

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_rx_valid <= 'd0;
    end else if(ro_rx_valid)begin
        ro_rx_valid <= 'd0;    
    end else if((r_rx_pos == 9)&&(r_cnt == LP_CNT-1)&&r_run)begin
        ro_rx_valid <= 'd1;
    end else begin
        ro_rx_valid <= 'd0;
    end
end

 
endmodule

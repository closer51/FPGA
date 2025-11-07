`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/18 15:01:38
// Design Name: 
// Module Name: CRC_Data_Process
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


module CRC_Data_Process(
    input               i_clk           ,
    input               i_rst           ,

    input  [7 :0]       i_per_data      ,
    input               i_per_last      ,
    input               i_per_valid     ,
    input               i_per_crc_error ,
    input               i_per_crc_valid ,

    output [7 :0]       o_post_data     ,
    output              o_post_last     ,
    output              o_post_valid    
);

/***************function**************/

/***************parameter*************/

/***************port******************/             

/***************mechine***************/

/***************reg*******************/
reg  [7 :0]             ri_per_data         ;
reg                     ri_per_last         ;
reg                     ri_per_valid        ;
reg                     ri_per_crc_error    ;
reg                     ri_per_crc_valid    ;
reg  [7 :0]             ro_post_data        ;
reg                     ro_post_last        ;
reg                     ro_post_valid       ;
reg                     r_ram_en_A          ;
reg                     r_ram_we_A          ;
reg  [10:0]             r_ram_addr_A        ;
reg                     r_ram_en_B          ;
reg                     r_ram_we_B          ;
reg  [10:0]             r_ram_addr_B        ;
reg                     r_pq_in_flag        ;
reg                     r_pq_out_flag       ;
reg                     r_out_run           ;
reg                     r_out_run_1d        ;
reg                     r_out_cnt           ;
reg  [10:0]             r_out_end_A         ;
reg  [10:0]             r_out_end_B         ;
/***************wire******************/
wire [7 :0]             w_ram_dout_A        ;
wire [7 :0]             w_ram_dout_B        ;

/***************component*************/
RAM_8_1500 RAM_8_1500_A (
  .clka         (i_clk          ), 
  .ena          (r_ram_en_A     ), 
  .wea          (r_ram_we_A     ), 
  .addra        (r_ram_addr_A   ), 
  .dina         (ri_per_data    ), 
  .douta        (w_ram_dout_A   )  
);

RAM_8_1500 RAM_8_1500_B (
  .clka         (i_clk          ),
  .ena          (r_ram_en_B     ),
  .wea          (r_ram_we_B     ),
  .addra        (r_ram_addr_B   ),
  .dina         (ri_per_data    ),
  .douta        (w_ram_dout_B   ) 
);
/***************assign****************/
assign o_post_data  = ro_post_data ;
assign o_post_last  = ro_post_last ;
assign o_post_valid = ro_post_valid;
/***************always****************/
always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        ri_per_data      <= 'd0;
        ri_per_last      <= 'd0;
        ri_per_valid     <= 'd0;
        ri_per_crc_error <= 'd0;
        ri_per_crc_valid <= 'd0;
    end else begin
        ri_per_data      <= i_per_data     ;
        ri_per_last      <= i_per_last     ;
        ri_per_valid     <= i_per_valid    ;
        ri_per_crc_error <= i_per_crc_error;
        ri_per_crc_valid <= i_per_crc_valid;
    end 
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_pq_in_flag <= 'd0;
    else if(ri_per_last)
        r_pq_in_flag <= r_pq_in_flag + 1;
    else 
        r_pq_in_flag <= r_pq_in_flag;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_pq_out_flag <= 'd0;
    else if(ro_post_last)
        r_pq_out_flag <= r_pq_out_flag + 1;
    else 
        r_pq_out_flag <= r_pq_out_flag;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_out_run <= 'd0;
    else if(r_pq_out_flag == 0 && r_out_cnt == r_out_end_A)
        r_out_run <= 'd0;
    else if(r_pq_out_flag == 1 && r_out_cnt == r_out_end_B)
        r_out_run <= 'd0;
    else if(ri_per_crc_valid && !ri_per_crc_error)
        r_out_run <= 'd1;
    else 
        r_out_run <= r_out_run;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_out_run_1d <= 'd0;
    else 
        r_out_run_1d <= r_out_run;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        r_out_cnt <= 'd0;
    else if(r_pq_out_flag == 0 && r_out_cnt == r_out_end_A)
        r_out_cnt <= 'd0;
    else if(r_pq_out_flag == 1 && r_out_cnt == r_out_end_B)
        r_out_cnt <= 'd0;
    else if(ri_per_crc_valid && !ri_per_crc_error || r_out_cnt)
        r_out_cnt <= r_out_cnt + 1;
    else 
        r_out_cnt <= r_out_cnt;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_out_end_A <= 'd0;
    end else if(ri_per_valid && r_pq_in_flag == 0) begin
        r_out_end_A <= r_ram_addr_A;
    end else begin 
        r_out_end_A <= r_out_end_A;
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_out_end_B <= 'd0;
    end else if(ri_per_valid && r_pq_in_flag == 1) begin
        r_out_end_B <= r_ram_addr_B;
    end else begin 
        r_out_end_B <= r_out_end_B;
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_ram_en_A   <= 'd0;
        r_ram_we_A   <= 'd0;
        r_ram_addr_A <= 'd0;
    end else if(ri_per_valid && r_pq_in_flag == 0) begin
        r_ram_en_A   <= 'd1;
        r_ram_we_A   <= 'd1;
        r_ram_addr_A <= r_ram_addr_A + 1;
    end else if(ri_per_crc_valid && !ri_per_crc_error && r_pq_out_flag == 0) begin//CRC校验完成，开始读第一个字节
        r_ram_en_A   <= 'd1;
        r_ram_we_A   <= 'd0;
        r_ram_addr_A <= 'd0;
    end else if(r_out_run && r_pq_out_flag == 0) begin
        r_ram_en_A   <= 'd1;
        r_ram_we_A   <= 'd0;
        r_ram_addr_A <= r_ram_addr_A + 1;  
    end else begin
        r_ram_en_A   <= 'd0;
        r_ram_we_A   <= 'd0;
        r_ram_addr_A <= 'd0;
    end
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst) begin
        r_ram_en_B   <= 'd0;
        r_ram_we_B   <= 'd0;
        r_ram_addr_B <= 'd0;
    end else if(ri_per_valid && r_pq_in_flag == 1) begin
        r_ram_en_B   <= 'd1;
        r_ram_we_B   <= 'd1;
        r_ram_addr_B <= r_ram_addr_B + 1;
    end else if(ri_per_crc_valid && !ri_per_crc_error && r_pq_out_flag == 1) begin//CRC校验完成，开始读第一个字节
        r_ram_en_B   <= 'd1;
        r_ram_we_B   <= 'd0;
        r_ram_addr_B <= 'd0;
    end else if(r_out_run && r_pq_out_flag == 1) begin
        r_ram_en_B   <= 'd1;
        r_ram_we_B   <= 'd0;
        r_ram_addr_B <= r_ram_addr_B + 1;  
    end else begin
        r_ram_en_B   <= 'd0;
        r_ram_we_B   <= 'd0;
        r_ram_addr_B <= 'd0;
    end
end 

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_post_data <= 'd0;
    else if(r_pq_out_flag == 0)
        ro_post_data <= w_ram_dout_A;
    else 
        ro_post_data <= w_ram_dout_B;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_post_last <= 'd0;
    else if(!r_out_run && r_out_run_1d)
        ro_post_last <= 'd1;
    else 
        ro_post_last <= 'd0;
end

always@(posedge i_clk,posedge i_rst)
begin
    if(i_rst)
        ro_post_valid <= 'd0;
    else if(ro_post_last)
        ro_post_valid <= 'd0;
    else if(r_out_run)
        ro_post_valid <= 'd1;
    else 
        ro_post_valid <= ro_post_valid;
end

endmodule

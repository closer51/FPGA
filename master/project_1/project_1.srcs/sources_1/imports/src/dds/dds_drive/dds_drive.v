`timescale 1ns / 1ps
 //27位宽到1hz
module dds_drive(
    input                i_clk               ,
    input                i_rst               ,

    input                i_run               ,
    input                i_run_vld           ,
    input [26:0]         i_fword             ,
    input                i_fword_vld         ,
    input [7 :0]         i_pword             ,
    input                i_pword_vld         ,
    input [2:0]          i_mode              ,
    input                i_mode_vld          ,
    input  [9:0]         i_dds_duty          ,//占空�?  //1000-�?10bit
    input                i_dds_duty_vld      ,  
    output [13:0]        o_dds_data   
);
reg         ri_run;        
reg [13:0] ro_dds_data;
// ????????????????
reg [26:0] ri_fword;
// ??��??????????????
reg [7:0] ri_pword;
// ??��?????    
reg [26:0] r_freq_acc;
// ??    
reg [2:0] ri_mode;
// ????????????
reg [7:0] r_rom_addr; 

reg [9:0]  ri_dds_duty;
// ???????????
wire    [13:0]  w_dout_sin;
wire    [13:0]  w_dout_squ;
wire    [13:0]  w_dout_tri;
wire    [13:0]  w_dout_saw;
wire    [13:0]  w_dout_lfsr;

rom_sin_256 rom_sin_256_u0 (
  .clka (i_clk),    // input wire clka
  .ena  (1),      // input wire ena
  .addra(r_rom_addr),  // input wire [13 : 0] addra
  .douta(w_dout_sin)  // output wire [13 : 0] douta
);   
// rom_tri_14x256 rom_tri_14x256_u0 (
//   .clka (i_clk),    // input wire clka
//   .ena  (1),      // input wire ena
//   .addra(r_rom_addr),  // input wire [7 : 0] addra
//   .douta(w_dout_tri)  // output wire [13 : 0] douta
// );
dds_tri_gen dds_tri_gen_0(
    .i_clk      (i_clk) ,
    .i_rst      (i_rst) ,
    .i_addr     (r_rom_addr) ,
    .o_tri_data (w_dout_tri)      
);
dds_saw_gen dds_saw_gen_u0(
    . i_clk     (i_clk) ,
    . i_rst     (i_rst) ,
    . i_addr    (r_rom_addr) ,
    . o_saw_data(w_dout_saw)      
);
 
dds_squ_gen dds_squ_gen_u0(
    . i_clk     (i_clk) ,
    . i_rst     (i_rst) ,
    . i_addr    (r_rom_addr) ,
    . i_duty    (ri_dds_duty) ,
    . o_squ_data(w_dout_squ)      
);

LFSR_Gen LFSR_Gen_u0
(
    .   i_clk            (i_clk)       ,
    .   i_rst            (i_rst)       ,
    .   o_lfsr_value     (w_dout_lfsr)       
);

assign o_dds_data = ro_dds_data;



always @(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_dds_duty <= 'd500;
    else if(i_dds_duty_vld)
        ri_dds_duty <= i_dds_duty;
    else
        ri_dds_duty <= ri_dds_duty;
end

always @(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_run <= 'd1;
    else if(i_run_vld)
        ri_run <= i_run;
    else
        ri_run <= ri_run;
end

always @(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_fword <= 'd64*5000;//320000
    else if(i_fword_vld)
        ri_fword <= i_fword;
    else
        ri_fword <= ri_fword;
end
always @(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_pword <= 'd0    ; 
    else if(i_pword_vld)
        ri_pword <= i_pword;
    else 
        ri_pword <= ri_pword;
end
always @(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_mode <= 'd0    ; 
    else if(i_mode_vld)
        ri_mode <= i_mode;
    else 
        ri_mode <= ri_mode;
end

always @(posedge i_clk,posedge i_rst)begin
    if (i_rst)
        r_freq_acc <= 0;
    else if(i_fword_vld||i_pword_vld)
        r_freq_acc <= 0;
    else
        r_freq_acc <= ri_fword + r_freq_acc;//27位宽到1hz
end
always @(posedge i_clk,posedge i_rst)begin
    if (i_rst)
        r_rom_addr <= 'd0;
    else 
        r_rom_addr <= r_freq_acc[26:19] + ri_pword;
end
// ??��?????????? mode ????????????
always @(posedge i_clk,posedge i_rst)begin
    if (i_rst)begin
        ro_dds_data <= 'd0;
    end else if(ri_run)begin
            case(ri_mode)
                3'd0: ro_dds_data = w_dout_sin ;    // mode = 0 ?????????
                3'd1: ro_dds_data = w_dout_squ ;    // mode = 1 ????????
                3'd2: ro_dds_data = w_dout_tri ;    // mode = 2 ?????????
                3'd3: ro_dds_data = w_dout_saw ;    // mode = 3 ????????
                3'd4: ro_dds_data = w_dout_lfsr;//lfsr
                3'd5: ro_dds_data = w_dout_squ ;//pulse
                default: ro_dds_data = 14'b0;        // ???????????0
            endcase
    end else begin
        ro_dds_data = 14'b0; 
    end
end


endmodule
 

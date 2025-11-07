module sys_divi
(
   input wire    sys_clk,
   input wire    sys_rest,
   input [7:0]   clk_dividi,
   output reg    clk_out
);
   reg [8-1: 0] cnt;
always@(posedge sys_clk or negedge sys_rest)begin
        if(!sys_rest)
           cnt <= 1'b0;
        else if(cnt==(clk_dividi>>1)-1)
           cnt <= 1'b0;
        else 
           cnt <= cnt + 1'b1;
end

always@(posedge sys_clk or negedge sys_rest)begin
        if(!sys_rest)begin
            clk_out <= 1'b0;
         end
        else if(cnt==(clk_dividi>>1)-1)
            clk_out <= ~clk_out;
    end

endmodule
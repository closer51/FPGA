module fir_module_low
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
input   [7:0]               fir_select,                        //选择滤波系数
input   [7:0]               divi_data,
output [DATA_WIDTH-1:0]     data_out
);
integer     i;
localparam fir_core = 30;                              //FIR系数个数
reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end
reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin              //移位
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end
reg        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        coe[0] <= 0;
        coe[1] <= 0;
        coe[2] <= 0;
        coe[3] <= 0;
        coe[4] <= 1;
        coe[5] <= 0;
        coe[6] <= 0;
        coe[7] <= 2;
        coe[8] <= 0;
        coe[9] <= 5;
        coe[10] <= 0;
        coe[11] <= 3;
        coe[12] <= 4;
        coe[13] <= 0;
        coe[14] <= 78;
    end
    else begin
        case(divi_data)
            8'd64:                           //24k采样率
                case(fir_select)
                    8'd1:begin                  //10k
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 1;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 2;
                        coe[8] <= 0;
                        coe[9] <= 5;
                        coe[10] <= 0;
                        coe[11] <= 3;
                        coe[12] <= 4;
                        coe[13] <= 0;
                        coe[14] <= 78;
                    end
                    8'd2:begin                //5k
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 1;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 3;
                        coe[9] <= 4;
                        coe[10] <= 0;
                        coe[11] <= 0;
                        coe[12] <= 0;
                        coe[13] <= 24;
                        coe[14] <= 49;
                    end
                endcase
            8'd32:                           //48k采样率
                case(fir_select)
                    8'd0:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 1;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 2;
                        coe[8] <= 0;
                        coe[9] <= 5;
                        coe[10] <= 0;
                        coe[11] <= 3;
                        coe[12] <= 4;
                        coe[13] <= 0;
                        coe[14] <= 78;
                    end
                    8'd1:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 1;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 3;
                        coe[9] <= 4;
                        coe[10] <= 0;
                        coe[11] <= 0;
                        coe[12] <= 0;
                        coe[13] <= 24;
                        coe[14] <= 49;
                    end
                    8'd2:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 0;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 0;
                        coe[9] <= 0;
                        coe[10] <= 1;
                        coe[11] <= 7;
                        coe[12] <= 15;
                        coe[13] <= 22;
                        coe[14] <= 26;
                    end
                endcase
            8'd16:                           //96k采样率
                case(fir_select)
                    8'd0:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 1;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 3;
                        coe[9] <= 4;
                        coe[10] <= 0;
                        coe[11] <= 0;
                        coe[12] <= 0;
                        coe[13] <= 24;
                        coe[14] <= 49;
                    end
                    8'd1:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 0;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 0;
                        coe[9] <= 0;
                        coe[10] <= 1;
                        coe[11] <= 7;
                        coe[12] <= 15;
                        coe[13] <= 22;
                        coe[14] <= 26;
                    end
                    8'd2:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 0;
                        coe[5] <= 0;
                        coe[6] <= 1;
                        coe[7] <= 2;
                        coe[8] <= 3;
                        coe[9] <= 5;
                        coe[10] <= 7;
                        coe[11] <= 9;
                        coe[12] <= 11;
                        coe[13] <= 13;
                        coe[14] <= 14;
                    end
                endcase
            8'd8:                           //192k采样率
                case(fir_select)
                    8'd0:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 0;
                        coe[5] <= 0;
                        coe[6] <= 0;
                        coe[7] <= 0;
                        coe[8] <= 0;
                        coe[9] <= 0;
                        coe[10] <= 1;
                        coe[11] <= 7;
                        coe[12] <= 15;
                        coe[13] <= 22;
                        coe[14] <= 26;
                    end
                    8'd1:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 0;
                        coe[4] <= 0;
                        coe[5] <= 0;
                        coe[6] <= 1;
                        coe[7] <= 2;
                        coe[8] <= 3;
                        coe[9] <= 5;
                        coe[10] <= 7;
                        coe[11] <= 9;
                        coe[12] <= 11;
                        coe[13] <= 13;
                        coe[14] <= 14;
                    end
                    8'd2:begin
                        coe[0] <= 0;
                        coe[1] <= 0;
                        coe[2] <= 0;
                        coe[3] <= 1;
                        coe[4] <= 1;
                        coe[5] <= 2;
                        coe[6] <= 2;
                        coe[7] <= 3;
                        coe[8] <= 4;
                        coe[9] <= 6;
                        coe[10] <= 7;
                        coe[11] <= 8;
                        coe[12] <= 9;
                        coe[13] <= 10;
                        coe[14] <= 10;
                    end
                endcase
        endcase

    end

end

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0] + mout[1] + mout[2] + mout[3] + mout[4] + mout[5] + mout[6];
        sum2 <= mout[7] + mout[8] + mout[9] + mout[10] + mout[11] + mout[12] + mout[13] + mout[14];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+6:6];

endmodule

module fir_module_5k_low
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 30;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end

reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end

wire        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
    assign              coe[0] = 0;
    assign              coe[1] = 0;
    assign              coe[2] = 0;
    assign              coe[3] = 0;
    assign              coe[4] = 0;
    assign              coe[5] = 0;
    assign              coe[6] = 0;
    assign              coe[7] = 0;
    assign              coe[8] = 0;
    assign              coe[9] = 0;
    assign              coe[10] = 1;
    assign              coe[11] = 7;
    assign              coe[12] = 15;
    assign              coe[13] = 22;
    assign              coe[14] = 26;

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0] + mout[1] + mout[2] + mout[3] + mout[4] + mout[5] + mout[6];
        sum2 <= mout[7] + mout[8] + mout[9] + mout[10] + mout[11] + mout[12] + mout[13] + mout[14];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+6:6];

endmodule




module fir_module_200_high
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 20;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end


wire        [7:0]   coe[fir_core-1:0] ;                         //8位FIR系数
    assign              coe[0] = 0;
    assign              coe[1] = 0;
    assign              coe[2] = 0;
    assign              coe[3] = 0;
    assign              coe[4] = 0;
    assign              coe[5] = 0;
    assign              coe[6] = 0;
    assign              coe[7] = 0;
    assign              coe[8] = 0;
    assign              coe[9] = 0;
    assign              coe[10] = 81;
    assign              coe[11] = 26;
    assign              coe[12] = 14;
    assign              coe[13] = 8;
    assign              coe[14] = 5;
    assign              coe[15] = 3;
    assign              coe[16] = 1;
    assign              coe[17] = 1;
    assign              coe[18] = 0;
    assign              coe[19] = 0;
reg         [DATA_WIDTH+8-1:0]   mout[fir_core-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core-1;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core-1;i = i+1)
            mout[i] <= data_inreg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+2:0]   sum1;
reg     [DATA_WIDTH+8+2:0]   sum2;
reg     [DATA_WIDTH+8+3:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[1] + mout[2] + mout[3] + mout[0]+mout[4] + mout[5] + mout[6] + mout[7] + mout[8] + mout[9];
        sum2 <= mout[10] + mout[11] + mout[12] + mout[13]+mout[14] + mout[15] + mout[16] + mout[17] + mout[18] + mout[19];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+9:9];

endmodule


//均衡器FIR

module fir_module_equalier_low
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 50;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end

reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end

wire        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
    assign coe[0] = 8'd0;
    assign coe[1] = 8'd0;
    assign coe[2] = 8'd0;
    assign coe[3] = 8'd1;
    assign coe[4] = 8'd1;
    assign coe[5] = 8'd1;
    assign coe[6] = 8'd1;
    assign coe[7] = 8'd1;
    assign coe[8] = 8'd2;
    assign coe[9] = 8'd2;
    assign coe[10] = 8'd2;
    assign coe[11] = 8'd2;
    assign coe[12] = 8'd2;
    assign coe[13] = 8'd3;
    assign coe[14] = 8'd3;
    assign coe[15] = 8'd3;
    assign coe[16] = 8'd3;
    assign coe[17] = 8'd4;
    assign coe[18] = 8'd4;
    assign coe[19] = 8'd4;
    assign coe[20] = 8'd4;
    assign coe[21] = 8'd5;
    assign coe[22] = 8'd5;
    assign coe[23] = 8'd5;
    assign coe[24] = 8'd5;

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0]+mout[1]+mout[2]+mout[3]+mout[4]+mout[5]+mout[6]+mout[7]+mout[8]+mout[9]+mout[10]+mout[11]+mout[12]+mout[13];
        sum2 <= mout[14]+mout[15]+mout[16]+mout[17]+mout[18]+mout[19]+mout[20]+mout[21]+mout[22]+mout[23]+mout[24];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+11:11];

endmodule

module fir_module_equalier_mid
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 50;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end

reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end

wire        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
    assign coe[0] = 8'd0;
    assign coe[1] = 8'd0;
    assign coe[2] = 8'd0;
    assign coe[3] = 8'd0;
    assign coe[4] = 8'd0;
    assign coe[5] = 8'd0;
    assign coe[6] = 8'd0;
    assign coe[7] = 8'd0;
    assign coe[8] = 8'd0;
    assign coe[9] = 8'd0;
    assign coe[10] = 8'd0;
    assign coe[11] = 8'd0;
    assign coe[12] = 8'd0;
    assign coe[13] = 8'd0;
    assign coe[14] = 8'd0;
    assign coe[15] = 8'd0;
    assign coe[16] = 8'd0;
    assign coe[17] = 8'd0;
    assign coe[18] = 8'd0;
    assign coe[19] = 8'd1;
    assign coe[20] = 8'd4;
    assign coe[21] = 8'd7;
    assign coe[22] = 8'd9;
    assign coe[23] = 8'd12;
    assign coe[24] = 8'd13;

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0]+mout[1]+mout[2]+mout[3]+mout[4]+mout[5]+mout[6]+mout[7]+mout[8]+mout[9]+mout[10]+mout[11]+mout[12]+mout[13];
        sum2 <= mout[14]+mout[15]+mout[16]+mout[17]+mout[18]+mout[19]+mout[20]+mout[21]+mout[22]+mout[23]+mout[24];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+11:11];

endmodule

module fir_module_equalier_high
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 50;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end

reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end

wire        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
    assign coe[0] = 8'd0;
    assign coe[1] = 8'd0;
    assign coe[2] = 8'd0;
    assign coe[3] = 8'd0;
    assign coe[4] = 8'd0;
    assign coe[5] = 8'd0;
    assign coe[6] = 8'd0;
    assign coe[7] = 8'd0;
    assign coe[8] = 8'd1;
    assign coe[9] = 8'd1;
    assign coe[10] = 8'd0;
    assign coe[11] = 8'd0;
    assign coe[12] = 8'd0;
    assign coe[13] = 8'd0;
    assign coe[14] = 8'd0;
    assign coe[15] = 8'd4;
    assign coe[16] = 8'd7;
    assign coe[17] = 8'd7;
    assign coe[18] = 8'd2;
    assign coe[19] = 8'd0;
    assign coe[20] = 8'd0;
    assign coe[21] = 8'd0;
    assign coe[22] = 8'd0;
    assign coe[23] = 8'd6;
    assign coe[24] = 8'd14;

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0]+mout[1]+mout[2]+mout[3]+mout[4]+mout[5]+mout[6]+mout[7]+mout[8]+mout[9]+mout[10]+mout[11]+mout[12]+mout[13];
        sum2 <= mout[14]+mout[15]+mout[16]+mout[17]+mout[18]+mout[19]+mout[20]+mout[21]+mout[22]+mout[23]+mout[24];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+11:11];

endmodule

module fir_module_equalier_most
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 50;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end

reg        [DATA_WIDTH:0]    add_reg[fir_core/2-1:0];               //FIR系数对称，只用计算一半
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= 0;
    end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            add_reg[i] <= data_inreg[i] + data_inreg[fir_core - i - 1];
    end
end

wire        [7:0]   coe[fir_core/2-1:0] ;                         //8位FIR系数
    assign coe[0] = 8'd0;
    assign coe[1] = 8'd0;
    assign coe[2] = 8'd0;
    assign coe[3] = 8'd0;
    assign coe[4] = 8'd1;
    assign coe[5] = 8'd0;
    assign coe[6] = 8'd0;
    assign coe[7] = 8'd0;
    assign coe[8] = 8'd0;
    assign coe[9] = 8'd1;
    assign coe[10] = 8'd1;
    assign coe[11] = 8'd0;
    assign coe[12] = 8'd0;
    assign coe[13] = 8'd0;
    assign coe[14] = 8'd0;
    assign coe[15] = 8'd5;
    assign coe[16] = 8'd0;
    assign coe[17] = 8'd0;
    assign coe[18] = 8'd1;
    assign coe[19] = 8'd0;
    assign coe[20] = 8'd3;
    assign coe[21] = 8'd18;
    assign coe[22] = 8'd0;
    assign coe[23] = 8'd0;
    assign coe[24] = 8'd31;

reg         [DATA_WIDTH+8:0]   mout[fir_core/2-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core/2;i = i+1)
            mout[i] <= add_reg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+3:0]   sum1;
reg     [DATA_WIDTH+8+3:0]   sum2;
reg     [DATA_WIDTH+8+4:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[0]+mout[1]+mout[2]+mout[3]+mout[4]+mout[5]+mout[6]+mout[7]+mout[8]+mout[9]+mout[10]+mout[11]+mout[12]+mout[13];
        sum2 <= mout[14]+mout[15]+mout[16]+mout[17]+mout[18]+mout[19]+mout[20]+mout[21]+mout[22]+mout[23]+mout[24];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+11:11];

endmodule





module fir_module_reverb                      //模拟波士顿交响乐演播厅
#(
	parameter DATA_WIDTH        = 16
)
(
input                       sys_fir_clk,
input                       sys_rst,
input [DATA_WIDTH-1:0]      data_in,
input                       data_valid,
output [DATA_WIDTH-1:0]     data_out
);

integer     i;
localparam fir_core = 18;                              //FIR系数个数

reg  [DATA_WIDTH-1:0]  data_inreg[fir_core-1:0];                     //移位寄存器
always @(posedge sys_fir_clk or negedge sys_rst) begin
    if(!sys_rst)begin
        for(i=0;i<fir_core;i = i+1)
            data_inreg[i] <= 16'd0;
    end
    else if(data_valid == 1'd1) begin
        data_inreg[0] <= data_in;
        for(i=1;i<fir_core;i = i+1)
            data_inreg[i] <= data_inreg[i-1];
    end
end


wire        [7:0]   coe[fir_core-1:0] ;                         //8位FIR系数
    assign              coe[0] = 215;
    assign              coe[1] = 129;
    assign              coe[2] = 125;
    assign              coe[3] = 97;
    assign              coe[4] = 97;
    assign              coe[5] = 89;
    assign              coe[6] = 74;
    assign              coe[7] = 70;
    assign              coe[8] = 49;
    assign              coe[9] = 49;
    assign              coe[10] = 56;
    assign              coe[11] = 46;
    assign              coe[12] = 46;
    assign              coe[13] = 46;
    assign              coe[14] = 45;
    assign              coe[15] = 36;
    assign              coe[16] = 43;
    assign              coe[17] = 34;
reg         [DATA_WIDTH+8-1:0]   mout[fir_core-1:0]; 
always @(posedge sys_fir_clk or negedge sys_rst) begin        //乘法器
    if(!sys_rst)begin
        for(i=0;i<fir_core-1;i = i+1)
            mout[i] <= 0;
        end
    else if(data_valid == 1'd1) begin
        for(i=0;i<fir_core-1;i = i+1)
            mout[i] <= data_inreg[i] * coe[i];
    end
end

reg     [DATA_WIDTH+8+2:0]   sum1;
reg     [DATA_WIDTH+8+2:0]   sum2;
reg     [DATA_WIDTH+8+3:0]   data_outtemp;
always @(posedge sys_fir_clk or negedge sys_rst) begin        //累加
    if(!sys_rst)begin
        sum1 <= 0;
        sum2 <= 0;
        data_outtemp <= 0;
    end
    else if(data_valid == 1'd1) begin
        sum1 <= mout[1] + mout[2] + mout[3] + mout[0]+mout[4] + mout[5] + mout[6] + mout[7] + mout[8];
        sum2 <= mout[9] + mout[10] + mout[11] + mout[12] + mout[13]+mout[14] + mout[15] + mout[16] + mout[17];
        data_outtemp <= sum1 + sum2;
    end
end
assign data_out = data_outtemp[DATA_WIDTH-1+9:9];

endmodule


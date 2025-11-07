module iic_stream_rx(
    input               clk             ,
    input               rst_n           ,
    input               IIC_SCL         ,
    input               IIC_SDA         ,
    output reg          IIC_START       ,
    output reg          IIC_END         ,  
    output reg [7:0]    IIC_DATA_OUTPUT ,
    output reg          IIC_DATA_OUTPUT_VLD
);

wire IIC_SCL_posedge;
wire IIC_SCL_negedge;
wire IIC_SDA_posedge;
wire IIC_SDA_negedge;
wire IIC_END_posedge;
wire IIC_END_negedge;

reg IIC_SCL_0;
reg IIC_SDA_0;
reg IIC_END_0;
reg [7:0] IIC_DATA_P;
// reg [3:0] count_start;
// reg [3:0] count_end;
reg [3:0] count_data;
// reg [3:0] count_data_p;
// reg [3:0] count_output;

//reg IIC_START;
//reg IIC_END;

//边沿定义
assign IIC_SCL_posedge = IIC_SCL & (!IIC_SCL_0);
assign IIC_SDA_posedge = IIC_SDA & (!IIC_SDA_0);
assign IIC_SCL_negedge = (!IIC_SCL) & IIC_SCL_0;
assign IIC_SDA_negedge = (!IIC_SDA) & IIC_SDA_0;
assign IIC_END_posedge = IIC_END & (!IIC_END_0);
assign IIC_END_negedge = (!IIC_END) & IIC_END_0;

//对SCL上一时刻的数值缓存
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        IIC_SCL_0 <= 1'b1;
    else
        IIC_SCL_0 <= IIC_SCL;
end

//对SDA上一时刻的数值缓存
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        IIC_SDA_0 <= 1'b0;
    else
        IIC_SDA_0 <= IIC_SDA;
end

//对END上一时刻的数值缓存
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)
        IIC_END_0 <= 1'b0;
    else
        IIC_END_0 <= IIC_END;
end

//起始条件：SCL高电平期间，SDA从高电平切换到低电平（下降沿）
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        IIC_START <= 1'b0;
    else if (IIC_SDA_negedge & IIC_SCL)
        IIC_START <= 1'b1;
    else
        IIC_START <= 1'b0;
end

//终止条件：SCL高电平期间，SDA从低电平切换到高电平（上升沿）
always @ (posedge clk or negedge rst_n) begin
    if (!rst_n)
        IIC_END <= 1'b0;
    else if (IIC_SDA_posedge & IIC_SCL)
        IIC_END <= 1'b1;
    else
        IIC_END <= 1'b0;
end


//发送数据：SCL低电平期间，主机将数据放置在SDA上发送，在高电平时期读取数据位
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        IIC_DATA_P <= 8'd0;
        count_data <= 4'd0;
    end else if(IIC_START) begin
        IIC_DATA_P <= 8'd0;
        count_data <= 4'd0;        
    end else if(count_data == 4'd8 && IIC_SCL_posedge) begin
        IIC_DATA_P <= 8'd0;
        count_data <= 4'd0;
    end else if(IIC_SCL_posedge) begin
        IIC_DATA_P <= {IIC_DATA_P[6:0], IIC_SDA};
        count_data <= count_data + 1'd1;
    end else begin
        IIC_DATA_P <= IIC_DATA_P;
        count_data <= count_data;
    end
end

/*
//串行数据转换为并行数据输出
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n) begin
        IIC_DATA_P <= 8'd0;
        count_data_p <= 4'd0;
    end
    else if(IIC_END) begin
        IIC_DATA_P <= 8'd0;
        count_data_p <= 4'd0;        
    end
    else if(count_data_p == 4'd9) begin
        IIC_DATA_P <= 8'd0;
        count_data_p <= 4'd0;
    end
    else if(IIC_SCL_negedge) begin
        IIC_DATA_P <= {IIC_DATA_P[6:0], IIC_DATA};
        count_data_p <= count_data_p + 1'd1;
    end
    else
        IIC_DATA_P <= IIC_DATA_P;
end
*/


//在空闲状态输出最终数据
always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)  
        IIC_DATA_OUTPUT <= 8'd0; 
    else if(count_data == 4'd8 && IIC_SCL_posedge)  
        IIC_DATA_OUTPUT <= IIC_DATA_P;
    else
        IIC_DATA_OUTPUT <= IIC_DATA_OUTPUT;
end

always @ (posedge clk or negedge rst_n) begin
    if(!rst_n)  
        IIC_DATA_OUTPUT_VLD <= 'd0; 
    else if(IIC_DATA_OUTPUT_VLD)  
        IIC_DATA_OUTPUT_VLD <= 'd0; 
    else if(count_data == 4'd8 && IIC_SCL_posedge)  
        IIC_DATA_OUTPUT_VLD <= 'd1;
    else
        IIC_DATA_OUTPUT_VLD <= 'd0;
end

endmodule
`timescale 1ns / 1ns
module spi_stream_rx#
(
    parameter                                           BITS_LEN    = 8     ,    //设置接收bit长度
    parameter                                           CPOL        = 1'b0  ,     //时钟极性
    parameter                                           CPHA        = 1'b0      //时钟相位
)
(
    input                                               sys_clk             ,
    input                                               rst_n               ,
    input                                               spi_cs              ,           //spi片选信号
    input                                               spi_clk             ,           //spi_clk
    input                                               spi_mosi            ,       //spi_mosi
    output                                              rx_spi_data_valid   ,   //接收到的数据有效信号
    output  reg     [BITS_LEN - 1:0]                    rx_data             ,   //接收到的信号
    output  reg     [BITS_LEN - 1:0]                    spi_data                    //接收到的信号
);

    reg             [3:0]                               spi_cs_reg          ;       //打四拍
    reg             [3:0]                               spi_clk_reg         ;       //打四拍
    reg             [3:0]                               spi_mosi_reg        ;   //打四拍
    reg                                                 cap                 ;               //采集时刻信号
    reg                                                 spi_clk_pos ;       //上升沿
    reg                                                 spi_clk_neg ;       //下降沿
    wire                                                rx_en   ;           //接收使能信号
    wire                                                spi_cs_posedge;     //片选信号上升沿
    reg             [4:0]                               rx_bit_cnt  ;       //接收bit计数器
    reg                                                 spi_cs_0      ;       //片选信号缓存

reg                                         rx_data_valid   ;
reg                                         rx_data_valid_1d   ;


assign spi_cs_posedge = spi_cs & (!spi_cs_0);
assign rx_en  = (~spi_cs_reg[3]);

assign  rx_spi_data_valid = rx_data_valid & !rx_data_valid_1d;

//对片选信号上一时刻的值进行缓存
always @ (posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_cs_0 <= 1'b0;
    else
        spi_cs_0 <= spi_cs;
end

always @ (posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rx_data_valid_1d <= 1'b0;
    else
        rx_data_valid_1d <= rx_data_valid;
end


//将 cs，spi_clk,mosi信号都打三拍消除亚稳态
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_cs_reg <= 3'd0;
    else
        spi_cs_reg <= {spi_cs_reg[2:0],spi_cs};
end

always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_clk_reg <= 3'd0;
    else
        spi_clk_reg <= {spi_clk_reg[2:0],spi_clk};
end
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_mosi_reg <= 3'd0;
    else
        spi_mosi_reg <= {spi_mosi_reg[2:0],spi_mosi};
end

//spi_clk上升沿
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_clk_pos <= 1'b0;
    else if (spi_clk_reg[2] == 1'b0 && spi_clk_reg[1] == 1'b1)
        spi_clk_pos <= 1'b1;
    else
        spi_clk_pos <= 1'b0;
end

//spi_clk下降沿
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_clk_neg <= 1'b0;
    else if (spi_clk_reg[2] == 1'b1 && spi_clk_reg[1] == 1'b0)
        spi_clk_neg <= 1'b1;
    else
        spi_clk_neg <= 1'b0;
end

//根据CPOL CPHA来确定采集信号位置
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        cap <= 1'b0;
    else if(CPOL == 1'b0 && CPHA == 1'b0)
        cap <= spi_clk_pos;
    else if(CPOL == 1'b0 && CPHA == 1'b1)
        cap <= spi_clk_neg;
    else if(CPOL == 1'b1 && CPHA == 1'b0)
        cap <= spi_clk_neg;
    else if(CPOL == 1'b1 && CPHA == 1'b1)
        cap <= spi_clk_pos;
    else
        cap <= 1'b0;
end

//每次采集一次，接收bit计数器累加一次
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)begin
        rx_bit_cnt <= 'd0;  
        rx_data_valid <= 1'b0;
    end
    else if((rx_en == 1'b1) && (cap == 1'b1) && (rx_bit_cnt < BITS_LEN))begin
        rx_bit_cnt <= rx_bit_cnt +1'b1;
        rx_data_valid <= 1'b0;
    end
//    else if((rx_en == 1'b0) || (rx_bit_cnt == BITS_LEN))begin
    // else if((rx_en == 1'b0))begin
    else if( (rx_bit_cnt == BITS_LEN))begin
        rx_bit_cnt <= 'd0;
        rx_data_valid <= 1'b1;
    end
    else begin
        rx_bit_cnt <= rx_bit_cnt;
        rx_data_valid <= 1'b0;
    end
end

//每次采集时刻到来，进行串并转换
always @(posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        rx_data <= 'd0;
    else if(rx_en == 1'b0)
        rx_data <= 'd0;        
    else if(rx_en == 1'b1 && cap == 1'b1)
        rx_data <= {rx_data[BITS_LEN -2 : 0],spi_mosi_reg[3]};
    else
        rx_data <= rx_data;
end

//待传输完毕后，将数据输出
always @ (posedge sys_clk or negedge rst_n) begin
    if(rst_n == 1'b0)
        spi_data <= 'd0;
    else if(rx_bit_cnt == BITS_LEN)
        spi_data <= rx_data;
    else  
        spi_data <= spi_data; 

end

endmodule
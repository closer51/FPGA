module uart_adaptive_baud_rate(
    input               i_clk           ,  // 系统时钟
    input               i_rst           ,  // 异步复位（高有效）
    input               i_uart_rx       ,  // UART接收信号

    output      [9:0]   o_uart_data     ,  // 输出接收数据
    output              o_uart_data_vld ,    // 输出数据有效标志
    output      [31:0]  o_baud_cnt_num  ,
    
    input               i_updata_min_b_vld  ,
    input   [15:0]      i_updata_min_b_data ,
    input               i_updata_max_b_vld  ,
    input   [15:0]      i_updata_max_b_data ,
    input               i_updata_8b10_or_nor_vld    ,
    input               i_updata_8b10_or_nor_data   //0 正常模式    1 8b10b编码模式  
);






/*----参数配置----------------*/
localparam LP_STOP_BITS           = 2'd1;         // 停止位数量（1位）
localparam LP_MIN_EDGE_FOR_VERIFY = 11;        // 验证波特率所需最小边沿数
localparam LP_RAM_DEPTH           = 16;       // 边沿缓存深度（可存储16个边沿）
localparam LP_CLK_FREQ            = 50_000_000;// 系统时钟频率（50MHz）
localparam LP_MIN_BAUD            = 9600;      // 最低支持波特率
localparam LP_MAX_BAUD            = 115200;    // 最高支持波特率
// localparam LP_MAX_T               = LP_CLK_FREQ / LP_MIN_BAUD;  // 最低波特率周期（时钟数）
// localparam LP_MIN_T               = LP_CLK_FREQ / LP_MAX_BAUD;  // 最高波特率周期（时钟数）
 
/*---------状态机定义-------------------*/
localparam LP_IDLE                  = 4'd0;       
localparam LP_CACHE_EDGE            = 4'd1;       
localparam LP_CALCULATE_P           = 4'd2;       
localparam LP_RESTRAIN_VERIFY       = 4'd3;     
localparam LP_RECALL_CALCULATE      = 4'd4;   

localparam LP_VERIFY_NEXT_FRAME     = 4'd5;  
localparam LP_UPDATA                = 4'd6;  

localparam LP_DATA_ALIGN            = 4'd7;  
localparam LP_NORMAL_RX             = 4'd8;
/*---start--updata--------*/
reg             ri_updata_min_b_vld ;
reg             ri_updata_max_b_vld ;
reg [15:0]      ri_updata_min_b_data;
reg [15:0]      ri_updata_max_b_data;
reg   [31:0]    LP_MAX_T;
reg   [31:0]    LP_MIN_T;
reg   [3:0]     LP_DATA_BITS        ;         // 数据位宽（8位）


reg             ri_updata_8b10_or_nor_data;   
/*---end--updata--------*/

reg     [9:0]   ro_uart_data        ;
reg             ro_uart_data_vld    ;  

reg     [3:0]   r_state_current ;
reg     [3:0]   r_state_next    ;
reg     [31:0]  r_st_cnt;


reg [1 :0]      r_rx_sync;  
reg [31:0]      r_clk_cnt; 
reg             r_run;

reg [7:0]       r_ram_wr_addr;             // RAM写地址
reg [7:0]       r_edge_cnt;    
reg [32:0]      r_ram_edge[0:LP_RAM_DEPTH-1]; // 边沿缓存RAM：{时间戳[32:1], 电平[0]}


reg [31:0]      r_min_interval;           
reg [31:0]      r_interval    ;     
reg [7:0]       r_interval_idx   ;
reg [31:0]      r_min_interval_lock;  

reg [31:0]      r_stop_time;
reg     [7:0]   r_stop_idx;
reg             r_stop_found;
reg             r_stop_level;
reg             r_baud_verify_ok; 


reg     [7:0]  r_start_search_idx;

reg     [7:0]   r_updata_idx;
reg     [31:0]  r_updata_frame_start_time;

reg [31:0]      r_time_board;//边界保护

reg             r_0_data_reback;
reg  [7:0]      r_0_inx;

reg             r_1_data_reback;
reg  [7:0]      r_1_inx;
reg             r_2_data_reback;
reg  [7:0]      r_2_inx;
reg             r_3_data_reback;
reg  [7:0]      r_3_inx;
reg             r_4_data_reback;
reg  [7:0]      r_4_inx;
reg             r_5_data_reback;
reg  [7:0]      r_5_inx;
reg             r_6_data_reback;
reg  [7:0]      r_6_inx;
reg             r_7_data_reback;
reg  [7:0]      r_7_inx;
reg             r_8_data_reback;
reg  [7:0]      r_8_inx;
reg             r_9_data_reback;
reg  [7:0]      r_9_inx;
reg             r_10_data_reback; //8b10b      
reg  [7:0]      r_10_inx;         //8b10b  
reg             r_11_data_reback; //8b10b  
reg  [7:0]      r_11_inx;         //8b10b  

reg [31:0]      r_0_sample_time;
reg [31:0]      r_1_sample_time;
reg [31:0]      r_2_sample_time;
reg [31:0]      r_3_sample_time;
reg [31:0]      r_4_sample_time;
reg [31:0]      r_5_sample_time;
reg [31:0]      r_6_sample_time;
reg [31:0]      r_7_sample_time;
reg [31:0]      r_8_sample_time; 
reg [31:0]      r_9_sample_time;
reg [31:0]      r_10_sample_time;
reg [31:0]      r_11_sample_time;

reg             r_0_mask    ;
reg             r_1_mask    ;
reg             r_2_mask    ;
reg             r_3_mask    ;
reg             r_4_mask    ;
reg             r_5_mask    ;
reg             r_6_mask    ;
reg             r_7_mask    ;
reg             r_8_mask    ;
reg             r_9_mask    ; 
reg             r_10_mask    ; 
reg             r_11_mask    ; 

reg             r_recall_compelete;
reg             r_recall_compelete_1d;
reg             r_recall_compelete_2d;
reg [11:0]       r_data_mask;

reg             r_verify_next_frame_exist_flag;

reg [31:0]      r_next_frame_start_time;

reg     [4:0]   r_frame_pos; 
reg             r_normol_rx_run;
 
reg  [15:0]     r_baud_cnt; 

// reg     [7:0]   r_normol_rx_data;
// reg             r_normol_rx_vld ;

reg     [31:0]  r_rx_high_cnt;
reg             r_rx_frame_end;



wire            w_rx_fall      ;
wire            w_rx_rise      ;
wire            w_double_edge  ;


assign  o_uart_data     = ro_uart_data     ;
assign  o_uart_data_vld = ro_uart_data_vld ;
assign  o_baud_cnt_num = r_min_interval_lock;

assign w_rx_fall = (r_rx_sync[1] & ~r_rx_sync[0]);  // 下降沿检测（起始位特征）
assign w_rx_rise = (~r_rx_sync[1] & r_rx_sync[0]);  // 上升沿检测（停止位/数据位跳变）
assign w_double_edge = w_rx_fall || w_rx_rise;      // 有效跳变沿（用于触发缓存）

/*start--------updata----------*/
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_min_b_data <= 'd9600; 
    else if(i_updata_min_b_vld)
        ri_updata_min_b_data <=  i_updata_min_b_data;
    else 
        ri_updata_min_b_data <= ri_updata_min_b_data;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_max_b_data <= 'd115200; 
    else if(i_updata_max_b_vld)
        ri_updata_max_b_data <= i_updata_max_b_data;
    else 
        ri_updata_max_b_data <= ri_updata_max_b_data;
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_min_b_vld <= 'd0;  
    else 
        ri_updata_min_b_vld <= i_updata_min_b_vld;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_max_b_vld <= 'd0;  
    else 
        ri_updata_max_b_vld <= i_updata_max_b_vld;
end



always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        LP_MAX_T <= 'd5208; 
    else if(ri_updata_max_b_vld)
        LP_MAX_T <=  50_000_0/ri_updata_min_b_data;
    else 
        LP_MAX_T <= LP_MAX_T;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        LP_MIN_T <= 'd434; 
    else if(ri_updata_max_b_vld)
        LP_MIN_T <=  50_000_0/ri_updata_max_b_data;
    else 
        LP_MIN_T <= LP_MIN_T;
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst) begin
        LP_DATA_BITS <= 'd8;  
    end else begin
        case(ri_updata_8b10_or_nor_data)
        0:LP_DATA_BITS <= 'd8;
        1:LP_DATA_BITS <= 'd10;
        default:LP_DATA_BITS <= 'd8;  
        endcase 
    end
         
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        ri_updata_8b10_or_nor_data <= 'd0; 
    else if(i_updata_8b10_or_nor_vld)
        ri_updata_8b10_or_nor_data <=  i_updata_8b10_or_nor_data;
    else 
        ri_updata_8b10_or_nor_data <= ri_updata_8b10_or_nor_data;
end


/*end--------updata----------*/

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_state_current <= 'd0; 
    else 
        r_state_current <= r_state_next;
end

always@(*)begin
    case(r_state_current)
        LP_IDLE             :r_state_next <= w_double_edge?LP_CACHE_EDGE:LP_IDLE;
        LP_CACHE_EDGE       :r_state_next <= r_edge_cnt >= LP_MIN_EDGE_FOR_VERIFY? LP_CALCULATE_P:LP_CACHE_EDGE;
        LP_CALCULATE_P      :r_state_next <= r_st_cnt == 11? LP_RESTRAIN_VERIFY : LP_CALCULATE_P; 
        LP_RESTRAIN_VERIFY  :r_state_next <= r_baud_verify_ok?LP_RECALL_CALCULATE:LP_RESTRAIN_VERIFY; 
        LP_RECALL_CALCULATE :r_state_next <= r_recall_compelete_2d?LP_VERIFY_NEXT_FRAME:LP_RECALL_CALCULATE; 
        LP_VERIFY_NEXT_FRAME:r_state_next <= r_st_cnt==2 ? r_verify_next_frame_exist_flag ?LP_UPDATA:LP_DATA_ALIGN
                                                        :LP_VERIFY_NEXT_FRAME ;
        LP_UPDATA           :r_state_next <= r_st_cnt==(LP_DATA_BITS+LP_STOP_BITS+LP_STOP_BITS)?LP_RECALL_CALCULATE:LP_UPDATA;
        
        LP_DATA_ALIGN       :r_state_next <= r_st_cnt == 2? LP_NORMAL_RX:LP_DATA_ALIGN;
        LP_NORMAL_RX        :r_state_next <= r_rx_frame_end? LP_IDLE :LP_NORMAL_RX;
    default:                 r_state_next <= LP_IDLE;  
    endcase       
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_st_cnt <= 'd0;
    else if(r_state_next != r_state_current)
        r_st_cnt <= 'd0;
    else 
        r_st_cnt <= r_st_cnt +1;

end

// 1. RX信号同步（防亚稳态）
always @(posedge i_clk or posedge i_rst) begin
    if(i_rst)
        r_rx_sync <= 2'b11;  // 初始为空闲高电平
    else 
        r_rx_sync <= {r_rx_sync[0], i_uart_rx};  // 两级同步
end

// 2. 系统时间戳计数
always @(posedge i_clk or posedge i_rst) begin
    if(i_rst)
        r_clk_cnt <= 32'd0;
    else if(r_state_current == LP_IDLE && w_double_edge)
        r_clk_cnt <= r_clk_cnt + 1'b1;  // 运行时递增
    else if(!r_run)//可以优化   r_state_next  == LP_IDLE && r_state_current != LP_IDLE
        r_clk_cnt <= 32'd0;  // 未运行时复位计数
    else 
        r_clk_cnt <= r_clk_cnt + 1'b1;  // 运行时递增
end



// 3. 运行标志控制
always @(posedge i_clk or posedge i_rst) begin
    if(i_rst)
        r_run <= 1'b0;
    else if (r_state_next  == LP_IDLE && r_state_current != LP_IDLE)
        r_run <=  'd0;
    else if (r_state_current == LP_IDLE && w_double_edge)
        r_run <=  'd1;
    else
        r_run <= r_run;
end

// 4. RAM写地址控制
always @(posedge i_clk or posedge i_rst) begin
    if(i_rst)
        r_ram_wr_addr <= 8'd0;
    else if (w_double_edge && (r_state_current != LP_NORMAL_RX) )
        r_ram_wr_addr <= r_ram_wr_addr + 1'b1;  // 检测到边沿且未溢出时写地址递增
    else if (r_state_current == LP_IDLE)
        r_ram_wr_addr <= 8'd0;  
end

// 5. 实时边沿计数（有效索引：0 ~ r_edge_cnt-1）
always @(posedge i_clk or posedge i_rst) begin
    if(i_rst)
        r_edge_cnt <= 8'd0;
    else if (w_double_edge && (r_state_current != LP_NORMAL_RX) )
        r_edge_cnt <= r_edge_cnt + 1'b1;  // 每捕获一个边沿计数+1
    else if (r_state_current == LP_IDLE)//  优化  拉高优先级同时+ r_state_next  == LP_IDLE && r_state_current != LP_IDLE
        r_edge_cnt <= 8'd0;  // 空闲状态复位计数
    else 
        r_edge_cnt <= r_edge_cnt;
end

// 6. 跳变沿缓存RAM（仅写入逻辑）
integer idx;
always @(posedge i_clk or posedge i_rst) begin  // 敏感列表添加异步复位
    if (i_rst) begin  // 复位时：遍历所有RAM地址，全部清零
          
        for (idx = 0; idx < LP_RAM_DEPTH; idx = idx + 1) begin
            r_ram_edge[idx] <= 33'd0;  // 33位全零（时间戳32位+电平1位）
        end
    end else if (w_double_edge && (r_state_current != LP_NORMAL_RX)) begin  // 非复位时：保持原写入逻辑
        r_ram_edge[r_ram_wr_addr] <= {r_clk_cnt, r_rx_sync[0]};  // 存储{时间戳, 电平}
    end
end





// 7. 临时间隔值计算（相邻边沿时间差）
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_interval <= 32'd0;
    else if (r_state_current == LP_CALCULATE_P )
        r_interval <= r_ram_edge[r_interval_idx + 1][32:1] - r_ram_edge[r_interval_idx][32:1];  // 计算间隔
    else
        r_interval <= 32'd0;  // 非处理状态复位
end

// 8. 索引控制
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_interval_idx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_interval_idx <= 'd0;
    else if(r_state_current == LP_CALCULATE_P && r_interval_idx <= LP_MIN_EDGE_FOR_VERIFY-3)
        r_interval_idx <= r_interval_idx + 1;
    else 
        r_interval_idx <= r_interval_idx;

end


// 9. 最小跳变间隔计算（优化：确保所有有效间隔都参与计算）
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_min_interval <= 32'hffff_ffff;
    else if(r_state_next == LP_CALCULATE_P && r_state_current != LP_CALCULATE_P)
        r_min_interval <= 32'hffff_ffff;
    else if (r_state_current == LP_CALCULATE_P && r_interval > (LP_MIN_T >> 1) && r_interval < r_min_interval) // 过滤噪声并更新最小间隔  
        r_min_interval <= r_interval; 
    else
        r_min_interval <= r_min_interval;  // 非验证状态复位
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_min_interval_lock  <= 'd0;
    else if(r_state_current == LP_CALCULATE_P && r_st_cnt == 9)
        r_min_interval_lock <=  r_min_interval;
    else 
        r_min_interval_lock <= r_min_interval_lock;
end




always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_stop_time <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_stop_time <= 'd0;
    else if(r_state_next == LP_RESTRAIN_VERIFY && r_state_current != LP_RESTRAIN_VERIFY )
        r_stop_time <= r_ram_edge[0][32:1] + (r_min_interval_lock >> 1) + (LP_DATA_BITS + LP_STOP_BITS) * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_stop_time <= r_stop_time;
end



// 20. 停止位查找索引（遍历边沿找停止位）
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_stop_idx <= 8'd0;
    else if(r_state_current != LP_RESTRAIN_VERIFY)
        r_stop_idx <= 8'd0;
    else if (r_state_current == LP_RESTRAIN_VERIFY&& (r_ram_edge[r_stop_idx][32:1] < r_stop_time) ) begin 
        r_stop_idx <= r_stop_idx + 1'b1;  // 多计数了
    end else
        r_stop_idx <= r_stop_idx;  // 非验证状态复位
end


always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_stop_found <= 1'b0;
    else if(r_state_current != LP_RESTRAIN_VERIFY)
        r_stop_found <= 1'b0; 
    else if (r_state_current == LP_RESTRAIN_VERIFY && (r_ram_edge[r_stop_idx][32:1] > r_stop_time))
        r_stop_found <= 'd1;  // 边沿时间戳 >= 理论时刻
    else
        r_stop_found <= r_stop_found;  // 非查找状态复位
end


// 22. 停止位电平（应为高电平）
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_stop_level <= 1'b0;
    else if (r_state_current == LP_RESTRAIN_VERIFY&&(r_ram_edge[r_stop_idx][32:1] > r_stop_time) )
        r_stop_level <= r_ram_edge[r_stop_idx - 1][0];  
    else  
        r_stop_level <= 1'b0;  // 非验证状态复位
end

  

always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_baud_verify_ok <= 1'b0;
    else if(r_baud_verify_ok)
        r_baud_verify_ok <= 'd0;
    else if (r_stop_level&&r_state_current == LP_RESTRAIN_VERIFY )
        r_baud_verify_ok <= 'd1;  // -1 多计数一个  -1 取前一电平
    else  
        r_baud_verify_ok <= 1'b0;  // 非验证状态复位
end
 
always @(posedge i_clk or posedge i_rst) begin
    if (i_rst)
        r_start_search_idx <= 1'b0;
    else if (r_state_current == LP_IDLE)
        r_start_search_idx <= 'd0;  
    else if (r_state_current == LP_UPDATA && r_st_cnt == (LP_DATA_BITS+LP_STOP_BITS+LP_STOP_BITS))
        r_start_search_idx <=  r_updata_idx-1;   
    else  
        r_start_search_idx <= r_start_search_idx;  // 非验证状态复位
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_updata_idx <= 'd0;
    else if(r_state_current == LP_IDLE )
        r_updata_idx <= 'd0; 
    else if(r_state_next == LP_UPDATA && r_state_current != LP_UPDATA)
        r_updata_idx <= r_9_inx-1 ;
    else if(r_state_current == LP_UPDATA && r_ram_edge[r_updata_idx][32:1] < r_updata_frame_start_time)
        r_updata_idx <= r_updata_idx + 1; //多一个
    else 
        r_updata_idx <= r_updata_idx;
end


always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_updata_frame_start_time <= 'd0;
    else if(r_state_current == LP_UPDATA  )
        r_updata_frame_start_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + (1'd1+LP_DATA_BITS+LP_STOP_BITS) * r_min_interval_lock;  // 数据位+起始位后
        // r_updata_frame_start_time <= r_ram_edge[r_8_inx][32:1] + (r_min_interval_lock >> 1) +  r_min_interval_lock;  // 不能用这个位，因为r_8_inx 可能是连续电平，不是准确边沿
    else  
        r_updata_frame_start_time <= 'd0;
end




always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_time_board <= 'd0;
    // else if(r_state_next == LP_RECALL_CALCULATE || r_state_next == LP_VERIFY_NEXT_FRAME )
        // r_time_board <= r_ram_edge[r_edge_cnt-1][32:1];  // 最大边沿以实时收入的边沿为准
    else 
        r_time_board <= r_ram_edge[r_edge_cnt-1][32:1];  // 最大边沿以实时收入的边沿为准
end



 

 
//正确思路：  ( r_1_sample_time > r_ram_edge[r_1_inx][32:1] ) &&  ( r_1_sample_time < r_ram_edge[r_1_inx+1][32:1] )  level 取r_1_inx
//对于边界最后一个跳变沿特殊处理，因为肯定跳变后只有1bit   ： r_1_sample_time - r_ram_edge[r_1_inx][32:1] < r_min_interval_lock

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_0_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_0_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 0 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_0_sample_time <= r_0_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_0_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_0_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_0_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_0_sample_time > r_time_board) && (r_0_sample_time-r_time_board < r_min_interval_lock))
        r_0_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_0_sample_time > r_time_board) && (r_0_sample_time-r_time_board > r_min_interval_lock))
        r_0_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_0_inx][32:1] >=  r_0_sample_time)
        r_0_inx <= r_0_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_0_inx][32:1] < r_0_sample_time)
        r_0_inx <= r_0_inx + 1;//停止是超了的
    else 
        r_0_inx <= r_0_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_0_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_0_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_0_sample_time > r_time_board) && (r_0_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_0_data_reback <= r_ram_edge[r_0_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_0_inx][32:1] >= r_0_sample_time ) )
        r_0_data_reback <= r_ram_edge[r_0_inx-1][0] ;//回溯
    else 
        r_0_data_reback <= r_0_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_0_mask <= 'd1;  
    else if( (r_0_sample_time > r_time_board) && ( (r_0_sample_time-r_time_board) > r_min_interval_lock))
        r_0_mask <= 'd0;   
    else 
        r_0_mask <= 'd1;
end
//xx  end
 

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_1_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_1_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 1 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_1_sample_time <= r_1_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_1_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_1_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_1_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_1_sample_time > r_time_board) && (r_1_sample_time-r_time_board < r_min_interval_lock))
        r_1_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1   边界匹配保护
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_1_sample_time > r_time_board) && (r_1_sample_time-r_time_board > r_min_interval_lock))
        r_1_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_1_inx][32:1] >=  r_1_sample_time)
        r_1_inx <= r_1_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_1_inx][32:1] < r_1_sample_time)
        r_1_inx <= r_1_inx + 1;//停止是超了的
    else 
        r_1_inx <= r_1_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_1_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_1_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_1_sample_time > r_time_board) && (r_1_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_1_data_reback <= r_ram_edge[r_1_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_1_inx][32:1] >= r_1_sample_time ) )
        r_1_data_reback <= r_ram_edge[r_1_inx-1][0] ;//回溯
    else 
        r_1_data_reback <= r_1_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_1_mask <= 'd1; 
    else if( (r_1_sample_time > r_time_board) && ( (r_1_sample_time-r_time_board) > r_min_interval_lock))
        r_1_mask <= 'd0;   
    else 
        r_1_mask <= 'd1;
end
//xx  end
 

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_2_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_2_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 2 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_2_sample_time <= r_2_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_2_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_2_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_2_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_2_sample_time > r_time_board) && (r_2_sample_time-r_time_board < r_min_interval_lock))
        r_2_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_2_sample_time > r_time_board) && (r_2_sample_time-r_time_board > r_min_interval_lock))
        r_2_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_2_inx][32:1] >=  r_2_sample_time)
        r_2_inx <= r_2_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_2_inx][32:1] < r_2_sample_time)
        r_2_inx <= r_2_inx + 1;//停止是超了的
    else 
        r_2_inx <= r_2_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_2_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_2_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_2_sample_time > r_time_board) && (r_2_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_2_data_reback <= r_ram_edge[r_2_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_2_inx][32:1] >= r_2_sample_time ) )
        r_2_data_reback <= r_ram_edge[r_2_inx-1][0] ;//回溯
    else 
        r_2_data_reback <= r_2_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_2_mask <= 'd1; 
    else if( (r_2_sample_time > r_time_board) && ( (r_2_sample_time-r_time_board) > r_min_interval_lock))
        r_2_mask <= 'd0;   
    else 
        r_2_mask <= 'd1;
end
//xx  end
 

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_3_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_3_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 3 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_3_sample_time <= r_3_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_3_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_3_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_3_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_3_sample_time > r_time_board) && (r_3_sample_time-r_time_board < r_min_interval_lock))
        r_3_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_3_sample_time > r_time_board) && (r_3_sample_time-r_time_board > r_min_interval_lock))
        r_3_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_3_inx][32:1] >=  r_3_sample_time)
        r_3_inx <= r_3_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_3_inx][32:1] < r_3_sample_time)
        r_3_inx <= r_3_inx + 1;//停止是超了的
    else 
        r_3_inx <= r_3_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_3_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_3_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_3_sample_time > r_time_board) && (r_3_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_3_data_reback <= r_ram_edge[r_3_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_3_inx][32:1] >= r_3_sample_time ) )
        r_3_data_reback <= r_ram_edge[r_3_inx-1][0] ;//回溯
    else 
        r_3_data_reback <= r_3_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_3_mask <= 'd1; 
    else if( (r_3_sample_time > r_time_board) && ( (r_3_sample_time-r_time_board) > r_min_interval_lock))
        r_3_mask <= 'd0;   
    else 
        r_3_mask <= 'd1;
end
//xx  end
 

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_4_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_4_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 4 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_4_sample_time <= r_4_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_4_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_4_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_4_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_4_sample_time > r_time_board) && (r_4_sample_time-r_time_board < r_min_interval_lock))
        r_4_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_4_sample_time > r_time_board) && (r_4_sample_time-r_time_board > r_min_interval_lock))
        r_4_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_4_inx][32:1] >=  r_4_sample_time)
        r_4_inx <= r_4_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_4_inx][32:1] < r_4_sample_time)
        r_4_inx <= r_4_inx + 1;//停止是超了的
    else 
        r_4_inx <= r_4_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_4_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_4_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_4_sample_time > r_time_board) && (r_4_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_4_data_reback <= r_ram_edge[r_4_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_4_inx][32:1] >= r_4_sample_time ) )
        r_4_data_reback <= r_ram_edge[r_4_inx-1][0] ;//回溯
    else 
        r_4_data_reback <= r_4_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_4_mask <= 'd1; 
    else if( (r_4_sample_time > r_time_board) && ( (r_4_sample_time-r_time_board) > r_min_interval_lock))
        r_4_mask <= 'd0;   
    else 
        r_4_mask <= 'd1;
end
//xx  end

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_5_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_5_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 5 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_5_sample_time <= r_5_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_5_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_5_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_5_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_5_sample_time > r_time_board) && (r_5_sample_time-r_time_board < r_min_interval_lock))
        r_5_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_5_sample_time > r_time_board) && (r_5_sample_time-r_time_board > r_min_interval_lock))
        r_5_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_5_inx][32:1] >=  r_5_sample_time)
        r_5_inx <= r_5_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_5_inx][32:1] < r_5_sample_time)
        r_5_inx <= r_5_inx + 1;//停止是超了的
    else 
        r_5_inx <= r_5_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_5_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_5_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_5_sample_time > r_time_board) && (r_5_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_5_data_reback <= r_ram_edge[r_5_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_5_inx][32:1] >= r_5_sample_time ) )
        r_5_data_reback <= r_ram_edge[r_5_inx-1][0] ;//回溯
    else 
        r_5_data_reback <= r_5_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_5_mask <= 'd1; 
    else if( (r_5_sample_time > r_time_board) && ( (r_5_sample_time-r_time_board) > r_min_interval_lock))
        r_5_mask <= 'd0;   
    else 
        r_5_mask <= 'd1;
end
//xx  end


//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_6_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_6_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 6 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_6_sample_time <= r_6_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_6_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_6_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_6_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_6_sample_time > r_time_board) && (r_6_sample_time-r_time_board < r_min_interval_lock))
        r_6_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_6_sample_time > r_time_board) && (r_6_sample_time-r_time_board > r_min_interval_lock))
        r_6_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_6_inx][32:1] >=  r_6_sample_time)
        r_6_inx <= r_6_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_6_inx][32:1] < r_6_sample_time)
        r_6_inx <= r_6_inx + 1;//停止是超了的
    else 
        r_6_inx <= r_6_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_6_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_6_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_6_sample_time > r_time_board) && (r_6_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_6_data_reback <= r_ram_edge[r_6_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_6_inx][32:1] >= r_6_sample_time ) )
        r_6_data_reback <= r_ram_edge[r_6_inx-1][0] ;//回溯
    else 
        r_6_data_reback <= r_6_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_6_mask <= 'd1; 
    else if( (r_6_sample_time > r_time_board) && ( (r_6_sample_time-r_time_board) > r_min_interval_lock))
        r_6_mask <= 'd0;   
    else 
        r_6_mask <= 'd1;
end
//xx  end

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_7_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_7_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 7 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_7_sample_time <= r_7_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_7_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_7_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_7_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_7_sample_time > r_time_board) && (r_7_sample_time-r_time_board < r_min_interval_lock))
        r_7_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_7_sample_time > r_time_board) && (r_7_sample_time-r_time_board > r_min_interval_lock))
        r_7_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_7_inx][32:1] >=  r_7_sample_time)
        r_7_inx <= r_7_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_7_inx][32:1] < r_7_sample_time)
        r_7_inx <= r_7_inx + 1;//停止是超了的
    else 
        r_7_inx <= r_7_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_7_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_7_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_7_sample_time > r_time_board) && (r_7_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_7_data_reback <= r_ram_edge[r_7_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_7_inx][32:1] >= r_7_sample_time ) )
        r_7_data_reback <= r_ram_edge[r_7_inx-1][0] ;//回溯
    else 
        r_7_data_reback <= r_7_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_7_mask <= 'd1; 
    else if( (r_7_sample_time > r_time_board) && ( (r_7_sample_time-r_time_board) > r_min_interval_lock))
        r_7_mask <= 'd0;   
    else 
        r_7_mask <= 'd1;
end
//xx  end


//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_8_sample_time <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_8_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 8 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_8_sample_time <= r_8_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_8_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_8_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_8_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_8_sample_time > r_time_board) && (r_8_sample_time-r_time_board < r_min_interval_lock))
        r_8_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_8_sample_time > r_time_board) && (r_8_sample_time-r_time_board > r_min_interval_lock))
        r_8_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_8_inx][32:1] >=  r_8_sample_time)
        r_8_inx <= r_8_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_8_inx][32:1] < r_8_sample_time)
        r_8_inx <= r_8_inx + 1;//停止是超了的
    else 
        r_8_inx <= r_8_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_8_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_8_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_8_sample_time > r_time_board) && (r_8_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_8_data_reback <= r_ram_edge[r_8_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_8_inx][32:1] >= r_8_sample_time ) )
        r_8_data_reback <= r_ram_edge[r_8_inx-1][0] ;//回溯
    else 
        r_8_data_reback <= r_8_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_8_mask <= 'd1; 
    else if( (r_8_sample_time > r_time_board) && ( (r_8_sample_time-r_time_board) > r_min_interval_lock))
        r_8_mask <= 'd0;   
    else 
        r_8_mask <= 'd1;
end
//xx  end


//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_9_sample_time <= 'd0;
    else if( r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_9_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 9 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_9_sample_time <= r_9_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_9_inx <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_9_inx <= 'd0;
    else if(r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_9_inx <= r_start_search_idx;
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_9_sample_time > r_time_board) && (r_9_sample_time-r_time_board < r_min_interval_lock))
        r_9_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if( (r_state_current == LP_RECALL_CALCULATE) && (r_9_sample_time > r_time_board) && (r_9_sample_time-r_time_board > r_min_interval_lock))
        r_9_inx <= 'd0;
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_9_inx][32:1] >=  r_9_sample_time)
        r_9_inx <= r_9_inx  ;//停止是超了的
    else if(r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_9_inx][32:1] < r_9_sample_time)
        r_9_inx <= r_9_inx + 1;//停止是超了的
    else 
        r_9_inx <= r_9_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_9_data_reback <= 'd0;
    else if(r_state_current == LP_IDLE)
        r_9_data_reback <= 'd0;
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_9_sample_time > r_time_board) && (r_9_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_9_data_reback <= r_ram_edge[r_9_inx-1][0] ;//回溯
    else if((r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_9_inx][32:1] >= r_9_sample_time ) )
        r_9_data_reback <= r_ram_edge[r_9_inx-1][0] ;//回溯
    else 
        r_9_data_reback <= r_9_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_9_mask <= 'd1; 
    else if( (r_9_sample_time > r_time_board) && ( (r_9_sample_time-r_time_board) > r_min_interval_lock))
        r_9_mask <= 'd0;   
    else 
        r_9_mask <= 'd1;
end
//xx  end

//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_10_sample_time <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_10_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 10 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_10_sample_time <= r_10_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_10_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_IDLE)
        r_10_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_10_inx <= r_start_search_idx;
    else if(ri_updata_8b10_or_nor_data && (r_state_current == LP_RECALL_CALCULATE) && (r_10_sample_time > r_time_board) && (r_10_sample_time-r_time_board < r_min_interval_lock))
        r_10_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if(ri_updata_8b10_or_nor_data && (r_state_current == LP_RECALL_CALCULATE) && (r_10_sample_time > r_time_board) && (r_10_sample_time-r_time_board > r_min_interval_lock))
        r_10_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_10_inx][32:1] >=  r_10_sample_time)
        r_10_inx <= r_10_inx  ;//停止是超了的
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_10_inx][32:1] < r_10_sample_time)
        r_10_inx <= r_10_inx + 1;//停止是超了的
    else 
        r_10_inx <= r_10_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_10_data_reback <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_IDLE)
        r_10_data_reback <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&(r_state_current == LP_RECALL_CALCULATE) && (r_10_sample_time > r_time_board) && (r_10_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_10_data_reback <= r_ram_edge[r_10_inx-1][0] ;//回溯
    else if(ri_updata_8b10_or_nor_data &&(r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_10_inx][32:1] >= r_10_sample_time ) )
        r_10_data_reback <= r_ram_edge[r_10_inx-1][0] ;//回溯
    else 
        r_10_data_reback <= r_10_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_10_mask <= 'd1; 
    else if(ri_updata_8b10_or_nor_data && (r_10_sample_time > r_time_board) && ( (r_10_sample_time-r_time_board) > r_min_interval_lock))
        r_10_mask <= 'd0;   
    else 
        r_10_mask <= 'd1;
end
//xx  end


//xx  start
always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_11_sample_time <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_next == LP_RECALL_CALCULATE  )//提前一个周期
        r_11_sample_time <= r_ram_edge[r_start_search_idx][32:1] + (r_min_interval_lock >> 1) + 11 * r_min_interval_lock;  // 数据位+起始位后
    else 
        r_11_sample_time <= r_11_sample_time;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_11_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_IDLE)
        r_11_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_next == LP_RECALL_CALCULATE && r_state_current != LP_RECALL_CALCULATE)
        r_11_inx <= r_start_search_idx;
    else if(ri_updata_8b10_or_nor_data && (r_state_current == LP_RECALL_CALCULATE) && (r_11_sample_time > r_time_board) && (r_11_sample_time-r_time_board < r_min_interval_lock))
        r_11_inx <= r_edge_cnt;//实际应该 是r_ram_edge[r_edge_cnt-1][32:1]，为了和下面匹配，故意多1
    else if(ri_updata_8b10_or_nor_data && (r_state_current == LP_RECALL_CALCULATE) && (r_11_sample_time > r_time_board) && (r_11_sample_time-r_time_board > r_min_interval_lock))
        r_11_inx <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_11_inx][32:1] >=  r_11_sample_time)
        r_11_inx <= r_11_inx  ;//停止是超了的
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_RECALL_CALCULATE && r_ram_edge[r_11_inx][32:1] < r_11_sample_time)
        r_11_inx <= r_11_inx + 1;//停止是超了的
    else 
        r_11_inx <= r_11_inx;
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_11_data_reback <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_IDLE)
        r_11_data_reback <= 'd0;
    else if(ri_updata_8b10_or_nor_data &&(r_state_current == LP_RECALL_CALCULATE) && (r_11_sample_time > r_time_board) && (r_11_sample_time-r_time_board < r_min_interval_lock)&& (r_st_cnt == 2))//r_st_cnt == 2 等待r_1_inx赋值完成
        r_11_data_reback <= r_ram_edge[r_11_inx-1][0] ;//回溯
    else if(ri_updata_8b10_or_nor_data &&(r_state_current == LP_RECALL_CALCULATE) && (r_ram_edge[r_11_inx][32:1] >= r_11_sample_time ) )
        r_11_data_reback <= r_ram_edge[r_11_inx-1][0] ;//回溯
    else 
        r_11_data_reback <= r_11_data_reback;
end

always@(posedge i_clk,posedge i_rst)begin
    if(i_rst)
        r_11_mask <= 'd1; 
    else if( ri_updata_8b10_or_nor_data &&(r_11_sample_time > r_time_board) && ( (r_11_sample_time-r_time_board) > r_min_interval_lock))
        r_11_mask <= 'd0;   
    else 
        r_11_mask <= 'd1;
end
//xx  end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_recall_compelete <= 'd0; 
    else if(r_state_current == LP_RECALL_CALCULATE && r_st_cnt == 12)
        r_recall_compelete <= 'd1;
    else 
        r_recall_compelete <='d0;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_recall_compelete_1d <= 'd0;  
    else 
        r_recall_compelete_1d <=  r_recall_compelete ;
end

always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_recall_compelete_2d <= 'd0;  
    else 
        r_recall_compelete_2d <=  r_recall_compelete_1d ;
end



always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_data_mask <= 'd0;             //目的：区分10'b11_1111_1111 和 10'b00_0000_0001  都没有下一帧情况
    else if(!ri_updata_8b10_or_nor_data &&r_state_current == LP_VERIFY_NEXT_FRAME && r_data_mask == 12'b11_1111_1111 && r_next_frame_start_time>r_time_board && (r_next_frame_start_time- r_time_board < r_min_interval_lock)&& r_st_cnt == 1)
        r_data_mask <= 12'b00_0000_0001;
    else if(!ri_updata_8b10_or_nor_data &&r_recall_compelete && !r_recall_compelete_1d)
        r_data_mask <= {r_9_mask,r_8_mask,r_7_mask,r_6_mask,r_5_mask,r_4_mask,r_3_mask,r_2_mask,r_1_mask,r_0_mask};
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_VERIFY_NEXT_FRAME && r_data_mask == 12'b11_1111_1111 && r_next_frame_start_time>r_time_board && (r_next_frame_start_time- r_time_board < r_min_interval_lock)&& r_st_cnt == 1)
        r_data_mask <= 12'b00_0000_0001;
    else if(ri_updata_8b10_or_nor_data &&r_recall_compelete && !r_recall_compelete_1d)
        r_data_mask <= {r_11_mask,r_10_mask,r_9_mask,r_8_mask,r_7_mask,r_6_mask,r_5_mask,r_4_mask,r_3_mask,r_2_mask,r_1_mask,r_0_mask};
    else 
        r_data_mask <=r_data_mask;
end





always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_next_frame_start_time <= 'd0; 
    else if(r_state_current == LP_VERIFY_NEXT_FRAME && r_st_cnt == 0 )
        r_next_frame_start_time <= r_9_sample_time + r_min_interval_lock; 
    else 
        r_next_frame_start_time <= r_next_frame_start_time;
end



always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)
        r_verify_next_frame_exist_flag <= 'd0; 
    else if(!ri_updata_8b10_or_nor_data &&r_state_current == LP_VERIFY_NEXT_FRAME && r_st_cnt == 1 && r_data_mask == 12'b11_1111_1111 && r_next_frame_start_time < r_time_board )//我要崩溃了 
        r_verify_next_frame_exist_flag <=  'd1; 
    else if(ri_updata_8b10_or_nor_data &&r_state_current == LP_VERIFY_NEXT_FRAME && r_st_cnt == 1 && r_data_mask == 12'b1111_1111_1111 && r_next_frame_start_time < r_time_board )//我要崩溃了 
        r_verify_next_frame_exist_flag <=  'd1; 
    else 
        r_verify_next_frame_exist_flag <='d0;
end

 
 

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_normol_rx_run <= 'd0;
    // end else if( r_state_current !=LP_NORMAL_RX && r_state_next == LP_NORMAL_RX && r_frame_pos == 9 )begin 
    //     r_normol_rx_run <= 'd0;
    // end else if( r_state_current !=LP_NORMAL_RX && r_state_next == LP_NORMAL_RX && r_frame_pos != 9 )begin 
    //     r_normol_rx_run <= 'd1;
    end else if( r_state_current !=LP_NORMAL_RX && r_state_next == LP_NORMAL_RX   )begin 
        r_normol_rx_run <= 'd1;
    // end else if( r_state_current ==LP_NORMAL_RX && r_frame_pos == 9 && (r_baud_cnt == (r_min_interval_lock>>1)-1))begin 
    end else if(!ri_updata_8b10_or_nor_data&&r_baud_cnt == 21 && r_frame_pos == 9)begin   
        r_normol_rx_run <= 'd0;
    end else if(ri_updata_8b10_or_nor_data&&r_baud_cnt == 21 && r_frame_pos == 11)begin   
        r_normol_rx_run <= 'd0;
    end else if(r_state_current ==LP_NORMAL_RX && !r_normol_rx_run && !r_rx_sync[0] && r_rx_sync[1] )begin
        r_normol_rx_run <= 'd1;  
    end else begin
        r_normol_rx_run <= r_normol_rx_run;
    end
end


always @(posedge i_clk,posedge i_rst) begin
    if(i_rst)begin
        r_frame_pos <= 'd0;  
    end else if(r_state_current == LP_IDLE)begin 
        r_frame_pos <= 'd0;  
    end else if(r_state_current == LP_DATA_ALIGN)begin  
        case(r_data_mask) 
        12'b00_0000_0001: r_frame_pos <= 'd0 ;
        12'b00_0000_0011: r_frame_pos <= 'd1 ;
        12'b00_0000_0111: r_frame_pos <= 'd2 ;
        12'b00_0000_1111: r_frame_pos <= 'd3 ;
        12'b00_0001_1111: r_frame_pos <= 'd4 ;
        12'b00_0011_1111: r_frame_pos <= 'd5 ;
        12'b00_0111_1111: r_frame_pos <= 'd6 ;
        12'b00_1111_1111: r_frame_pos <= 'd7 ;
        12'b01_1111_1111: r_frame_pos <= 'd8 ;
        12'b11_1111_1111: r_frame_pos <= 'd9 ;
        12'b111_1111_1111: r_frame_pos <= 'd10 ;
        12'b1111_1111_1111: r_frame_pos <= 'd11 ;
        default:r_frame_pos<='d0;
        endcase
    end else if(!r_normol_rx_run && r_state_current ==LP_NORMAL_RX)begin
        r_frame_pos <= 'd0;
    end else if(r_baud_cnt == (r_min_interval_lock>>1)-1 && r_state_current == LP_NORMAL_RX)begin    
        r_frame_pos <= r_frame_pos + 1;
    end else begin 
        r_frame_pos <= r_frame_pos;  
    end
end



always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_baud_cnt <= 'd0;
    end else if(r_state_current == LP_NORMAL_RX && r_baud_cnt == r_min_interval_lock-1 && r_normol_rx_run)begin 
        r_baud_cnt <= 'd0;
    end else if(r_state_current == LP_NORMAL_RX && r_normol_rx_run)begin
        r_baud_cnt <= r_baud_cnt + 1;  
    end else begin
        r_baud_cnt <= 'd0;
    end
end
 
         
           

always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_uart_data <= 'd0;
    end else if(!ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_DATA_ALIGN && r_data_mask == 10'b00_0000_0001)begin
        ro_uart_data <= {r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback} ;
    end else if(!ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_UPDATA)begin
        ro_uart_data <= {r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback} ;
    end else if(ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_DATA_ALIGN && r_data_mask == 10'b00_0000_0001)begin
        ro_uart_data <= {r_10_data_reback,r_9_data_reback,r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback} ;
    end else if(ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_UPDATA)begin
        ro_uart_data <= {r_10_data_reback,r_9_data_reback,r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback} ;
    end else if(r_state_current == LP_DATA_ALIGN&&!ri_updata_8b10_or_nor_data)begin 
        case(r_data_mask) 
        12'b00_0000_0001: ro_uart_data <= { 10'd0};
        12'b00_0000_0011: ro_uart_data <= { 10'd0};//目的是契合计数器值/2 去采集，  减少条件，重复利用
        12'b00_0000_0111: ro_uart_data <= { 2'b0,r_1_data_reback,7'd0};
        12'b00_0000_1111: ro_uart_data <= { 2'b0,r_2_data_reback,r_1_data_reback,6'd0};
        12'b00_0001_1111: ro_uart_data <= { 2'b0,r_3_data_reback,r_2_data_reback,r_1_data_reback,5'd0};
        12'b00_0011_1111: ro_uart_data <= { 2'b0,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,4'd0};
        12'b00_0111_1111: ro_uart_data <= { 2'b0,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,3'd0};
        12'b00_1111_1111: ro_uart_data <= { 2'b0,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,2'd0};
        12'b01_1111_1111: ro_uart_data <= { 2'b0,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,1'd0};
        12'b11_1111_1111: ro_uart_data <= { 2'b0,r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback};
        default:ro_uart_data <='d0;
        endcase
    end else if(r_state_current == LP_DATA_ALIGN&&ri_updata_8b10_or_nor_data)begin 
        case(r_data_mask) 
        12'b00_0000_0001: ro_uart_data <= { 8'd0};
        12'b00_0000_0011: ro_uart_data <= { 8'd0};//目的是契合计数器值/2 去采集，  减少条件，重复利用
        12'b00_0000_0111: ro_uart_data <= { r_1_data_reback,7'd0};
        12'b00_0000_1111: ro_uart_data <= { r_2_data_reback,r_1_data_reback,6'd0};
        12'b00_0001_1111: ro_uart_data <= { r_3_data_reback,r_2_data_reback,r_1_data_reback,5'd0};
        12'b00_0011_1111: ro_uart_data <= { r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,4'd0};
        12'b00_0111_1111: ro_uart_data <= { r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,3'd0};
        12'b00_1111_1111: ro_uart_data <= { r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,2'd0};
        12'b01_1111_1111: ro_uart_data <= { r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,1'd0};
        12'b11_1111_1111: ro_uart_data <= { r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback};
        12'b111_1111_1111: ro_uart_data <= {r_9_data_reback, r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback};
        12'b1111_1111_1111: ro_uart_data <= { r_10_data_reback,r_9_data_reback,r_8_data_reback,r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback};
        default:ro_uart_data <='d0;
        endcase
    end else if(!ri_updata_8b10_or_nor_data&&r_baud_cnt == (r_min_interval_lock>>1)-1 && r_frame_pos>=1 && r_frame_pos <= 8)begin 
        ro_uart_data <= {2'b0,i_uart_rx,ro_uart_data[7:1]}; 
    end else if(ri_updata_8b10_or_nor_data&&r_baud_cnt == (r_min_interval_lock>>1)-1 && r_frame_pos>=1 && r_frame_pos <= 8)begin 
        ro_uart_data <= {i_uart_rx,ro_uart_data[9:1]}; 
    end else if(r_normol_rx_run)begin
        ro_uart_data <= ro_uart_data;
    end else  begin
        ro_uart_data <= 'd0;
    end
end



always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        ro_uart_data_vld <= 'd0;
    end else if(!ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_DATA_ALIGN && r_data_mask == 12'b00_0000_0001)begin
        ro_uart_data_vld <= 'd1; 
    end else if(!ri_updata_8b10_or_nor_data&& r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_UPDATA)begin
        ro_uart_data_vld <= 'd1; 
    end else if(!ri_updata_8b10_or_nor_data&&r_baud_cnt == 20 && r_frame_pos == 9)begin 
        ro_uart_data_vld <= 'd1; 
    end else if(ri_updata_8b10_or_nor_data&&r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_DATA_ALIGN && r_data_mask == 12'b00_0000_0001)begin
        ro_uart_data_vld <= 'd1; 
    end else if(ri_updata_8b10_or_nor_data&& r_state_current == LP_VERIFY_NEXT_FRAME && r_state_next == LP_UPDATA)begin
        ro_uart_data_vld <= 'd1; 
    end else if(ri_updata_8b10_or_nor_data&&r_baud_cnt == 20 && r_frame_pos == 9)begin 
        ro_uart_data_vld <= 'd1; 
    end else begin
        ro_uart_data_vld <= 'd0;
    end
end





 always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rx_high_cnt <= 'd0;
    end else if(r_rx_sync[0])begin 
        r_rx_high_cnt <= r_rx_high_cnt + 1; 
    end else begin
        r_rx_high_cnt <= 'd0;
    end
end


 always@(posedge i_clk, posedge i_rst)begin
    if(i_rst)begin
        r_rx_frame_end <= 'd0;
    end else if(r_rx_high_cnt == 1_000_000)begin //20ms
        r_rx_frame_end <= 1; 
    end else begin
        r_rx_frame_end <= 'd0;
    end
end

endmodule




// always@(posedge i_clk, posedge i_rst)begin
//     if(i_rst)begin
//         r_normol_rx_data <= 'd0;
//     end else if(r_state_current == LP_DATA_ALIGN)begin 
//         case(r_data_mask) 
//         10'b00_0000_0001: r_normol_rx_data <= { 8'd0};
//         10'b00_0000_0011: r_normol_rx_data <= { 8'd0};//目的是契合计数器值/2 去采集，  减少条件，重复利用
//         10'b00_0000_0111: r_normol_rx_data <= { r_1_data_reback,7'd0};
//         10'b00_0000_1111: r_normol_rx_data <= { r_2_data_reback,r_1_data_reback,6'd0};
//         10'b00_0001_1111: r_normol_rx_data <= { r_3_data_reback,r_2_data_reback,r_1_data_reback,5'd0};
//         10'b00_0011_1111: r_normol_rx_data <= { r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,4'd0};
//         10'b00_0111_1111: r_normol_rx_data <= { r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,3'd0};
//         10'b00_1111_1111: r_normol_rx_data <= { r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,2'd0};
//         10'b01_1111_1111: r_normol_rx_data <= { r_7_data_reback,r_6_data_reback,r_5_data_reback,r_4_data_reback,r_3_data_reback,r_2_data_reback,r_1_data_reback,1'd0};
//         10'b11_1111_1111: r_normol_rx_data <= { 8'd0};
//         default:r_normol_rx_data <='d0;
//         endcase
//     end else if(r_baud_cnt == (r_min_interval_lock>>1)-1 && r_frame_pos>=1 && r_frame_pos <= 8)begin 
//         r_normol_rx_data <= {i_uart_rx,r_normol_rx_data[7:1]}; 
//     end else begin
//         r_normol_rx_data <= r_normol_rx_data;
//     end
// end

 

// always@(posedge i_clk, posedge i_rst)begin
//     if(i_rst)begin
//         r_normol_rx_vld <= 'd0;
//     end else if((r_baud_cnt == (r_min_interval_lock>>1)-1) && r_frame_pos == 9)begin 
//         r_normol_rx_vld <= 'd1; 
//     end else begin
//         r_normol_rx_vld <= 'd0;
//     end
// end

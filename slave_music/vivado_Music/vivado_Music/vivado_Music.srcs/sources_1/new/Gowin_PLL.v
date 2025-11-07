//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: IP file
//Tool Version: V1.9.10.02
//Part Number: GW5A-LV25UG324C2/I1
//Device: GW5A-25
//Device Version: A
//Created Time: Tue Nov 12 06:02:09 2024

module Gowin_PLL 
(
    input  wire clkin   ,
    
    output wire clkout0, 
    output wire clkout1, 
    output wire clkout2 
    
);

wire lock;

PLLA PLLA_inst
(
    .clkout0(clkout0),     
    .clkout1(clkout1),     
    .clkout2(clkout2),     

    .locked(lock),       
    .clkin(clkin)
);      

endmodule //Gowin_PLL

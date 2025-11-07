
//module list begin
//( 1)decoder_8B10B
//( 2)decoder_3B4B
//( 3)decoder_5B6B
//( 4)disp_check
//( 5)invalid_code_check
//module list end


//=================================================
//( 1)
module decoder_8B10B
(
  reset,
  clk,
  din,
  din_valid,
  dout,
  dout_valid,
  ctrldetect,
  errdetect,
  disperr
);

input			reset;
input 			clk;
input	[9:0]	din;		// 10bit word input
input			din_valid;
output	[7:0]	dout;		// 8bit word output
output			dout_valid;
output			ctrldetect;	// Control code detected
output			errdetect;	// Code error detected
output			disperr;	// Running disparity error detected


wire 		invalid_6B;
wire [1:0]	disp_6B;
wire [4:0]	dout_5B;
wire 		dout_5B_valid;

decoder_5B6B 
the_decoder_5B6B (
  .clk			(clk										),
  .reset		(reset										),
  .din			({din[0],din[1],din[2],din[3],din[4],din[5]}),
  .din_valid	(din_valid									),
  .dout			(dout_5B									),
  .dout_valid	(dout_5B_valid								),
  .disp			(disp_6B									),
  .invalid		(invalid_6B									)
);

wire 		invalid_4B;
wire [1:0]	disp_4B;
wire 		ctrldetect_4B;
wire [2:0]	dout_3B/* synthesis syn_keep = 1 */ ;
wire 		dout_3B_valid;

decoder_3B4B 
the_decoder_3B4B (
  .clk			(clk										),
  .reset		(reset										),
  .din			({din[6],din[7],din[8],din[9]}				),
  .din_valid	(din_valid									),
  .din_6B		({din[0],din[1],din[2],din[3],din[4],din[5]}),
  .dout			(dout_3B									),
  .dout_valid	(dout_3B_valid								),
  .disp			(disp_4B									),
  .invalid		(invalid_4B									),
  .kout			(ctrldetect_4B								)
);

// Delay input word to match first state decoder latency
reg [9:0]	din_dly;
reg			din_valid_dly;
always @(posedge clk or posedge reset)
begin
	if (reset) 
		begin
			din_dly <= 0;
			din_valid_dly <= 0;
		end
	else  
		begin
			if (din_valid) din_dly <= din;
			din_valid_dly <= din_valid;
		end
end

// Disparity checker
disp_check 
the_disp_check (
  .clk			(clk		  ),
  .reset		(reset		  ),
  .din			(din_dly	  ),
  .din_valid	(din_valid_dly),
  .disp_6B		(disp_6B	  ),
  .disp_4B		(disp_4B	  ),
  .disperr		(disperr	  )
);

// Invalid code checker
invalid_code_check 
the_invalid_code_check (
  .clk			(clk		  ),
  .reset		(reset		  ),
  .din			(din_dly	  ),
  .din_valid	(din_valid_dly),
  .invalid_4B	(invalid_4B	  ),
  .invalid_6B	(invalid_6B	  ),
  .errdetect	(errdetect	  )
);
		

// Generate output word, errdetect and ctrldetect signals
// with one cycle delay to match disparity  and invalid code checker latency

reg	[7:0]	dout/* synthesis syn_preserve = 1 */ ;
reg			dout_valid;
reg			ctrldetect;

always @(posedge clk or posedge reset)
begin
	if (reset) 
		begin
			dout <= 0;
			dout_valid <= 0;
			ctrldetect <= 0;
		end
	else 
		begin
			dout <= {dout_3B,dout_5B};
			dout_valid <= dout_3B_valid & dout_5B_valid;
			ctrldetect <= ctrldetect_4B;
		end
end



endmodule


//=================================================
//( 2)
module decoder_3B4B 
(
  clk,
  reset,
  din,
  din_valid,
  din_6B,
  kout,
  dout,
  dout_valid,
  disp,
  invalid
);

input 			clk,reset;
input 	[3:0]	din;
input			din_valid;
input 	[5:0]	din_6B;
output 	[2:0]	dout;
output			dout_valid;
output	[1:0]	disp;
output			invalid;
output			kout;


reg	[2:0]	dout;
reg			dout_valid;
reg	[1:0]	disp;
reg 		invalid;
reg			kout;

parameter POSITIVE = 2'b01;
parameter NULL = 2'b00;
parameter NEGATIVE = 2'b10;

always @(posedge clk or posedge reset)
begin
	if (reset) 
		begin 
			dout <= 3'b0; 
			disp <= NULL; 
			invalid <= 0; 
			kout <= 0; 
			dout_valid <= 0; 
		end
	else if (din_valid)
		begin
			dout_valid <= 1;
			case (din)
				4'b0100 : 
				begin 
					dout <= 0; 
					disp <= NEGATIVE; 
					invalid <= 0;
					kout <= (din_6B==6'b001111);
				end
				4'b1011 : 
				begin 
					dout <= 0; 
					disp <= POSITIVE; 
					invalid <= 0;
					kout <= (din_6B==6'b110000);
				end

				// detect a 1 or a 6 depending on the 6B value

				4'b1001 : 
				begin 
					disp <= NULL; invalid <= 0;
					if (din_6B==6'b001111) 
						begin 
							dout <= 1; 
							kout <= 1; 
						end
					else if (din_6B==6'b110000) 
						begin 
							dout <= 6; 
							kout <= 1;
						end
					else 
						begin 
							dout <= 1; 
							kout <= 0; 
						end		      
				end
				4'b0110 : 
				begin 
					disp <= NULL; 
					invalid <= 0;
					if (din_6B==6'b001111) 
						begin 
							dout <= 6; 
							kout <= 1; 
						end
					else if (din_6B==6'b110000) 
						begin 
							dout <= 1; 
							kout <= 1; 
						end
					else 
						begin 
							dout <= 6; 
							kout <= 0; 
						end		      
				end		  

				// detect a 2 or a 5 depending on the 6B value

				4'b0101 : 
				begin 
					disp <= NULL; invalid <= 0;
					if (din_6B==6'b001111) 
						begin 
							dout <= 2;
							kout <= 1; 
						end
					else if (din_6B==6'b110000) 
						begin 
							dout <= 5; 
							kout <= 1; 
						end
					else
						begin 
							dout <= 2; 
							kout <= 0; 
						end		      
				end
				4'b1010 : 
				begin 
					disp <= NULL; 
					invalid <= 0;
					if (din_6B==6'b001111) 
					begin 
						dout <= 5; 
						kout <= 1; 
					end
					else if (din_6B==6'b110000)
						begin 
							dout <= 2; 
							kout <= 1; 
						end
					else 
						begin 
							dout <= 5; 
							kout <= 0;
						end		      
				end		  

				// detect a 3		  

				4'b0011 : 
				begin 
					dout <= 3; 
					disp <= NULL; 
					invalid <= 0; 
					kout <= (din_6B==6'b001111);
				end
				4'b1100 : 
				begin 
					dout <= 3; 
					disp <= NULL; 
					invalid <= 0; 
					kout <= (din_6B==6'b110000);
				end

				// detect a 4		  

				4'b0010 : 
				begin 
					dout <= 4; 
					disp <= NEGATIVE; 
					kout <= (din_6B==6'b001111);
				end
				4'b1101 : 
				begin 
					dout <= 4; 
					disp <= POSITIVE; 
					kout <= (din_6B==6'b110000);
				end


				// detect a 7		  

				4'b0001 : 
				begin 
					dout <= 7; 
					disp <= NEGATIVE; 
					invalid <= (din_6B==6'b001111); // K28.7 coded this way does not create disparity error so need to be checked as invalid code
					kout <= 0;
				end
				4'b1110 : 
				begin 
					dout <= 7; 
					disp <= POSITIVE; 
					invalid <= (din_6B==6'b110000); // K28.7 coded this way does not create disparity error so need to be checked as invalid code
					kout <= 0; 
				end
				4'b1000 : 
				begin 
					dout <= 7; disp <= NEGATIVE; invalid <= 0; 
					kout <= ((din_6B==6'b111010) || 
					(din_6B==6'b110110) || 
					(din_6B==6'b101110) || 
					(din_6B==6'b011110) ||
					(din_6B==6'b001111));

				end
				4'b0111 : 
				begin 
					dout <= 7; disp <= POSITIVE; invalid <= 0; 
					kout <= ((din_6B==6'b000101) || 
					(din_6B==6'b001001) || 
					(din_6B==6'b010001) || 
					(din_6B==6'b100001) ||
					(din_6B==6'b110000));

				end
				default : 
					begin 
						dout <= 0; 
						disp <= NULL;
						kout <= 0; 
						invalid <= 1; 
					end
			endcase
		end
	else 
		dout_valid <= 0;
end



endmodule
       


//=================================================
//( 3)
module decoder_5B6B 
(
  clk,
  reset,
  din,
  din_valid,
  dout,
  dout_valid,
  disp,
  invalid
);

input 			clk,reset;
input 	[5:0]	din;
input			din_valid;
output 	[4:0]	dout;
output			dout_valid;
output	[1:0]	disp;
output			invalid;

reg	[4:0]		dout;
reg				dout_valid;
reg	[1:0]		disp;
reg 			invalid;

parameter POSITIVE = 2'b01;
parameter NULL = 2'b00;
parameter NEGATIVE = 2'b10;

always @(posedge clk or posedge reset)
begin
    if (reset) begin dout <= 5'b0; disp <= NULL; invalid <= 0; dout_valid <= 0; end
    else if (din_valid)
	     begin
		    dout_valid <= 1;
		    case (din)
			  6'b100111 : begin dout <= 0; disp <= POSITIVE; invalid <= 0; end
			  6'b011000 : begin dout <= 0; disp <= NEGATIVE; invalid <= 0; end
		
			  6'b011101 : begin dout <= 1 ; disp <= POSITIVE; invalid <= 0; end
			  6'b100010 : begin dout <= 1 ; disp <= NEGATIVE; invalid <= 0; end
		
			  6'b101101 : begin dout <= 2; disp <= POSITIVE; invalid <= 0; end
			  6'b010010 : begin dout <= 2; disp <= NEGATIVE; invalid <= 0; end
		
			  6'b110001 : begin dout <= 3; disp <= NULL; invalid <= 0; end
		
			  6'b110101 : begin dout <= 4; disp <= POSITIVE; invalid <= 0; end
			  6'b001010 : begin dout <= 4; disp <= NEGATIVE; invalid <= 0; end

			  6'b101001 : begin dout <= 5 ; disp <= NULL; invalid <= 0; end

			  6'b011001 : begin dout <= 6; disp <= NULL; invalid <= 0; end

			  6'b111000 : begin dout <= 7; disp <= NULL; invalid <= 0; end        
			  6'b000111 : begin dout <= 7; disp <= NULL; invalid <= 0; end        

			  6'b111001 : begin dout <= 8; disp <= POSITIVE; invalid <= 0; end
			  6'b000110 : begin dout <= 8; disp <= NEGATIVE; invalid <= 0; end

			  6'b100101 : begin dout <= 9; disp <= NULL; invalid <= 0; end

			  6'b010101 : begin dout <= 10; disp <= NULL; invalid <= 0; end

			  6'b110100 : begin dout <= 11; disp <= NULL; invalid <= 0; end

			  6'b001101 : begin dout <= 12; disp <= NULL; invalid <= 0; end

			  6'b101100 : begin dout <= 13; disp <= NULL; invalid <= 0; end

			  6'b011100 : begin dout <= 14; disp <= NULL; invalid <= 0; end

			  6'b010111 : begin dout <= 15; disp <= POSITIVE; invalid <= 0; end
			  6'b101000 : begin dout <= 15; disp <= NEGATIVE; invalid <= 0; end

			  6'b011011 : begin dout <= 16; disp <= POSITIVE; invalid <= 0; end
			  6'b100100 : begin dout <= 16; disp <= NEGATIVE; invalid <= 0; end

			  6'b100011 : begin dout <= 17; disp <= NULL; invalid <= 0; end

			  6'b010011 : begin dout <= 18; disp <= NULL; invalid <= 0; end

			  6'b110010 : begin dout <= 19; disp <= NULL; invalid <= 0; end

			  6'b001011 : begin dout <= 20; disp <= NULL; invalid <= 0; end

			  6'b101010 : begin dout <= 21; disp <= NULL; invalid <= 0; end

			  6'b011010 : begin dout <= 22; disp <= NULL; invalid <= 0; end

			  6'b111010 : begin dout <= 23; disp <= POSITIVE; invalid <= 0; end
			  6'b000101 : begin dout <= 23; disp <= NEGATIVE; invalid <= 0; end

			  6'b110011 : begin dout <= 24; disp <= POSITIVE; invalid <= 0; end
			  6'b001100 : begin dout <= 24; disp <= NEGATIVE; invalid <= 0; end

			  6'b100110 : begin dout <= 25; disp <= NULL; invalid <= 0; end

			  6'b010110 : begin dout <= 26; disp <= NULL; invalid <= 0; end

			  6'b110110 : begin dout <= 27; disp <= POSITIVE; invalid <= 0; end
			  6'b001001 : begin dout <= 27; disp <= NEGATIVE; invalid <= 0; end
		
				6'b001110 : begin dout <= 28; disp <= NULL; end
				6'b001111 : begin dout <= 28; disp <= POSITIVE; invalid <= 0; end
				6'b110000 : begin dout <= 28; disp <= NEGATIVE; invalid <= 0; end

			  6'b101110 : begin dout <= 29; disp <= POSITIVE; invalid <= 0; end
			  6'b010001 : begin dout <= 29; disp <= NEGATIVE; invalid <= 0; end
		
			  6'b011110 : begin dout <= 30; disp <= POSITIVE; invalid <= 0; end
			  6'b100001 : begin dout <= 30; disp <= NEGATIVE; invalid <= 0; end

			  6'b101011 : begin dout <= 31; disp <= POSITIVE; invalid <= 0; end
			  6'b010100 : begin dout <= 31; disp <= NEGATIVE; invalid <= 0; end

			  default : begin dout <= 0; disp <= NULL; invalid <= 1; end
		    endcase
	     end
    else 
	    dout_valid <= 0;
end



endmodule


//=================================================
//( 4)
module disp_check
(
  clk,
  reset,
  din,
  din_valid,
  disp_6B,
  disp_4B,
  disperr
);
	

input			clk;
input			reset;
input  [9:0]	din;
input			din_valid;
input  [1:0]	disp_6B;
input  [1:0]	disp_4B;
output			disperr;


reg	[1:0]	current_disp;
reg			disperr;

parameter POSITIVE = 2'b01;
parameter NULL = 2'b00;
parameter NEGATIVE = 2'b10;


// Calculate current disparity for the next data sample
always @(posedge clk or posedge reset)
begin
	if (reset) 
		current_disp <= NEGATIVE;
	else if (din_valid)
		begin
			if (disp_4B==NULL) 
				begin
					if (disp_6B==NULL) 
						current_disp <= current_disp;
					else 
						current_disp <= disp_6B;
				end
			else 
				current_disp <= disp_4B;
		end
end


// Detect disparity errors
always @(posedge clk or posedge reset)
begin
	if (reset) 
		disperr <= 0;
	else if (din_valid)
		begin
			case (disp_6B)
				POSITIVE : 
				begin
					if (current_disp==POSITIVE) 
						disperr <= 1; // disparity is wrong whatever the 4B code disparity
					else if (current_disp==NEGATIVE)	  // need to investigate in the 4B code in this case
						begin
							case (disp_4B)
								POSITIVE : disperr <= 1;
								NEGATIVE : disperr <= 0;
								NULL : disperr <= (din[9:6]==4'b0011); //special case
							endcase
						end
				end
				NEGATIVE :
				begin
					if (current_disp==NEGATIVE) disperr <= 1; // disparity is wrong whatever the 4B code disparity
					else if (current_disp==POSITIVE)	  // need to investigate in the 4B code in this case
						begin
							case (disp_4B)
								NEGATIVE : disperr <= 1;
								POSITIVE : disperr <= 0;
								NULL : disperr <= (din[9:6]==4'b1100); //special case
							endcase
						end
				end
				NULL : 
				begin
					//investigate special cases first
					if ((current_disp==POSITIVE) && (din[5:0]==6'b000111)) 
						disperr <= 1;
					else if ((current_disp==NEGATIVE) && (din[5:0]==6'b111000)) 
						disperr <= 1;
					else
						begin
							case (disp_4B)
								POSITIVE : disperr <= (current_disp==POSITIVE);
								NEGATIVE : disperr <= (current_disp==NEGATIVE);    
								// Special cases
								NULL : disperr <= (((din[9:6]==4'b0011)&&(current_disp==POSITIVE)) || ((din[9:6]==4'b1100)&&(current_disp==NEGATIVE)));
							endcase
						end
				end
			endcase
		end
end



endmodule	



//=================================================
//( 5)
module invalid_code_check 
(
  clk,
  reset,
  din,
  din_valid,
  invalid_4B,
  invalid_6B,
  errdetect
);
	
input			clk;
input			reset;
input  [9:0]	din;
input			din_valid;
input			invalid_4B;
input			invalid_6B;
output			errdetect;

reg				errdetect;

// Find errors not detected by the first stage decoder
// Based on the IBM article by Widmer and Franaszek
// Here is the list of cases which generate a code error
//
// a = b = c = d
// P13 & !e & !i
// P31 & e & i
// f = g = h = j
// e = i = f = g = h
// i !=e = g = h = j
// (e = i != g = h = j) & !(c = d = e)
// !P31 & e & !i & !g & !h & !j
// !P13 & !e & i & g & h & j


wire a = din[0];
wire b = din[1];
wire c = din[2];
wire d = din[3];
wire e = din[4];
wire i = din[5];
wire f = din[6];
wire g = din[7];
wire h = din[8];
wire j = din[9];
     
wire P13 = ((din[3:0]==4'b0001) | (din[3:0]==4'b1000));
wire P31 = ((din[3:0]==4'b1110) | (din[3:0]==4'b0111));
     
wire condition1 = ((a==b) & (b==c) & (c==d));
wire condition2 = (P13 & ~e & ~i);
wire condition3 = (P31 & e & i);
wire condition4 = ((f==g) & (g==h) & (h==j));
wire condition5 = ((e==i) & (i==f) & (f==g) & (g==h));
wire condition6 = ((i!=e) & (e==g) & (g==h) & (h==j));
wire condition7 = (((e==i) & (i!=g) & (g==h) & (h==j)) & ~((c==d) & (d==e)));
wire condition8 = (~P31 & e & ~i & ~g & ~h & ~j);
wire condition9 = (~P13 & ~e & i & g & h & j);

// insert one clock cycle wait state before enabling the checker
// need to flash out first reset value from the pipe.
reg  wait_cycle;

always @(posedge clk or posedge reset)
begin
	if (reset) 
		begin
			errdetect <= 0;
			wait_cycle <= 1;
		end
	else if (din_valid)
	begin
		wait_cycle <= 0;
		if (~wait_cycle) 
			begin
				if (invalid_4B || invalid_6B) 
					errdetect <= 1;
				else
					errdetect <= (condition1 | condition2 | condition3 | condition4 | condition5 | condition6 | condition7 | condition8 | condition9);
			end
	end
end

endmodule  



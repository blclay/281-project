module Decoder3to16(
 input [2:0]IN,
 output reg [15:0]OUT);
 always @(*)
 begin
	OUT[15:0]=0;
 begin
 case({IN[2:0]})
 3'b000: OUT=16'bxxxxxxxxxxxxxxxx; //none
 3'b001: OUT=16'b1000000010100011; // S A V E
 3'b010: OUT=16'bxxxx000000100010; // none A D D
 3'b011: OUT=16'bxxxx100010010001; // none S U b
 3'b100: OUT=16'bxxxx010001011001; // none m1 m2 U
 3'b101: OUT=16'bxxxx001011001010; // none d I v (I is 12)
 default: begin
	assign OUT[15:0]=0;
 end
 endcase
 end
 end
 endmodule
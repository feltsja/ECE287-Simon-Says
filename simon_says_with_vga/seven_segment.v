module seven_segment (
input [3:0]i,
output reg [6:0]o
);


// HEX out - rewire DE2
//  ---a---
// |       |
// f       b
// |       |
//  ---g---
// |       |
// e       c
// |       |
//  ---d---

always @(*)
begin
	case (i)	    // abcdefg
		// Using Lab09's seven_segment.v
		4'b0000: o = 7'b0000001;
		4'b0001: o = 7'b1001111;
		4'b0010: o = 7'b0010010;
		4'b0011: o = 7'b0000110;
		4'b0100: o = 7'b1001100;
		4'b0101: o = 7'b0100100;
		4'b0110: o = 7'b0100000;
		4'b0111: o = 7'b0001111;
		4'b1000: o = 7'b0000000;
		4'b1001: o = 7'b0001100;
		4'b1010: o = 7'b0001000;
		4'b1011: o = 7'b1100000;
		4'b1100: o = 7'b0110001;
		4'b1101: o = 7'b1000010;
		4'b1110: o = 7'b0110000;
		4'b1111: o = 7'b0111000;
		default: o = 7'b1111111;
	endcase
end



endmodule
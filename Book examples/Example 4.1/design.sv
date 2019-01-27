// Design
// Example 4.1
module sillyfunction (a, b, c, y);
  input logic      a;
  input logic      b;
  input logic      c;
  output logic     y;

  assign y = ~a & ~b & ~c |
    		  a & ~b & ~c |
    		  a & ~b &  c;

endmodule
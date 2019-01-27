// Design
// Example 4.1
module sillyfunction (a, b, c, y);
  input       a;
  input       b;
  input       c;
  output      y;

  assign y = ~a & ~b & ~c |
    		  a & ~b & ~c |
    		  a & ~b &  c;

endmodule
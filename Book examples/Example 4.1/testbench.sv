// Testbench
module test;

  wire a;
  wire b;
  wire c;
  wire y;
  
  // Instantiate design under test
  sillyfunction sf(.a(a), .b(b), .c(c), .y(y));
          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    $display("abc = 000");
    a = 0;
    b = 0;
    c = 0;
    display;
    
    $display("abc = 111");
    a = 0;
    b = 0;
    c = 0;
    display;
  end
  
  task display;
    #1 $display("a:%0h, b:%0h, c:%0h, y:%0h", a, b, c, y);
  endtask

endmodule
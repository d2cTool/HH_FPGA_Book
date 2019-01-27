// Testbench
module test;

  reg[3:0] a;
  wire[3:0] y;
  
  // Instantiate design under test
  inv INV(.a(a), .y(y));
          
  initial begin
    // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
    
    $display("a = 000");
    a = 0;
    display;
    
    $display("a = 111");
    a = 1;
    display;
  end
  
  task display;
    #1 $display("a:%0h, y:%0h", a, y);
  endtask

endmodule
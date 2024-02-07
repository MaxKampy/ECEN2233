`timescale 1ns / 1ps
module tb ();

   logic        a;
   logic 	b;
   logic 	c;
   logic 	y;
   logic        clk;   
   logic cout;
  // instantiate device under test
   silly dut (a, b, c, y, cout);

   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin
    
	#0   a = 1'B0;	
	#0   b = 1'B0;	
	#0   c = 1'B0;

	#20  a = 1'B0;	
	#0   b = 1'B0;	
	#0   c = 1'B1;

	#20  a = 1'B0;	
	#0   b = 1'B1;	
	#0   c = 1'B0;	

	#20  a = 1'B0;	
	#0   b = 1'B1;	
	#0   c = 1'B1;	

	#20  a = 1'B1;	
	#0   b = 1'B0;	
	#0   c = 1'B0;	

	#20  a = 1'B1;	
	#0   b = 1'B0;	
	#0   c = 1'B1;	

	#20  a = 1'B1;	
	#0   b = 1'B1;	
	#0   c = 1'B0;	

	#20  a = 1'B1;	
	#0   b = 1'B1;	
	#0   c = 1'B1;	

	
     end

   
endmodule

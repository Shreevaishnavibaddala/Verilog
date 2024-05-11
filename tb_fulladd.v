 module tb_full_add();   // Test bench fortb_ and_gate.v
 reg a,b,cin;                // a reg, to allow us to assign the input, and a wire to receive the output
 //wire s,c;
 full_add  uut(sum,carry,a,b,cin); // this instantiates a and gate, uut is a label 
 initial
 begin
 a = 1'b0;                   // here we apply inputs to the gate
 b = 1'b0;
 cin = 1'b0;
 #10;
 a = 1'b0;
 b = 1'b0;
  cin = 1'b1;
 #10;
 a = 1'b0;
 b = 1'b1;
 cin = 1'b0;
 #10;
 a = 1'b0;
 b = 1'b1;
 cin = 1'b1;
#10;
a = 1'b1;                   // 
 b = 1'b0;
 cin = 1'b0;
 #10;
 a = 1'b1;
 b = 1'b0;
  cin = 1'b1;
 #10;
 a = 1'b1;
 b = 1'b1;
 cin = 1'b0;
 #10;
 a = 1'b1;
 b = 1'b1;
 cin = 1'b1;


 end
 // set up the monitoring
 initial
 begin
 $monitor("a=%b, b=%b, cin=%b, carry=%b, time=%t\n", a, b, cin, carry,$time);
 end
 endmodule

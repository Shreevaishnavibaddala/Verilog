 // name: and_gate.v
 `timescale 1 ns/1 ns
module and_gate(out, a,b);  //you list all inputs and outputs, by convention outputs go first
output out;                          // this tells the compile which lines are inputs and outputs 
input a, b;

assign out = a & b;         // output function
endmodule


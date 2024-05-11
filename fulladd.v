 // name: full adder
 
module full_add(sum,carry, a,b,cin);  //you list all inputs and outputs, by convention outputs go first
output sum,carry;                          // this tells the compile which lines are inputs and outputs 
input a, b, cin;
reg s, c, cnew, s_temp;

always@(a,b)
begin
s= a ^ b;
c= a &b;
end

always@(s,cin)
begin
s_temp= s ^ cin;
cnew= s & cin;
end

 assign carry=cnew^cin; 
assign sum = s_temp;
endmodule


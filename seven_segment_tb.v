module tb_seven_segment ;

reg [3:0] bcd ; reg clk ; // Define the input
wire [6:0] display ; // Define the outputs
initial
begin 
$dumpfile("my.vcd");
$dumpvars;
end
// Map the I/O ports with UUT
seven_segment uut (. bcd (bcd ) ,. display ( display ));

// Define Initial block
initial begin

bcd =4'b0000 ; // Initialise the input ’bcd ’ value to ’0’

end

// Initialize input ports with different combination of BCD data
initial begin
bcd = 4'b0000 ;#100;
bcd = 4'b0001 ;#100;
bcd = 4'b0010 ;#100;
bcd = 4'b0011 ;#100;
bcd = 4'b0100 ;#100;
bcd = 4'b0101 ;#100;
bcd = 4'b0110 ;#100;
bcd = 4'b0111 ;#100;
bcd = 4'b1000 ;#100;
bcd = 4'b1001 ;#100;
#100;

end // end of initial block .
endmodule
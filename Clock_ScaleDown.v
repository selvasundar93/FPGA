// Verilog program to scaledown clock from 100 Mhz to 1 Hz
module Try33(
input clk,
output reg LED
    );
reg LDR=1'b0;
reg en=1'b0;
reg [26:0]cnt = 27'd0;
always @(posedge clk)
begin
cnt <= cnt+27'd1;
if (cnt <= 27'h5F5E100)
begin
en <= 1'b0;
end
else 
begin
en <= 1'b1;
cnt <= 27'd0;
end
end
always @(posedge en)
begin
LDR = !LDR;
LED = LDR;
end
endmodule

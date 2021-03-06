module CPU_Cycle(clk,Reset,Set_FI,Set_DST,Set_SRC,Set_EXC,Set_INT,FI,DST,SRC,EXC,INT);
input clk,Reset,Set_FI,Set_DST,Set_SRC,Set_EXC,Set_INT;
output reg FI = 1,DST,SRC,EXC,INT;

always @ (negedge clk)
begin
	if(Reset)
	{FI,DST,SRC,EXC,INT} = 5'b10000;
	else if (Set_INT)
	{FI,DST,SRC,EXC,INT} = 5'b00001;
	else if (Set_EXC)
	{FI,DST,SRC,EXC,INT} = 5'b00010;
	else if (Set_SRC)
	{FI,DST,SRC,EXC,INT} = 5'b00100;
	else if (Set_DST)
	{FI,DST,SRC,EXC,INT} = 5'b01000;
	else if (Set_FI)
	{FI,DST,SRC,EXC,INT} = 5'b10000;
	else
	{FI,DST,SRC,EXC,INT} = {FI,DST,SRC,EXC,INT};
end

endmodule
	
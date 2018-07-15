module MY_REG(
input [15:0]DATA,
input RE,WE,WB,AX,BX,CX,DX,AH,BH,CH,DH,AL,BL,CL,DL,SP,BP,SI,DI,IP,
input reset,
output reg [15:0]Rout
);

reg [15:0] Reg_AX,Reg_BX,Reg_CX,Reg_DX,Reg_SP,Reg_BP,Reg_SI,Reg_DI,Reg_IP;

always @ (posedge WE or posedge reset)
begin
	if (reset)
		{Reg_AX,Reg_BX,Reg_CX,Reg_DX,Reg_SP,Reg_BP,Reg_SI,Reg_DI,Reg_IP} = 0;
	else if(WB)
		case ({AX,BX,CX,DX,AH,BH,CH,DH,AL,BL,CL,DL,SP,BP,SI,DI,IP})
			17'b0000_0000_0000_0000_1: Reg_IP = DATA;
			17'b0000_0000_0000_0001_0: Reg_DI = DATA;
			17'b0000_0000_0000_0010_0: Reg_SI = DATA;
			17'b0000_0000_0000_0100_0: Reg_BP = DATA;
			17'b0000_0000_0000_1000_0: Reg_SP = DATA;
			17'b0000_0000_0001_0000_0: Reg_DX[7:0] = DATA[15:8];
			17'b0000_0000_0010_0000_0: Reg_CX[7:0] = DATA[15:8];
			17'b0000_0000_0100_0000_0: Reg_BX[7:0] = DATA[15:8];
			17'b0000_0000_1000_0000_0: Reg_AX[7:0] = DATA[15:8];
			17'b0000_0001_0000_0000_0: Reg_DX[15:8] = DATA[15:8];
			17'b0000_0010_0000_0000_0: Reg_CX[15:8] = DATA[15:8];
			17'b0000_0100_0000_0000_0: Reg_BX[15:8] = DATA[15:8];
			17'b0000_1000_0000_0000_0: Reg_AX[15:8] = DATA[15:8];
			17'b0001_0000_0000_0000_0: Reg_DX = DATA;
			17'b0010_0000_0000_0000_0: Reg_CX = DATA;
			17'b0100_0000_0000_0000_0: Reg_BX = DATA;
			17'b1000_0000_0000_0000_0: Reg_AX = DATA;
			default;
		endcase
	else 
		case ({AX,BX,CX,DX,AH,BH,CH,DH,AL,BL,CL,DL,SP,BP,SI,DI,IP})
			17'b0000_0000_0000_0000_1: Reg_IP = DATA;
			17'b0000_0000_0000_0001_0: Reg_DI = DATA;
			17'b0000_0000_0000_0010_0: Reg_SI = DATA;
			17'b0000_0000_0000_0100_0: Reg_BP = DATA;
			17'b0000_0000_0000_1000_0: Reg_SP = DATA;
			17'b0000_0000_0001_0000_0: Reg_DX[7:0] = DATA[7:0];
			17'b0000_0000_0010_0000_0: Reg_CX[7:0] = DATA[7:0];
			17'b0000_0000_0100_0000_0: Reg_BX[7:0] = DATA[7:0];
			17'b0000_0000_1000_0000_0: Reg_AX[7:0] = DATA[7:0];
			17'b0000_0001_0000_0000_0: Reg_DX[15:8] = DATA[7:0];
			17'b0000_0010_0000_0000_0: Reg_CX[15:8] = DATA[7:0];
			17'b0000_0100_0000_0000_0: Reg_BX[15:8] = DATA[7:0];
			17'b0000_1000_0000_0000_0: Reg_AX[15:8] = DATA[7:0];
			17'b0001_0000_0000_0000_0: Reg_DX = DATA;
			17'b0010_0000_0000_0000_0: Reg_CX = DATA;
			17'b0100_0000_0000_0000_0: Reg_BX = DATA;
			17'b1000_0000_0000_0000_0: Reg_AX = DATA;
			default;
		endcase
end

always @ (posedge RE)
begin
	if(WB)
		case ({AX,BX,CX,DX,AH,BH,CH,DH,AL,BL,CL,DL,SP,BP,SI,DI,IP})
			17'b0000_0000_0000_0000_1: Rout = Reg_IP;
			17'b0000_0000_0000_0001_0: Rout = Reg_DI;
			17'b0000_0000_0000_0010_0: Rout = Reg_SI;
			17'b0000_0000_0000_0100_0: Rout = Reg_BP;
			17'b0000_0000_0000_1000_0: Rout = Reg_SP;
			17'b0000_0000_0001_0000_0: Rout[15:8] = Reg_DX[7:0];
			17'b0000_0000_0010_0000_0: Rout[15:8] = Reg_CX[7:0];
			17'b0000_0000_0100_0000_0: Rout[15:8] = Reg_BX[7:0];
			17'b0000_0000_1000_0000_0: Rout[15:8] = Reg_AX[7:0];
			17'b0000_0001_0000_0000_0: Rout[15:8] = Reg_DX[15:8];
			17'b0000_0010_0000_0000_0: Rout[15:8] = Reg_CX[15:8];
			17'b0000_0100_0000_0000_0: Rout[15:8] = Reg_BX[15:8];
			17'b0000_1000_0000_0000_0: Rout[15:8] = Reg_AX[15:8];
			17'b0001_0000_0000_0000_0: Rout = Reg_DX;
			17'b0010_0000_0000_0000_0: Rout = Reg_CX;
			17'b0100_0000_0000_0000_0: Rout = Reg_BX;
			17'b1000_0000_0000_0000_0: Rout = Reg_AX;
			default;
		endcase
	else 
		case ({AX,BX,CX,DX,AH,BH,CH,DH,AL,BL,CL,DL,SP,BP,SI,DI,IP})
			17'b0000_0000_0000_0000_1: Rout = Reg_IP;
			17'b0000_0000_0000_0001_0: Rout = Reg_DI;
			17'b0000_0000_0000_0010_0: Rout = Reg_SI;
			17'b0000_0000_0000_0100_0: Rout = Reg_BP;
			17'b0000_0000_0000_1000_0: Rout = Reg_SP;
			17'b0000_0000_0001_0000_0: Rout = Reg_DX[7:0];
			17'b0000_0000_0010_0000_0: Rout = Reg_CX[7:0];
			17'b0000_0000_0100_0000_0: Rout = Reg_BX[7:0];
			17'b0000_0000_1000_0000_0: Rout = Reg_AX[7:0];
			17'b0000_0001_0000_0000_0: Rout = Reg_DX[15:8];
			17'b0000_0010_0000_0000_0: Rout = Reg_CX[15:8];
			17'b0000_0100_0000_0000_0: Rout = Reg_BX[15:8];
			17'b0000_1000_0000_0000_0: Rout = Reg_AX[15:8];
			17'b0001_0000_0000_0000_0: Rout = Reg_DX;
			17'b0010_0000_0000_0000_0: Rout = Reg_CX;
			17'b0100_0000_0000_0000_0: Rout = Reg_BX;
			17'b1000_0000_0000_0000_0: Rout = Reg_AX;
			default;
		endcase
end

endmodule

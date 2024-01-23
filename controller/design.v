
module controller (input [2:0] phase, opcode, 
                  input zero,
                   output reg sel,rd,ld_ir,halt,inc_pc,
                   ld_ac,wr,ld_pc,data_e
                  );
  localparam integer HLT=0,SKZ=1,ADD=2,AND=3,XOR=4,LDA=5,ST=6,JM=7 ;
   
  reg HALT,ALUOP,JMP,SKZ_ZERO,STO;
  always @ (*)
    
  
    begin
      HALT = (opcode == HLT);
	  ALUOP = (opcode == ADD || opcode == AND || opcode == XOR ||opcode == LDA );
      SKZ_ZERO = (opcode == SKZ && zero);
      JMP= (opcode==JM);
      STO= (opcode==ST);
      
      case (phase)
        3'b000 : begin sel=1;rd=0;ld_ir=0;halt=0;inc_pc=0;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b001 : begin sel=1;rd=1;ld_ir=0;halt=0;inc_pc=0;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b010 : begin sel=1;rd=1;ld_ir=1;halt=0;inc_pc=0;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b011 : begin sel=1;rd=1;ld_ir=1;halt=0;inc_pc=0;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b100 : begin sel=0;rd=0;ld_ir=0;halt=HALT;inc_pc=1;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b101 : begin sel=0;rd=ALUOP;ld_ir=0;halt=0;inc_pc=0;ld_ac=0;ld_pc=0;wr=0;data_e=0; end
        3'b110 : begin sel=0;rd=ALUOP;ld_ir=0;halt=0;inc_pc=SKZ_ZERO;ld_ac=0;ld_pc=JMP;wr=0;data_e=STO; end
        3'b111 : begin sel=0;rd=ALUOP;ld_ir=0;halt=0;inc_pc=0;ld_ac=ALUOP;ld_pc=JMP;wr=STO;data_e=STO; end
      endcase
      
    end
  
  
endmodule

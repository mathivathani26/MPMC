		OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1  DB 'HELLO'
LEN   DB 05H
COUNT DB 00H
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
		MOV AX, DATA
		MOV DS, AX
		LEA SI, STR1
		MOV CL, LEN
		MOV BL, 00H     
L1:                 
		MOV AL, [SI]
		CMP AL, 'A'
		JE  L2
		CMP AL, 'E'
		JE  L2
        CMP AL, 'I'
		JE  L2
		CMP AL, 'O'
		JE  L2
		CMP AL, 'U'
		JE  L2
		JMP L3          
L2:                 
		INC BL
L3:                 
		INC SI
		DEC CL
		JNZ L1
		MOV COUNT, BL
		HLT
CODE ENDS
END



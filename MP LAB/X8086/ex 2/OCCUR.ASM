	OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
STR1   DB 'HELLO'
LEN    DB 05H
KEY    DB 'E'
COUNT  DB 00H
DATA ENDS
CODE SEGMENT
	ASSUME CS:CODE, DS:DATA, ES:DATA
		MOV AX, DATA
		MOV DS, AX
		MOV ES, AX      
		LEA DI, STR1    
		MOV CL, LEN
		MOV BL, 00H     
		MOV AL, KEY     
		CLD             
L1:
		SCASB         
		JNZ L2          
		INC BL 
		
L2:
		DEC CL         
		JNZ L1
		MOV COUNT, BL
		HLT
CODE ENDS
END 



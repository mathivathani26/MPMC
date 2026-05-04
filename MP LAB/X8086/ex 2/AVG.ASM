        OUTPUT 2500AD
.ORG 2000H
DATA SEGMENT
NUMBERS DB 1H,2H,3H,4H,5H,6H,7H,8H,9H,10H
COUNT   DB 0AH         
SUM     DW 0000H
AVG     DB 00H
DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
    MOV AX,DATA
    MOV DS,AX
    LEA SI,NUMBERS      
    MOV CX,0AH         
    MOV AX,0000H        
L1:
    ADD AL,[SI]         
    ADC AH,00H         
    INC SI
    LOOP L1
    MOV SUM,AX
	MOV AX,SUM
    MOV BL,0AH          
    DIV BL            
    MOV AVG,AL 
    HLT        
CODE ENDS
END



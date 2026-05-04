.ORG 8000H
START:
    MOV DPTR,#9000H
    MOVX A,@DPTR        
    MOV R1,A            
    ANL A,#07H
    MOV R2,A
    MOV A,R1
    ANL A,#38H
    RR A
    RR A
    RR A
    ANL A,#07H          
    MOV R3,A
    MOV A,R3
    ANL A,#0FH          
    SWAP A                 
    ORL A,R2           
    INC DPTR            
    MOVX @DPTR,A
END
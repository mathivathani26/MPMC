.ORG 8000H
START:
    MOV R4,#00H    
    MOV R5,#00H    
    MOV DPTR,#9000H
    MOVX A,@DPTR
    MOV B,A        
    MUL AB         
    MOV R0,A      
    MOV R1,B     
    INC DPTR
    MOVX A,@DPTR
    MOV B,A        
    MUL AB      
    MOV R2,A       
    MOV R3,B      
    MOV A,R0       
    CLR C
    SUBB A,R2     
    MOV R6,A       
    MOV A,R1       
    SUBB A,R3      
    MOV R7,A       
    JNC NO_BORROW
    INC R4         
NO_BORROW:
	INC DPTR
    MOV A,R6
    MOVX @DPTR,A   
    INC DPTR
    MOV A,R7
    MOVX @DPTR,A   
    INC DPTR
    MOV A,R4
    MOVX @DPTR,A   
END
    
	
	
DATA SEGMENT
    STRING1 DB "LOLOL"  
    EQUALS DB 01H
    DATA ENDS

EXTRA SEGMENT
    STRING2 DB 05 DUP (?)
    EXTRA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA,ES:EXTRA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,EXTRA
    MOV ES,AX
    
    LEA SI, STRING1
    LEA DI, STRING2+04H
    MOV CX,005H
    BACK:
        CLD
        LODSB
        STD
        STOSB
        LOOP BACK
                     
                    
    MOV CX,04H
    MOV BX,00H      
           
    BACK2:       
        INC BX
        MOV AL,[BX]
        MOV AH,ES:[BX]
        CMP AL,AH
        JE SKIP     
        MOV EQUALS,0H
    SKIP:LOOP BACK2 
    
         
    INT 21H
    CODE ENDS
END START
; 16 BIT UNSIGNED ADDITON  

DATA SEGMENT 
    X DW 0FFAAH    
    Z DW 0AAFAH
    SUM DW ?
    CARRY DB 00H 
    DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE, DS:DATA 
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,X   
    ADD AX,Z
    JNC SKIP 
    INC CARRY
    SKIP: MOV SUM, AX
    MOV AH,4CH
    INT 21H
    ; INT 03H 
    CODE ENDS 
END START 
                                  
                                  
                                  

DATA SEGMENT
     X DB 0CFH
     Z DB 0A5H 
     SUM DB ?
     CARRY DB 00H 
     DATA ENDS 

CODE SEGMENT 
    ASSUME CS:CODE,DS:DATA 
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AL,X
    ADD AL,Z
    JNC SKIP 
    INC CARRY
    SKIP:MOV SUM,AL  
    MOV AH, 4CH 
    INT 21H
     ;INT 03Hh
     CODE ENDS 
END START 
    

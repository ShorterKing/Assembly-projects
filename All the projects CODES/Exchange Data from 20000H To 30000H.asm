CODE SEGMENT   
    START:
    ASSUME CS:CODE
    MOV AX,2000H
    MOV DS,AX
    MOV AX,3000H
    MOV ES,AX 
    MOV [0000H],024H
    MOV [0001H],0B4H
    MOV [0002H],0C2H
    MOV [0003H],0C4H
    MOV [0004H],02BH
    MOV [0005H],0E2H
    MOV [0006H],029H
    MOV [0007H],0EAH     
    MOV ES:[0000H],0A4H
    MOV ES:[0001H],0E2H
    MOV ES:[0002H],04AH
    MOV ES:[0003H],023H
    MOV ES:[0004H],06AH
    MOV ES:[0005H],078H
    MOV ES:[0006H],0FAH
    MOV ES:[0007H],0EFH     
    MOV AX,4000H
    MOV ES,AX             
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,08H
    CLD
    REP MOVSB      
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,08H                   
    MOV AX,3000H
    MOV DS, AX
    MOV AX,2000H
    MOV ES, AX 
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,08H
    CLD
    REP MOVSB 
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,08H    
    MOV AX,4000H
    MOV DS, AX
    MOV AX,3000H
    MOV ES, AX 
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,08H
    CLD
    REP MOVSB  
    MOV AH,4CH
    INT 21H  
    CODE ENDS
END START


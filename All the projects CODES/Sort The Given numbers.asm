CODE SEGMENT
       ASSUME CS:CODE
       START:
       MOV AX,2000H
       MOV DS,AX
       MOV [0000H],01H
       MOV [0001H],02H
       MOV [0002H],03H
       MOV [0003H],04H
       MOV [0004H],05H   
       MOV [0005H],06H
       MOV [0006H],07H
       MOV [0007H],08H
       MOV [0008H],09H  
       MOV [0009H],0AH             
       MOV CH,08H
BACK2: MOV CL,08H
       MOV SI,0000H
BACK1: MOV AL,[SI]
       MOV AH,[SI+1]
       CMP AL,AH
       JC SKIP
       JZ SKIP
       MOV [SI+1],AL
       MOV [SI],AH
SKIP:  INC SI
       DEC CL
       JNZ BACK1
       DEC CH
       JNZ BACK2    
       MOV AH,4CH
       INT 21H   
    CODE ENDS
END START
    
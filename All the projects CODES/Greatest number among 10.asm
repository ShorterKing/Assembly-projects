CODE SEGMENT
          ASSUME CS:CODE 
          START:
          MOV AX,2000H
          MOV DS,AX
          MOV [0000H],011H
          MOV [0001H],05BH
          MOV [0002H],0AAH
          MOV [0003H],0A2H
          MOV [0004H],0FEH
          MOV [0005H],0ABH
          MOV [0006H],0AEH
          MOV [0007H],0BFH
          MOV [0008H],0EFH
          MOV [0009H],0FFH
          MOV [000AH],0AFH
          MOV CH,00H
          MOV SI,0000H
          MOV CL,[SI]
          INC SI
          MOV AL,[SI]
          INC SI
  TY:     CMP AL, [SI]
          JNC SKIP
          MOV AL, [SI]  
          SKIP:   INC SI  
          LOOP TY      
          MOV [SI], AL
          MOV AH,4CH 
          INT 21H    
          CODE ENDS
END START
          
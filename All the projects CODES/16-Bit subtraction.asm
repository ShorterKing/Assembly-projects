;16 bit subtractioN
DATA SEGMENT
    A DW 0BAFAH
    B DW 0FAFFH
    DIFF DW ?
    BORROW DB 00H 
    DATA ENDS   

CODE SEGMENT
          ASSUME CS:CODE DS:DATA
          START:
          MOV AX,DATA
          MOV DS,AX
          MOV AX,A
          SUB AX,B
          JNC SKIP
          INC BORROW
          SKIP:MOV DIFF,AX
          MOV AH,4CH
          INT 21H
          CODE ENDS
END START

.model small

 .data
 s     db "                           QUIZ                     ","$"
 M     db " Enter the answer capital letter click on shift & small letter","$"
 C     DB 0ah,0dh ,"Choose the correct answer: ","$"
 mes1  db 0ah,0dh ,"1-How many words we need to store 0534h in memory.","$"
 mes2  db 0ah,0dh ," A)1   B)4   C)8   D)2 ","$"  
 mes3  db 0ah,0dh ," 2-A Borland Turbo Assembler.","$"
 mes4  db 0ah,0dh ," A)nasm   B)tasm   C) gas   D)asm","$" 
 mes5  db 0ah,0dh ," 3- Which of the following is a 16-bit register."," $"
 mes6  db 0ah,0dh ," A)AL   B)AX   C)AH   D)All of the mentioned","$"
 mes7  db 0ah,0dh ," 4-The index register is to hold ","$"
 mes8  db 0ah,0dh ," A)SegmentMemory   B)OffsetMemory   C)OffsetAddress   D)SegmentAddress","$"
 mes9  db 0ah,0dh , "5-.......used to execute program instruction by instruction ","$" 
 mes10 db 0ah,0dh ," A)R   B)D    C)T   D)E ","$"
 mes11 db 0ah,0dh ," 6-Debug has a single step mode allows you to execute one instruction at a time.","$"
 mes12 db 0ah,0dh ," A)true   B)false ","$" 
 mes13 db 0ah,0dh ," 7-To display string on the screen write :","$"
 mes14 db 0ah,0dh ," A)INT 21H,MOV AH 09  B)INT 21H,MOV AH 02 C)INT 21H,MOV AH 01 D)None of them ","$" 
 mes15 db 0ah,0dh ," 8-......Command is used to execute through the whole interrupt routine","$"
 mes16 db 0ah,0dh ," A)A   B)P     C)R   D)U ","$" 
 mes17 db 0ah,0dh ," 9-Code Segment couldnot contain many procedures.","$"          
 mes18 db 0ah,0dh ," A)True   B)false      ","$"   
 mes19 db 0ah,0dh , "Exam finished ","$"
 mes20 db 0ah,0dh ,"your result is :","$"
 R     DB 0
 ln    db 0ah,0dh,"$"
  
 
 
.code 

       RES PROC NEAR
       INC BH
       RET
       
       RES ENDP

  main proc far
       mov ax,@data
       mov ds,ax
  
       MOV BH,R 
      
       lea dx,s
       mov ah,09H
       int 21h  
  
       lea dx,ln
       mov ah ,09h
       int 21h
       
       lea dx,M
       mov ah,09H
       int 21h  
  
       lea dx,ln
       mov ah ,09h
       int 21h
       
       lea dx,c
       mov ah,09H
       int 21h   
       
       lea dx,ln
       mov ah ,09h
       int 21h
  
      ;mov CL,R
      
       LEA DX,mes1 
       mov ah,09H
       int 21h  
  
       LEA DX,mes2 
       mov ah,09H
       int 21h  
  
       lea dx,ln
       mov ah ,09h
       int 21h
   
    
       mov ah,10h
       int 16h
     
     ; MOV DL,AL
     ; MOV AH,02H
     ; INT 21H
   
       mov bl, 44h
       cmp al,bL 
       JNE L2
       CALL RES
         
       L2:
      
       LEA DX,mes3
       mov ah,09H
       int 21h  
  
       LEA DX,mes4 
       mov ah,09H
       int 21h  
  
      
       lea dx,ln
       mov ah ,09h
       int 21h
   
    
       mov ah,10h
       int 16h
  
       mov bl, 42h
       cmp al,bl
       JNE L3
       CALL RES
       
       L3:
   
       LEA DX,mes5
       mov ah,09H
       int 21h  
  
       LEA DX,mes6 
       mov ah,09H
       int 21h  
  
       lea dx,ln
       mov ah ,09h
       int 21h
   
       mov ah,10h
       int 16h
  
       mov bl, 42h
       cmp al,bl
       JNE L4
       CALL RES
       
       L4:
       LEA DX,mes7 
       mov ah,09H
       int 21h  
  
       LEA DX,mes8 
       mov ah,09H
       int 21h  
       
       
       lea dx,ln
       mov ah ,09h
       int 21h
   
    
       mov ah,10h
       int 16h
  
       mov bl, 43h
       cmp al,bl
       JNE L5
       CALL RES
       
       L5:
       LEA DX,mes9 
       mov ah,09H
       int 21h
  
       LEA DX,mes10 
       mov ah,09h
       int 21h
       
       lea dx,ln
       mov ah ,09h
       int 21h
   
    
       mov ah,10h
       int 16h
  
       mov bl, 43h
       cmp al,bl
       JNE L6
       CALL RES
       
       
       L6:
       
       LEA DX,mes11 
       mov ah,09h
       int 21h  
   
       LEA DX,mes12 
       mov ah,09H
       int 21h 
      
       lea dx,ln
       mov ah ,09h
       int 21h
   
       mov ah,10h
       int 16h
  
       mov bl, 41h
       cmp al,bl
       JNE L7
       CALL RES
       
       L7:
       
       LEA DX,mes13 
       mov ah,09H
       int 21h  
    
       LEA DX,mes14 
       mov ah,09H
       int 21h 
       
       
       lea dx,ln
       mov ah ,09h
       int 21h
   
    
       mov ah,10h
       int 16h
  
       mov bl, 41h
       cmp al,bl
       JNE L8
       CALL RES
      
       L8:
       LEA DX,mes15 
       mov ah,09H
       int 21h  
    
       LEA DX,mes16 
       mov ah,09H
       int 21h  
    
       lea dx,ln
       mov ah ,09h
       int 21h
   
       mov ah,10h
       int 16h
  
       mov bl, 42h
       cmp al,bl
       JNE L9
       CALL RES
       
       
       L9:
       LEA DX,mes17 
       mov ah,09H
       int 21h  
    
       LEA DX,mes18 
       mov ah,09H
       int 21h  
   
    
       lea dx,ln
       mov ah ,09h
       int 21h
   
       mov ah,10h
       int 16h
  
       mov bl, 42h
       cmp al,bl
       JNE E
       CALL RES
       
      
       E:
       
    
       LEA DX,mes19
       mov ah,09h
       int 21h
      
       
       lea DX,mes20
       MOV AH,09H
       INT 21H
      
       ;mov dl,32h
       ;mov ah,02h
       ; int 21h
       
      
       
       mov Dl,BH
       ADD DL,30H
       mov ah,02h
       int 21h
              
      .exit
   main endp
   end main
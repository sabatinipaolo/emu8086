; multi-segment executable file template.

;segmento dei dati 
data segment   

    area db 01,00,00,01,00,01,01,00,01,01
    enne_uno db 0
    enne_zero db 0 
    
ends               



;segmento dello stack (vedremo piu' avanti)
stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers: queste righe vanno sempre inserite 
    mov ax, data
    mov ds, ax
    mov es, ax
               
    mov ax, 0000h 
    mov cx, 0000h

;         

; aprire la vista della memoria 
; che punta al segmento dei dati 
; osservarne il contenuto 
;
    
    mov di,  0          
    mov ch , 0
 
ciclo: 

    
    cmp [di], 1      ; confronta [di] con i
    jne then         ; se non sono uguali salta a then 
    
if_part: 
    
    inc enne_uno 
    jmp if_end       ; questo salto serve a saltare la parte then
    
then: 
    inc enne_zero    

if_end:       
    
    
    inc di            ; come nel sorgente precedente 
    
    inc ch 
    
    cmp ch,10 
    
    jnz ciclo
    
    
   ; nella variabile enne_uno cosa c'e' ?
    
    hlt 


ends

end start ; set entry point and stop the assembler.

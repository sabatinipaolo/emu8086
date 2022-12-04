; multi-segment executable file template.

;segmento dei dati 
data segment   

    area db 01,01,01,01,01,01,01,01,01,01 
    
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
    
    mov [di], 0       ; se non sai cosa fa questa istruzione ripassa
                      ; i sorgenti 010 e 020 ...   
    inc di 
    
    inc ch 
    
    cmp ch,10 
    
    jnz ciclo
    
    

    
    hlt 


ends

end start ; set entry point and stop the assembler.

; multi-segment executable file template.

;segmento dei dati 
data segment
    
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
               
;le operazioni "logiche" sono operazioni "aritmetiche"
;che usano l'algebra binaria 
; condizionano i flag !!


    mov ah, 0FFh
    mov bh, 0FFh
    
    and ah,bh     ; fa l'and "bit a bit" e il risultato lo 
                  ; mette in ah
                  ;
                  ;        ah = 0FFh = 11111111
                  ;        bh = 0FFh = 11111111 
                  ; ah AND bh = 0FFh = 11111111
    
    mov ah, 08Ah
    mov bh, 013h
    
    and ah,bh     ; fa l'and "bit a bit" e il risultato lo 
                  ; mette in ah
                  ;
                  ;        ah = 08Ah = 10001010
                  ;        bh = 013h = 00010011 
                  ;      ah AND bh   = 00000010 = 02Ah
                  
    
                  
    mov ah, 08Ah
    mov bh, 013h
    
    or  ah,bh     ; fa l'or "bit a bit" e il risultato lo 
                  ; mette in ah
                  ;
                  ;        ah = 08Ah = 10001010
                  ;        bh = 013h = 00010011 
                  ;      ah AND bh   = 10011011 = 09Bh  
                  


; l'and logico risulta utile per testare i singoli bit
; esempio voglio vedere se il 3 bit di un registro sia 1 o 0
; allora faccio l'and con un valore che "maschera" gli altri bit 
; e "filtra" solo il 3 bit ...
; 4 in binario = 00000100 

    mov ah, 05Ah  ; come e' il terzo bit ?
    
    and ah, 04h   ;        ah=05Ah = 01011010
                  ;            04h = 00000100
                  ; ah and 04h     = 00000000 = 0
                  ;
                  ; il risultato e' 0 perchè il risultato dell'and e' 0
                  

    mov ah, 07Eh  ; come e' il terzo bit ?
    
    and ah, 04h   ;        ah=05Ah = 00111110
                  ;            04h = 00000100
                  ; ah and 04h     = 00000100 = 04h
                  ;
                  ; il risultato e'<> 0 perche' il risultato dell'and e'<> 0
                                 
                  
    ; e cosi' via .....   
    
    
    HLT

ends

end start ; set entry point and stop the assembler.

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
               
    mov ax, 0000h 
    mov cx, 0000h

; i programmi sono sequenze di istruzioni
; ma il flusso dell'esecuzione non e' sempre lineare
; a volte occorre saltare dei pezzi di codice 
; questo si ottiene con le istruzioni di "salto" 
; Il processore usa un registro particolare per 
; memorizzare l'indirizzo dell'istruzione da eseguire.
;
;    IP = Instruction Pointer  
;
; quando eseguite un programma osservare 
; come cambia il suo valore



    mov ah, 00
    inc ah 
    
    jnz indirizzo  ; modifica il registro IP
                   ; in modo la successiva 
                   ; istruzione da eseguire 
                   ; sia quella contrassegnata 
                   ; dalla "label" indirizzo 
    
    inc ah
    inc ah
    inc ah         ; questo gruppo di istruzioni
    inc ah         ; non verranno eseguite

indirizzo:
    add ah,2 ;     
    
    sub ah,2  
    
    ; cosa succedera' alla prossima istruzione?
    
    jz indirizzo
 
 
; l'istruzione JMP e' detta di salto incondizionato
                   
   
    hlt  ; ferma il programma

ends

end start ; set entry point and stop the assembler.

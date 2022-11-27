; multi-segment executable file template.

;segmento dei dati 
data segment
    dato1       db 02h
    dato2       db 03h
    variabile1  db 05h
    variabile2  db 0Ah
    
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

; ogni volta che il processore esegue delle operazioni
; aritmetiche modifica il valore del registro dei flag
; (per vedere il valore dei flag nell'emulatore andare
;  su view/ flags)
;

    mov al , 07 
    sub al , 03   ; il flag ZF rimane 0 (risultato = 0 e' falso)
    sub al , 04   ; il flag ZF diventa 1 (risultato = 0 e' vero )
     
 

    mov ah, 0FFh   ; e' il valore piu' grande 

    add ah, 1      ; osservare che ah 
                   ; e' diventato 00
                   ; e il flag di carry (riporto) 1
                   
                   
    mov ah , 00    ; le istruzioni di movimento 
                   ; NON modificano i flag      
                   
    sub ah , 1     ; osservare che ah
                   ; e' diventato FF
                   ; e il flag SF (segno) 1  
                   
                   
                   
                   
                    
   
    hlt  ; ferma il programma

ends

end start ; set entry point and stop the assembler.

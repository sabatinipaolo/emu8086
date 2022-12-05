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
    
    jz indirizzo  ; JZ e' un'istruzione di salto condizionato
                  ; il processore salta a indirizzo
                  ; SE l'ultima istruzione ha dato un risultato 
                  ; uguale a zero 
                   
    inc ah        ; poiche' l'ultima istruzione ( inc ah ) 
    inc ah        ; ha prodotto un risultato <> 0 
    inc ah        ; questo gruppo di istruzioni
    inc ah        ; stavolta verranno eseguite 
    
    
    sub ah ,05
    
    jz indirizzo  ;l'ultima istruzione che risultato ha dato?   
    
    dec ah        ; 
    dec ah        ; queste non vengono eseguite 
    dec ah        ; 
    
    ; JZ e' un SALTO CONDIZIONATO il programma "salta" se precedentemente
    ; si è verificata una certa condizione ( es. risultato zero )
    ; per un elenco di salti vedere la foto allegata 
    

indirizzo:
                  
    mov bx , 0120h
   
    hlt  ; ferma il programma

ends


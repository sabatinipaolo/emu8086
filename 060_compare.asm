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

; nel sorgente precedente abbiamo 
; visto come verificare (e far prendere strade diverse al programma)
; se un numero e' = 0 o diverso 
;
; per verificare se due numeri sono uguali 
; in assembly si sfrutta l'equivalenza delle 
; due equazioni : 
;
;     x=y  <=>  x-y=0 

; esempio (apri la vista dei flag dal menu' view/flag ) , 

    mov ax, 0011h
    mov bx, 0022h 
    
    sub bx, ax    ; il flag Z diventa 0 

    mov ax, 0022h
    mov bx, 0022h 
    
    sub bx, ax    ; il flag Z diventa 1 
    
    
    ; cosi' possiamo capire se due numeri sono uguali o meno ...
    
    ; ma usando SUB roviniamo il contenuto originale del registro 
    ; e questo protremmo non volerlo 
    
    ; ora osserva questo gruppo di istruzioni e guarda il valore 
    ; di bx
    
    mov ax, 0011h
    mov bx, 0022h 
    
    cmp bx, ax    ; il flag Z diventa 0 

    mov ax, 0022h
    mov bx, 0022h 
    
    cmp bx, ax    ; il flag Z diventa 1 

    
       
; l'istruzione CMP fa la differenza, condiziona i FLAG 
; ma non rovina i dati implicati
;
; viene detta compare


ends

end start ; set entry point and stop the assembler.

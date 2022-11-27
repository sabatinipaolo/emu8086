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

;esempi di somme e sottrazioni con          
;vari tipi di indirizzamento dei dati
    
    ;indirizzamento IMMEDIATO
    ; il dato si trova subito dopo l'istruzione 
    
    add ah , 02   ; ah <- ah + 2
    add ah , 04   ; ah <- ah + 4
     
    sub ah , 03   ; ah <- ah - 3
    sub ah , 02   ; ah <- ah - 2     
    
    add ah , 1
    inc ah        ; questa istruzione e' equivalente a
                  ; quella sopra ma piu' performante                      
    
   
    sub ah , 01
    dec ah        ; questa istruzione e' equivalente a
                  ; quella sopra ma piu' performante                      
    
    ;con registri a 2 byte
    
    add ax ,010Ah
    add bx ,020Ah                      

    add si , 0003h  ; SI e' di due byte ..
    add si , 0012h 
        
     
     
    ;indirizzamento registro registro
    
    add ah , al     ;  ah <-  ah - al
     
     
     
    ; aprire una vista della memoria  che punti al segnemto dei dati
    ; guardare il valore del registro CS posizionare la finestra 
    ; al valore CS:00  (dovrebbe essere 0710:0000 ) e cliccare su 
    ; UPDATE   
    ;
    ; 
    
    ;indirizzamento DIRETTO
    ; ora e' l'indirizzo di memoria del dato che si trova 
    ; subito subito dopo l'istruzione 
    
    add ah , dato1 
    add al , dato2 
    add ch , variabile1 
    add cl , variabile2
    
    
    
    ; funziona anche nell'altro verso 
   
    add dato1 , cl
    add variabile2 , ah 
    
    
   
    ; indirizzamento INDIRETTO 
    ; ora l'indirizzo di memoria del dato 
    ; si trova in un registro 
    ; esempi: 
              
              
    add ch , [si] 
    add dh , [di] 


   
    hlt  ; ferma il programma

ends

end start ; set entry point and stop the assembler.

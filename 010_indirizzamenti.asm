; multi-segment executable file template.

;segmento dei dati 
data segment
    dato1       db 33h
    dato2       db 45h
    variabile1  db 5Ah
    variabile2  db 0Fh
ends               



;segmento dello stack (vedremo piu' avanti)
stack segment
    dw   128  dup(0)
ends

code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax


         
;esempi di indirizzamento dei dati
    
    ;indirizzamento IMMEDIATO
    ; il dato si trova subito dopo l'istruzione 
    
    mov ah , 09 
    mov al , 0Ah 
    mov ch , 22h 
    mov cl , 0Dh
    mov si , 0001h  ; SI e' di due byte ..
    mov di , 0002h  ; DI e' di due byte ..
    
    
    ;indirizzamento DIRETTO
    ; ora e' l'indirizzo di memoria del dato che si trova 
    ; subito subito dopo l'istruzione 
    
    mov ah , dato1 
    mov al , dato2 
    mov ch , variabile1 
    mov cl , variabile2
    
    
    
    ; funziona anche nell'altro verso 
   
    mov dato1 , cl
    mov variabile2 , ah 
    
    
    ;non funziona da memoria a memoria ...
    
    ; mov variabile1, variabile2  ; vorrei fare come in C var1=var2 ..
    
    ; come risolvere il problema?
    
    
    
    ; indirizzamento INDIRETTO 
    ; ora l'indirizzo di memoria del dato 
    ; si trova in un registro 
    ; esempi: 
              
              
    mov ch , [si] 
    mov dh , [di] 
    
     
   
   
   
   
   
    hlt
   
                     
                           
                           
   
   
     
ends

end start ; set entry point and stop the assembler.

; multi-segment executable file template.

data segment
    ; add your data here!

    numeri db 4, 7, 3, 3, 4, 7, 8, 10 ,9, 1
    
    numeri_pari db 0 ;
    

ends


code segment
start:
    ; set segment registers:
    
    mov ax, data    ; ora l'offset del segmento dei dati e' in ax
    mov ds, ax      ; ora e' in ds  (data segment)


    ; add your code here
            
    lea si, numeri ; ora dx "punta" alla variabile numeri pari
    
    
    mov ch, 10 
    
ciclo:  mov ah, [si]

        and ah, 01h
        
        jnz fine_if 
        
        inc numeri_pari;

  fine_if:

        inc si 
        dec ch
        jnz ciclo
        


        
        
        hlt 
ends

end start ; set entry point and stop the assembler.

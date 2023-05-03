; multi-segment executable file template.

data segment
    ; add your data here!  

    stringa db "io sono una sTRinGa e terminO con il carattere $"
    
    numero db 0

ends

; il programma deve contare il numero di maiuscole presenti in 
; stringa e memorizzarlo in numero



code segment
start:
    ; set segment registers:
    
    mov ax, data    ; ora l'indirizzo del segmento dei dati e' in ax
    mov ds, ax      ; ora e' in ds  (data segment)


    
    
    ; add your code here
            
    lea si, stringa ; ora dx "punta" alla "variabile" stringa    
    
; sviluppare il programma qui






        
        
    hlt 
ends

end start ; set entry point and stop the assembler.

; multi-segment executable file template.

data segment
    ; add your data here!  

    stringa db "io sono unA sTRinGa e terminO con il carattere $"

ends

; il programma deve sostituire le vocali presenti nella stringa 
; con il carattere *



code segment
start:
    ; set segment registers:
    
    mov ax, data    ; ora l'indirizzo del segmento dei dati e' in ax
    mov ds, ax      ; ora e' in ds  (data segment)


    
    
    ; add your code here
            
    lea si, stringa ; ora si "punta" alla "variabile" stringa    
    
; sviluppare il programma qui

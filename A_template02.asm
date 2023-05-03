; multi-segment executable file template.

data segment
    ; add your data here!  
    
    carattere db 's'

    stringa1 db "io sono una strinGa e termino Con il carattere $"
    stringa2 db "io sono una ALTRA stringa e termino con il carattere $"
    
    ris_confronto  db 0

ends


; il programma deve contare il numero di MAIUSCOLE nelle stringhe
; a fine esecuzione nella variabile ris_confronto ci deve essere
;   
;        0    se le stringhe hanno lo stesso numero di MAIUSCOLE
;        1    se la stringa1 due ha piu' MAIUSCOLE di stringa2
;       -1    se la stringa2 due ha piu' MAIUSCOLE di stringa1
;
; nel caso di esempio il valore di ris_confronto deve essere -1

code segment
start:
    ; set segment registers:
    
    mov ax, data    ; ora l'indirizzo del segmento dei dati e' in ax
    mov ds, ax      ; ora e' in ds  (data segment)

    
  
; sviluppare il programma qui







        
        
    hlt 
ends

end start ; set entry point and stop the assembler.

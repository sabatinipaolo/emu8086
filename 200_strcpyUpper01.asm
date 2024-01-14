; multi-segment executable file template.

data segment
    ; add your data here!
    stringa_sorgente     db "sono la stringa",0
    stringa_destinazione db "             ",0
    
ends



code segment
start:
; set segment registers:
    mov ax, data
    mov ds, ax
    mov es, ax


; add your code here
            
    lea si, stringa_sorgente 
    lea di, stringa_destinazione
    
    

while:
    mov ah, [si]
    cmp ah , 0 
    je fine_while
        
        mov [di], ah
        inc si
        inc di 
    
    jmp while
        
         
fine_while:
    mov [di], ah
    hlt
    
        
ends

end start ; set entry point and stop the assembler.

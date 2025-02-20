BITS 16               

mov ax, 0x7C0         
mov ds, ax            

mov ax, 0x7E0         
mov ss, ax            

mov sp, 0x2000        

call clearscreen      

push 0x0000           
call movecursor      

add sp, 2             

push msg              
call print            

add sp, 2             

cli                   
hlt                   


clearscreen:
    push bp           
    mov bp, sp        
    pusha             

    mov ah, 0x07      
    mov al, 0x00      
    mov bh, 0x07      
    mov cx, 0x00      
    mov dh, 0x18      
    mov dl, 0x4F      
    int 0x10          

    popa              
    mov sp, bp        
    pop bp            
    ret               

movecursor:
    push bp           
    mov bp, sp        
    pusha             

    mov dx, [bp+4]    
    mov ah, 0x02      
    mov bh, 0x00      
    int 0x10          

    popa              
    mov sp, bp        
    pop bp            
    ret               

print:
    push bp           
    mov bp, sp        
    pusha             

    mov si, [bp+4]    
    mov bh, 0x00      
    mov bl, 0x00      
    mov ah, 0x0E      
.char:
    mov al, [si]      
    add si, 1         
    or al, al         
    je .return        
    int 0x10          
    jmp .char         
.return:
    popa              
    mov sp, bp        
    pop bp            
    ret               

msg db "Assembly is fun", 0  

times 510 - ($ - $$) db 0    
dw 0xAA55                   

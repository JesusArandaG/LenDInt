.model small 
.stack
.data 
      msg db 10,13,'Hola mundo!!','$'

.code
    mov ax, @data   
    mov ds, ax        
    
    
    mov CL,5 ;registro CL lo usaremos como contador        
 while:        
      

    mov ah, 09h
    lea dx, msg
    int 21h
    
    dec CL ;decrementa 1   
    JNZ while ;while diferente a 0
    
end   
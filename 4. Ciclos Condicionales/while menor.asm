.model small 
.stack
.data 
      msg db 10,13,'Hola mundo!!','$'

.code
    mov ax, @data   
    mov ds, ax        
    
    
    mov CL,0 ;registro CL lo usaremos como contador        
 while:        
      

    mov ah, 09h
    lea dx, msg
    int 21h
    
    inc CL ;Incrementa por 1
    
    cmp CL,10 ;comparar  
    JB  while  ;While menor que 5
    
end   
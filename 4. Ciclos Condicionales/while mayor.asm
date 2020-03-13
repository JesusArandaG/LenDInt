.model small 
.stack
.data 
      msg db 10,13,'Hola mundo!!','$'

.code
    mov ax, @data   
    mov ds, ax        
    
    
    mov CL,10 ;registro CL lo usaremos como contador        
 while:        
      

    mov ah, 09h
    lea dx, msg
    int 21h
    
    dec CL ;decrementa por 1
    
    cmp CL,5 ;comparar  
    JNB  while  ;While mayor que 5
    
end   
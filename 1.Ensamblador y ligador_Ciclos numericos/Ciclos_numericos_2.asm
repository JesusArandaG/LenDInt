.model small
.stack
.data

.code
   
   mov cx,9;cantidad de veces a repetir
           
    
    ciclo: ;en el ciclo
       mov ah,02h  ;imprime el valor del contador
       mov dx,cx 
       add dx,30h
       int 21h 
       
    loop ciclo ;decrementar automaticamente
               ; y repetir el ciclo hasta el valor indicado

     .exit
end
; La instruccion jmp, representa al ciclo for de otros lenguajes
.model small  ;modelo del programa
.stack
.data
   
    cont db 0 ;contador
    msg db 10,13,'Hola Mundo!!!!','$';mensaje a imprimir

.code 
     mov ax,@data;movemos el segmento de datos al registro AX    
     mov ds,ax   ;movemos el contenido de AX al segmento de Datos
    
    ciclo:
        ;comparacion de la variable
        cmp cont,10 ;la etiqueta cmp sirve para comparar datos 
                    ;numericos entre si
         ; cuando el origen es igual al destino
        je salir
        
        ;imprimir cadena
        mov ah,09h
        lea dx,msg
        int 21h
            
        ;incrementa el contador en uno
        inc cont 
        
     ;uso del salto incondicional
     ;que dictamina a donde queremos dar el salto 
     jmp ciclo
     
     salir:
       .exit
end
          

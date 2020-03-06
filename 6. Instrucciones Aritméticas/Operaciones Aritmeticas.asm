.model small
.stack
.data       

    ;Variables a utilizar.
    
    num1 db 5
    num2 db 3
    
    suma db 0
    incremento db 0
    resta db 0
    decremento db 0
    multiplicacion db 0
    multiplicacion2 db 0
    division db 0
    residuo  db 0
    
    ;Mensajes para mostrar los resultados.     
    
    msjS db 10,13,"La suma es = $"
    msjInc db 10,13,10,13,"El incremento de la suma es = $"
    msjR db 10,13,10,13,"La resta = $"
    msjDec db 10,13,10,13,"El decremento de la resta es = $"
    msjM db 10,13,10,13,"La Multiplicacion es = $"
    msjD db 10,13,10,13,"La division es = $"
    msjRes  db 10,13,10,13,"El residuo es = $" 
    
.code                                         

    ;Movemos el segmento de datos al de codigo para poder trabajarlo.
    mov ax,@data
    mov ds,ax
    
    
    ;================Operaciones aritmeticas===============              
    
    ;Suma             
    mov al,num1
    add al,num2
    mov suma,al
    
    ;Incremento             
    mov al,suma
    inc al
    mov incremento,al  
    
    ;Resta
    mov al,num1
    sub al,num2
    mov resta,al
    
    ;Decremento             
    mov al,resta
    dec al
    mov decremento,al
    
    ;Multiplicacion
    mov al,num1
    mul num2
    aaa
    mov multiplicacion,ah
    mov multiplicacion2,al
    
    ;Division
    mov al,num1
    div num2
    mov division,al
    
    ;Residuo
    mov residuo,ah 
        
    
    ;====================Mostrar los resultados================
    
    ;Suma
    mov ah,09
    lea dx,msjS
    int 21h
    mov dl,suma
    add dl,30h 
    mov ah,02
    int 21h
    
    ;Incremento
    mov ah,09
    lea dx,msjInc
    int 21h
    mov dl,incremento
    add dl,30h 
    mov ah,02
    int 21h      
           
    ;Resta
    mov ah,09
    lea dx,msjR
    int 21h
    mov dl,resta
    add dl,30h 
    mov ah,02
    int 21h
    
    ;Decremento
    mov ah,09
    lea dx,msjDec
    int 21h
    mov dl,decremento
    add dl,30h 
    mov ah,02
    int 21h
    
    ;Multiplicacion
    mov ah,09
    lea dx,msjM
    int 21h
    mov dl,multiplicacion
    add dl,30h 
    mov ah,02
    int 21h
    mov dl,multiplicacion2
    add dl,30h 
    mov ah,02
    int 21h
    
    ;Division
    mov ah,09
    lea dx,msjD
    int 21h
    mov dl,division
    add dl,30h 
    mov ah,02
    int 21h 
       
    ;Residuo
    mov ah,09
    lea dx,msjRes
    int 21h
    mov dl,residuo
    add dl,30h 
    mov ah,02
    int 21h
                
  
    ;Cierre del programa
    mov ah,4ch
    int 21h
        
end
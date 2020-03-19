.model small
.stack
.data

    num1 db 3
    num2 db 8
    msj1 db 'Los numeros son iguales $'
    msj2 db 'El primero numero es mayor $'
    msj3 db 'El segundo numero es mayor $'
    
.code

    Main:
    mov ax, @data
    mov ds, ax   
    
    mov al, num1          
    
    ;modifica valores de las vanderas
    cmp al, num2
    
    jc mayor2
    jz igual
    jnz mayor1
    
    
.exit

igual:
    mov ah, 09h
    lea dx, msj1
    int 21h
.exit   

mayor1:
    mov ah, 09h
    lea dx, msj2
    int 21h
.exit

mayor2:
    mov ah, 09h
    lea dx, msj3
    int 21h
.exit

end
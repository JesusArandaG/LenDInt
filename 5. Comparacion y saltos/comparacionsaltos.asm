.model small
.stack
.data

edad dw 18     
msj1 db 10,13,'Es mayor de edad $'
msj2 db 10,13,'Es menor de edad $'      

.code
persona proc far
mov ax, @data
mov ds, ax

mov ax, edad
cmp ax, 18
jge mayor
jmp menor

mayor:
mov ah, 09
lea dx, msj1
int 21h
jmp fin

menor:
mov ah, 09
lea dx, msj2
int 21h

fin:
mov ah, 4ch
int 21h

persona endp
end


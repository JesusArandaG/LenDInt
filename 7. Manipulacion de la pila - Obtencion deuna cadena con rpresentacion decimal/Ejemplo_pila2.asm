.model small
.stack 256h

.data

mens db 'hola',0dh,0ah,'$'
mens2 db 'mundo',0dh,0ah,'$'

.code

inicio:

mov ax,@data
mov ds,ax
push ds
pop es

lea dx,mens
push dx ;colocar arreglo en la pila

sub dx,dx
mov ah,09h
lea dx,mens2
int 21h

sub dx,dx

pop dx ;sacar arreglo de la pila

mov ah,09h
int 21h

salir:
mov ax,4c00h
int 21h

end inicio
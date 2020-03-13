.model small
.stack
.data

cad1 db '1111', '$'
cad2 db '2222','$'
cad3 db '3333','$'
cad4 db '4444','$'

.code
.startup


lea si, cad4
lea di, cad1
push ES
mov AX, DS
mov ES,AX
mov cx,4
rep movsb



lea dx, cad1
mov ah, 09h
int 21h  

lea dx, cad2
mov ah, 09h
int 21h 

lea dx, cad3
mov ah, 09h
int 21h

lea dx, cad4
mov ah, 09h
int 21h

.exit
end
.model small
.data
    
    dato1 dw 10

.code

inicio:
    
    mov AX,1        ; AX=1
    mov BX,10       ; BX=10
    shl AX,1        ; AX=AX*2
    mov CX,3        ; Contador = 3
    shl AX,CL       ; AX=AX*8
    shr BX,1        ; BX=BX/2
    mov CX,2        
    shr BX,CL       ; BX=BX/4
    shl dato1,1     ; dato1=dato1*2
    mov AX,1        ; AX=1
    rol AX,1        ; Rota ax una vez
    mov BX,-10      ; BX=-10
    sal BX,1        ; BX=BX*2
    mov AX,4c00h    
    int 21h
end inicio
end
    
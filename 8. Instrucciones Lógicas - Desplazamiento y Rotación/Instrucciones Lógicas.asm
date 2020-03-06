.model samll
.stack 100h
.code

main proc 
                                 
    mov Bl, 110B
    AND Bl, 101B
            
    add bl, 30h
    
    mov ah, 2
    mov DL, BL
    int 21h
                   
    mov ah, 4ch
    int 21h            
    
    main endp
end main
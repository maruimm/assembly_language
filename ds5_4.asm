assume cs : code

code segment

    mov ax, 2000
    mov ds, ax
    mov al, ds : [0]
    mov bl, ds : [1]
    mov cl, ds : [2]
    mov dl, ds : [3]

    mov ax, 4c00h
    int 21h

code ends

end
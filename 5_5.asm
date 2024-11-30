assume cs : code

code segment

    mov ax, 0ffffh
    mov ds, ax
    mov cx, 0bh
    mov ax, 0
    mov bx, 0

s:  add al, [bx]
    add bx, 1
    loop s

    mov ax, 4c00h
    int 21h

code ends

end
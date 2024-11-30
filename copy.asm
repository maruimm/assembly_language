assume cs : code

code segment

    mov ax, 0ffffh
    mov ds, ax
    mov ax, 0020h
    mov es, ax

    mov cx, 0bh

s:  mov bx, cx
    mov dl, [bx]
    mov es : [bx], dl
    loop s

    mov bx, cx
    mov dl, [bx]
    mov es : [bx], dl

    mov ax, 4c00h
    int 21h

code ends

end
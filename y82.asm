assume cs : code
code segment

start:
    mov ax, 0b800h
    mov ds, ax
    mov ax, 0241h
    mov bx, 0
    mov [bx], ax

    mov ax, 4c00h
    int 21h
code ends
end start
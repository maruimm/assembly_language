assume cs:code, ds:data
data segment
    dw 1, 2, 3, 4, 5, 6, 7, 8
    dd 0, 0, 0, 0, 0, 0, 0, 0
data ends

code segment
start:
    mov cx, 8
    mov ax, data
    mov ds, ax
    mov si, 0
    mov bx, 16
s:
    mov ax, [si]
    call tri
    mov ds:[bx], ax
    mov ds:[bx].2, dx
    add si, 2
    add bx, 4
    loop s

    mov ax, 4c00h
    int 21h

tri:
    mov di, ax
    mul di
    mul di
    ret

code ends


end start
assume cs : code, ds : data

code segment

start:
    mov ax, data
    mov ds, ax
    mov si, 0
    mov cx, 4
s:  
    mov di, cx
    mov cx, 3
    mov bx, 0
    s0:
        mov al, [bx + si]
        and al, 11011111B
        mov [bx + si],al
        inc bx
    loop s0
    add si, 10h
    mov cx, di
    loop s

    mov ax, 4c00h
    int 21h

code ends

data segment

    db 'ibm.............'
    db 'dec.............'
    db 'dos.............'
    db 'vax.............'

data ends

end start

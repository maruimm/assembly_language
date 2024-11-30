assume cs : code, ds : data
data segment
    db 'conversion', 0
data ends

code segment

start:
    mov ax, data
    mov ds, ax
    mov bx, 0
s:
    mov cl, [bx]
    mov ch, 0
    jcxz ok
    and cx, 11011111b
    mov [bx], cl
    inc bx
    jmp s
ok:
    mov ax, 4c00h
    int 21h

code ends


end start
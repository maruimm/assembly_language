assume cs : code, ds : data
data segment
    db 'word', 0
    db 'unix', 0
    db 'wind', 0
    db 'good', 0
data ends

code segment

start:
    mov cx, 4
    mov ax, data
    mov ds, ax
    mov bx, 0
s:
    call capital
    add bx, 5
    loop s

    mov ax, 4c00h
    int 21h

capital:
    push cx
    push bx
s0:
    mov cl, [bx]
    mov ch, 0
    jcxz ok
    and cx, 11011111b
    mov [bx], cl
    inc bx
    jmp s0

ok:
    pop bx
    pop cx
    ret


code ends

end start
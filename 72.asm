assume cs : code, ds : data

data segment
    db 'welcome to masm!'
    db '................'
data ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov cx, 08h
    mov bx, 0
s:
    mov ax, [bx]
    mov [bx+10h], ax
    add bx, 2
    loop s

    mov ax, 4c00h
    int 21h

code ends

end start

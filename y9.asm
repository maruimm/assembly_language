assume cs : code, ds : data

data segment
    db 'welcome to masm!'
data ends
code segment
start:
    mov ax, 0b800h
    mov ds, ax
    mov cx, 16
    mov ax, data
    mov ss, ax
    mov si, 0
    mov bx, 160*10 + 80 - 16
s:
    mov al, ss:[si]
    mov byte ptr [bx], al
    mov byte ptr [bx].1, 10101100b
    add bx, 2
    inc si
    loop s

    mov ax, 4c00h
    int 21h
code ends

end start
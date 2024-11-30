assume cs : code, ds : data


code segment

start:
    mov cx, 5
    mov bx, 0
    mov ax, data
    mov ds, ax
s:
    mov al, [bx]
    and al, 11011111B
    mov [bx], al

    mov al, [bx+5]
    or al, 00100000B
    mov [bx+5], al
    inc bx
    loop s

    mov ax, 4c00h
    int 21h    

code ends


data segment
    db 'BaSiC'
    db 'MinIX'
data ends

end start
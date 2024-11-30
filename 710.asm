assume cs : code, ds : data

code segment

start:
    mov ax, data
    mov ds, ax
    mov cx, 6
    mov si, 0
s:
    mov al, [3 + si]
    and al, 11011111B
    mov [3 + si], al
    add si, 0eh
    loop s

    mov ax, 4c00h
    int 21h

code ends

data segment

    db '1. file       '
    db '2. edit       '
    db '3. search     '
    db '4. view       '
    db '5. options    '
    db '6. help       '

data ends

end start
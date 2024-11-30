assume cs:codeesg, ds:dataasg

dataasg segment
    db 'BaSiC'
    db 'iNfOrMaTiOn'
dataasg ends

codeesg segment
start:
    mov ax, dataasg
    mov ds, ax
    mov bx, 0
    mov cx, 5

s:  mov al, [bx]
    and al, 11011111B
    mov [bx], al
    inc bx
    loop s

    mov cx, 10
s0: mov al, [bx]
    or al, 00100000B
    mov [bx], al
    inc bx
    loop s0

    mov ax, 4c00h
    int 21h

codeesg ends

end start
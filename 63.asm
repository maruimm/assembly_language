assume cs : code

code segment
    dw 0123h, 0456h, 0789h, 0abch, 0defh, 0fedh, 0cbah, 0987h
    dw 0, 0, 0, 0, 0, 0, 0, 0,0, 0, 0, 0, 0, 0, 0, 0

start:


    mov ax, cs
    mov ss, ax
    mov sp, 30h

    mov cx, 8
    mov bx, 0
s:  push cs:[bx]
    add bx, 2
    loop s

    mov ax, 4c00h
    int 21h

code ends

end start
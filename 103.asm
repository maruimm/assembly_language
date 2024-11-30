assume cs : code
code segment
start:
    mov ax, 0
    mov sp, 16
    call s
    inc ax
    inc ax
s:
    pop ax
code ends
end start
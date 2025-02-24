assume cs:code

data segment
    db '1975', '1976', '1977', '1978', '1979', '1980', '1981', '1982'
    db '1983', '1984', '1985', '1986', '1987', '1988', '1989', '1990'
    db '1991', '1992', '1993', '1994', '1995'

    dd 16, 22, 382, 1356, 2390, 8000, 16000,24486, 50065, 97479, 140417, 197514
    dd 345980, 590827, 803530, 1183000, 1843000, 2759000, 3753000, 4649000, 5937000
    
    dw 3, 7, 9, 13, 28, 38, 130, 220, 476, 778, 1001, 1442, 2258, 2793, 4037, 5635, 8226
    dw 11542, 14430, 15257, 17800
data ends


table segment
    db 21 dup('year summ ne ?? ')
table ends

code segment

start:

    mov cx, 21
    mov ax, table
    mov ds, ax

    mov ax, data
    mov ss, ax
    mov si, 0
    mov di, 0
    mov bx, 0
s:
    mov ax, ss:[di].0
    mov [si].0, ax
    mov ax, ss:[di].2
    mov [si].2, ax

    mov ax, ss:[54h + di].0
    mov [si].5, ax
    mov ax, ss:[54h + di].2
    mov [si].7, ax

    mov ax, ss:[0a8h + bx].0
    mov [si].10, ax

    mov ax, [si].5
    mov dx, [si].7
    div word ptr [si].10

    mov [si].13, ax

    add di, 4
    add bx, 2
    add si, 10h
    loop s

    mov ax, 4c00h
    int 21h

code ends



end start
assume cs : codesement

codesement segment

    mov ax, 2
    add ax, ax
    add ax, ax

    mov ax, 4c00H
    int 21H

codesement ends

end
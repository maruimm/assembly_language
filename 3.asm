

assume  cs : multicode

multicode segment
    mov ax, 236
    mov cx, 123
s:  add ax, 236
    loop s
multicode ends

end

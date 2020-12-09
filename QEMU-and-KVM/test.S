.intel_syntax noprefix
.code16

start:
    mov al, 0x48
    mov dx, 0x233
    out dx, al
    mov al, 0x65
    out dx, al
    mov al, 0x6c
    out dx, al
    mov al, 0x6c
    out dx, al
    mov al, 0x6f
    out dx, al
    mov al, 0x0a
    out dx, al
    hlt

// AArch64 Linux
    .global _start

    .section .rodata
msg:
    .ascii "Hello, Wealth!\n"
len = . - msg

    .text
_start:
    mov x0, #1
    ldr x1, =msg
    mov x2, #len
    mov x8, #64
    svc #0

    mov x0, #0
    mov x8, #93
    svc #0

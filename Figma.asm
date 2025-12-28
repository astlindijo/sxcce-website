.section __TEXT,__text
.global _main
.extern _printf

_main:
    adrp    x0, message@PAGE
    add     x0, x0, message@PAGEOFF
    bl      _printf

    mov     x0, #0
    ret

.section __DATA,__data
message:
    .asciz  "Kali Linux !\n"


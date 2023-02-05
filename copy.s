.text
.global _main
.extern _puts
.extern _malloc
.extern _free
.extern _strcpy
_main: 
        stp     x29, x30, [sp, #-32]!
        mov     x29, sp
        str     x19, [x29, #16]
        mov     x0, 128
        bl      _malloc
        mov     x19, x0
        adr     x1, hello
        bl      _strcpy
        bl      _puts
        mov     x0, x19
        bl      _free
        mov     w0, wzr
        ldr     x19, [x29, #16]
        ldp     x29, x30, [sp], #32
        ret
.align 4
hello:
    .asciz   "Hello World!\n"

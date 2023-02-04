.text
.global _main
.extern _puts
_main: 
        stp     x29, x30, [sp, #-16]!           // 16-byte Folded Spill
        mov     x29, sp
        adr     x0, hello
        bl      _puts
        mov     w0, wzr
        ldp     x29, x30, [sp], #16             // 16-byte Folded Reload
        ret
.align 4
hello:
    .asciz   "Hello World!\n"

.text
.globl _start
_start:
    mov x1, #0x1a510000		// PL011 DR (Data Register) (0x00 offset)
    mov w0, 0x0a		// \n
    str w0, [x1]
    mov w0, 0x48		// 'H'
    str w0, [x1]
    mov w0, 0x45		// 'E'
    str w0, [x1]
    mov w0, 0x4c		// 'L'
    str w0, [x1]
    mov w0, 0x4c		// 'L'
    str w0, [x1]
    mov w0, 0x4f		// 'O'
    str w0, [x1]
    mov w0, 0x0a		// \n
    str w0, [x1]
_loop:
    b _loop

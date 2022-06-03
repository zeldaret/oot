#include "ultra64/asm.h"

.section .rodata

.balign 16

DATA(__libm_qnan_f)
    .word 0x7F810000
ENDDATA(__libm_qnan_f)

#include "ultra64/asm.h"
#include "ultra64/regdef.h"

.text

LEAF(LeoGetAAdr2)
    srl     t8, a0, 15
    and     v1, t8, 0x1FFFE
    add     v0, v1, 0x7EE80
    srl     t2, a0, 8
    andi    t3, t2, 0xF
    andi    t5, a0, 0xFE
    addi    t4, t3, 1
    sll     t6, t5, 24
    andi    t9, a0, 1
    srl     v1, a0, 12
    sw      t4, (a2)
    sra     t7, t6, 25
    sll     t8, t9, 4
    andi    t1, v1, 0xF
    sw      t7, (a3)
    or      t2, t1, t8
    sw      t2, (a1)
    jr      ra
END(LeoGetAAdr2)

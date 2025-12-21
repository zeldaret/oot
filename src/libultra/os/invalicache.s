#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(osInvalICache)
    /* If the amount to invalidate is less than or equal to 0, return immediately */
    blez    a1, 2f
    /* If the amount to invalidate is as large as or larger than */
    /* the instruction cache size, invalidate all */
    li      t3, ICACHE_SIZE
    bgeu    a1, t3, 3f
    /* ensure end address doesn't wrap around and end up smaller */
    /* than the start address */
    move    t0, a0
    addu    t1, a0, a1
    bgeu    t0, t1, 2f
    /* Mask and subtract to align to cache line */
    addiu   t1, t1, -ICACHE_LINESIZE
    andi    t2, t0, ICACHE_LINEMASK
    subu    t0, t0, t2
1:
    CACHE(   (CACH_PI | C_HINV), (t0))
.set noreorder
    bltu    t0, t1, 1b
     addiu  t0, t0, ICACHE_LINESIZE
.set reorder
2:
    jr      ra

3:
    li      t0, K0BASE
    addu    t1, t0, t3
    addiu   t1, t1, -ICACHE_LINESIZE
4:
    CACHE(   (CACH_PI | C_IINV), (t0))
.set noreorder
    bltu    t0, t1, 4b
     addiu  t0, ICACHE_LINESIZE
.set reorder
    jr      ra
.set reorder
END(osInvalICache)

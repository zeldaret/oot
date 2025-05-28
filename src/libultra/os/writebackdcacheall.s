#include "ultra64/asm.h"
#include "ultra64/regdef.h"
#include "ultra64/R4300.h"

.text

LEAF(osWritebackDCacheAll)
    li      t0, K0BASE
    li      t2, DCACHE_SIZE
    addu    t1, t0, t2
    addiu   t1, t1, -DCACHE_LINESIZE
1:
.set noreorder
    cache   (CACH_PD | C_IWBINV), (t0)
    bltu    t0, t1, 1b
     addiu  t0, DCACHE_LINESIZE
.set reorder
    jr      ra
END(osWritebackDCacheAll)

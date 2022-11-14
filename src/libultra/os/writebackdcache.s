#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noat
.set noreorder

.section .text

.balign 16

/**
 *  void osWritebackDCache(void* vaddr, s32 nbytes);
 *
 *  Writes back the contents of the data cache to main memory for `nbytes` at `vaddr`.
 *  If `nbytes` is as large as or larger than the data cache size, the entire cache is
 *  written back.
 */
LEAF(osWritebackDCache)
    // If the amount to write back is less than or equal to 0, return immediately
    blez    $a1, .ret
     nop
    // If the amount to write back is as large as or larger than
    // the data cache size, write back all
    li      $t3, DCACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, .all
     nop
    // ensure end address doesn't wrap around and end up smaller
    // than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, .ret
     nop
    // Mask and subtract to align to cache line
    andi    $t2, $t0, DCACHE_LINEMASK
    addiu   $t1, $t1, -DCACHE_LINESIZE
    subu    $t0, $t0, $t2
1:
    cache   (CACH_PD | C_HWB), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, $t0, DCACHE_LINESIZE
.ret:
    jr      $ra
     nop

// same as osWritebackDCacheAll in operation
.all:
    li      $t0, K0BASE
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -DCACHE_LINESIZE
1:
    cache   (CACH_PD | C_IWBINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, DCACHE_LINESIZE
    jr      $ra
     nop
END(osWritebackDCache)

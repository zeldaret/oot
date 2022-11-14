#include "ultra64/asm.h"
#include "ultra64/R4300.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(osInvalICache)
    // If the amount to invalidate is less than or equal to 0, return immediately
    blez    $a1, 2f
     nop
    // If the amount to invalidate is as large as or larger than
    // the instruction cache size, invalidate all
    li      $t3, ICACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, 3f
     nop
    // ensure end address doesn't wrap around and end up smaller
    // than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, 2f
     nop
    // Mask and subtract to align to cache line
    andi    $t2, $t0, ICACHE_LINEMASK
    addiu   $t1, $t1, -ICACHE_LINESIZE
    subu    $t0, $t0, $t2
1:
    cache   (CACH_PI | C_HINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, $t0, ICACHE_LINESIZE
2:
    jr      $ra
     nop

3:
    li      $t0, K0BASE
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -ICACHE_LINESIZE
4:
    cache   (CACH_PI | C_IINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 4b
     addiu  $t0, ICACHE_LINESIZE
    jr      $ra
     nop
END(osInvalICache)

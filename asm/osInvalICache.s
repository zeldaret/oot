#include "ultra64/asm.h"
#include "ultra64/r4300.h"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

LEAF(osInvalICache)
    # If the amount to invalidate is less or equal to 0, return immediately
    blez    $a1, .ret
     nop
    # If the amount to invalidate is as large as or larger than
    # the instruction cache size, invalidate all
    li      $t3, ICACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, .all
     nop
    # ensure end address doesn't wrap around and end up smaller
    # than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, .ret
     nop
    # Mask and subtract to align to cache line
    andi    $t2, $t0, ICACHE_LINEMASK
    addiu   $t1, $t1, -ICACHE_LINESIZE
    subu    $t0, $t0, $t2
1:
    cache   (CACH_PI | C_HINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, $t0, ICACHE_LINESIZE
.ret:
    jr      $ra
     nop

.all:
    li      $t0, K0BASE
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -ICACHE_LINESIZE
1:
    cache   (CACH_PI | C_IINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, 1b
     addiu  $t0, ICACHE_LINESIZE
    jr      $ra
     nop
END(osInvalICache)

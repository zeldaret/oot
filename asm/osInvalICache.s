.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osInvalICache
    # If the amount to invalidate is less or equal to 0, return immediately
    blez    $a1, .invalidate_none
     nop
    # If the amount to invalidate is as large as or larger than
    # the instruction cache size, invalidate all
    li      $t3, ICACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, .invalidate_all
     nop
    # ensure end address doesn't wrap around and end up smaller
    # than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, .invalidate_none
     nop
    # Mask and subtract to align to cache line
    andi    $t2, $t0, ICACHE_LINEMASK
    addiu   $t1, $t1, -ICACHE_LINESIZE
    subu    $t0, $t0, $t2
.invalidate:
    cache   (CACH_PI | C_HINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .invalidate
     addiu  $t0, $t0, ICACHE_LINESIZE
.invalidate_none:
    jr      $ra
     nop

.invalidate_all:
    lui     $t0, %hi(K0BASE)
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -ICACHE_LINESIZE
.all:
    cache   (CACH_PI | C_IINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .all
     addiu  $t0, ICACHE_LINESIZE
    jr      $ra
     nop

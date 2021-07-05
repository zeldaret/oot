.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osWritebackDCache
    # If the amount to write back is less or equal to 0, return immediately
    blez    $a1, .writeback_none
     nop
    # If the amount to write back is as large as or larger than
    # the data cache size, write back all
    li      $t3, DCACHE_SIZE
    sltu    $at, $a1, $t3
    beqz    $at, .writeback_all
     nop
    # ensure end address doesn't wrap around and end up smaller
    # than the start address
    move    $t0, $a0
    addu    $t1, $a0, $a1
    sltu    $at, $t0, $t1
    beqz    $at, .writeback_none
     nop
    # Mask and subtract to align to cache line
    andi    $t2, $t0, DCACHE_LINEMASK
    addiu   $t1, $t1, -DCACHE_LINESIZE
    subu    $t0, $t0, $t2
.writeback:
    cache   (CACH_PD | C_HWB), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .writeback
     addiu  $t0, $t0, DCACHE_LINESIZE
.writeback_none:
    jr      $ra
     nop

# same as osWritebackDCacheAll in operation
.writeback_all:
    lui     $t0, %hi(K0BASE)
    addu    $t1, $t0, $t3
    addiu   $t1, $t1, -DCACHE_LINESIZE
.all:
    cache   (CACH_PD | C_IWBINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .all
     addiu  $t0, DCACHE_LINESIZE
    jr      $ra
     nop

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osWritebackDCacheAll
    lui     $t0, %hi(K0BASE)
    li      $t2, DCACHE_SIZE
    addu    $t1, $t0, $t2
    addiu   $t1, $t1, -DCACHE_LINESIZE
.all:
    cache   (CACH_PD | C_IWBINV), ($t0)
    sltu    $at, $t0, $t1
    bnez    $at, .all
     addiu  $t0, DCACHE_LINESIZE
    jr      $ra
     nop

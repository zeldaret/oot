#include "ultra64/asm.h"

.set noat
.set noreorder

.section .text

.balign 16

LEAF(bcmp)
    slti    $at, $a2, 0x10
    bnez    $at, bytecmp
     xor    $v0, $a0, $a1
    andi    $v0, $v0, 3
    bnez    $v0, unaligncmp
     negu   $t8, $a0
    andi    $t8, $t8, 3
    beqz    $t8, wordcmp
     subu   $a2, $a2, $t8
    move    $v0, $v1
    lwl     $v0, ($a0)
    lwl     $v1, ($a1)
    addu    $a0, $a0, $t8
    addu    $a1, $a1, $t8
    bne     $v0, $v1, cmpne
wordcmp:
     li     $at, ~3
    and     $a3, $a2, $at
    beqz    $a3, bytecmp
     subu   $a2, $a2, $a3
    addu    $a3, $a3, $a0
    lw      $v0, ($a0)
1:
    lw      $v1, ($a1)
    addiu   $a0, $a0, 4
    addiu   $a1, $a1, 4
    bne     $v0, $v1, cmpne
     nop
    bnel    $a0, $a3, 1b
     lw     $v0, ($a0)
    b       bytecmp
     nop
unaligncmp:
    negu    $a3, $a1
    andi    $a3, $a3, 3
    beqz    $a3, partaligncmp
     subu   $a2, $a2, $a3
    addu    $a3, $a3, $a0
    lbu     $v0, ($a0)
1:
    lbu     $v1, ($a1)
    addiu   $a0, $a0, 1
    addiu   $a1, $a1, 1
    bne     $v0, $v1, cmpne
     nop
    bnel    $a0, $a3, 1b
     lbu    $v0, ($a0)
partaligncmp:
    li      $at, ~3
    and     $a3, $a2, $at
    beqz    $a3, bytecmp
     subu   $a2, $a2, $a3
    addu    $a3, $a3, $a0
    lwl     $v0, ($a0)
1:
    lw      $v1, ($a1)
    lwr     $v0, 3($a0)
    addiu   $a0, $a0, 4
    addiu   $a1, $a1, 4
    bne     $v0, $v1, cmpne
     nop
    bnel    $a0, $a3, 1b
     lwl    $v0, ($a0)
bytecmp:
    blez    $a2, cmpdone
     addu   $a3, $a2, $a0
    lbu     $v0, ($a0)
1:
    lbu     $v1, ($a1)
    addiu   $a0, $a0, 1
    addiu   $a1, $a1, 1
    bne     $v0, $v1, cmpne
     nop
    bnel    $a0, $a3, 1b
     lbu    $v0, ($a0)
cmpdone:
    jr      $ra
     move   $v0, $zero

cmpne:
    jr      $ra
     li     $v0, 1
END(bcmp)

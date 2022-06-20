#include "ultra64/asm.h"

.set noreorder

.section .text

.balign 32

LEAF(guMtxIdent)
    addi    $t0, $zero, 1
    sll     $t1, $t0, 0x10
    sw      $t1, ($a0)
    sw      $zero, 4($a0)
    sw      $t0, 8($a0)
    sw      $zero, 0xc($a0)
    sw      $zero, 0x10($a0)
    sw      $t1, 0x14($a0)
    sw      $zero, 0x18($a0)
    sw      $t0, 0x1C($a0)
    sw      $zero, 0x20($a0)
    sw      $zero, 0x24($a0)
    sw      $zero, 0x28($a0)
    sw      $zero, 0x2c($a0)
    sw      $zero, 0x30($a0)
    sw      $zero, 0x34($a0)
    sw      $zero, 0x38($a0)
    jr      $ra
     sw     $zero, 0x3C($a0)
END(guMtxIdent)

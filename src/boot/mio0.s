#include "ultra64/asm.h"

.set noreorder

.section .text

.balign 16

/**
 *  void Mio0_Decompress(void* src, void* dst);
 *
 *  Decompress Mio0 chunk
 */
LEAF(Mio0_Decompress)
    lw      $a3, 8($a0)     // compressed offset
    lw      $t9, 0xC($a0)   // uncompressed offset
    lw      $t8, 4($a0)     // decompressed length
    add     $a3, $a3, $a0   // compressed start
    add     $t9, $t9, $a0   // uncompressed start
    move    $a2, $zero      // 0
    addi    $a0, $a0, 0x10  // move past header
    add     $t8, $t8, $a1   // dst + decompressed length = end
mainloop:
    bnez    $a2, 1f
     nop
    lw      $t0, ($a0)
    li      $a2, 32
    addi    $a0, $a0, 4
1:
    slt     $t1, $t0, $zero
    beqz    $t1, read_comp
     nop
    lb      $t2, ($t9)      // read 1 byte from uncompressed data
    addi    $t9, $t9, 1     // advance uncompressed start
    addi    $a1, $a1, 1
    b       next_iter
     sb     $t2, -1($a1)    // store uncompressed byte
read_comp:
    lhu     $t2, ($a3)      // read 2 bytes from compressed data
    addi    $a3, $a3, 2     // advance compressed start
    srl     $t3, $t2, 0xC
    andi    $t2, $t2, 0xFFF
    beqz    $t3, 3f
     sub    $t1, $a1, $t2
    addi    $t3, $t3, 2
2:
    lb      $t2, -1($t1)
    addi    $t3, $t3, -1
    addi    $t1, $t1, 1
    addi    $a1, $a1, 1
    bnez    $t3, 2b
     sb     $t2, -1($a1)
next_iter:
    sll     $t0, $t0, 1
    bne     $a1, $t8, mainloop // continue until decompressed length is reached
     addi   $a2, $a2, -1
    jr      $ra
     nop
3:
    lbu     $t3, ($t9)
    addi    $t9, $t9, 1
    b       2b
     addi   $t3, $t3, 0x12
END(Mio0_Decompress)

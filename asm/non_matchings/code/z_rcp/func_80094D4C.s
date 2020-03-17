.rdata
glabel D_8013EEE0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EEEC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094D4C
/* B0BEEC 80094D4C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BEF0 80094D50 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BEF4 80094D54 00802825 */  move  $a1, $a0
/* B0BEF8 80094D58 3C068014 */  lui   $a2, %hi(D_8013EEE0) # $a2, 0x8014
/* B0BEFC 80094D5C 24C6EEE0 */  addiu $a2, %lo(D_8013EEE0) # addiu $a2, $a2, -0x1120
/* B0BF00 80094D60 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BF04 80094D64 27A40024 */  addiu $a0, $sp, 0x24
/* B0BF08 80094D68 0C031AB1 */  jal   func_800C6AC4
/* B0BF0C 80094D6C 24070840 */   li    $a3, 2112
/* B0BF10 80094D70 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BF14 80094D74 3C188012 */  lui   $t8, %hi(D_80126D90) # $t8, 0x8012
/* B0BF18 80094D78 27186D90 */  addiu $t8, %lo(D_80126D90) # addiu $t8, $t8, 0x6d90
/* B0BF1C 80094D7C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BF20 80094D80 3C0FDE00 */  lui   $t7, 0xde00
/* B0BF24 80094D84 3C068014 */  lui   $a2, %hi(D_8013EEEC) # $a2, 0x8014
/* B0BF28 80094D88 246E0008 */  addiu $t6, $v1, 8
/* B0BF2C 80094D8C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BF30 80094D90 24C6EEEC */  addiu $a2, %lo(D_8013EEEC) # addiu $a2, $a2, -0x1114
/* B0BF34 80094D94 27A40024 */  addiu $a0, $sp, 0x24
/* B0BF38 80094D98 24070844 */  li    $a3, 2116
/* B0BF3C 80094D9C AC780004 */  sw    $t8, 4($v1)
/* B0BF40 80094DA0 0C031AD5 */  jal   func_800C6B54
/* B0BF44 80094DA4 AC6F0000 */   sw    $t7, ($v1)
/* B0BF48 80094DA8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BF4C 80094DAC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BF50 80094DB0 03E00008 */  jr    $ra
/* B0BF54 80094DB4 00000000 */   nop   


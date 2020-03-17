.rdata
glabel D_8013EE50
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE5C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094A80
/* B0BC20 80094A80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BC24 80094A84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BC28 80094A88 00802825 */  move  $a1, $a0
/* B0BC2C 80094A8C 3C068014 */  lui   $a2, %hi(D_8013EE50) # $a2, 0x8014
/* B0BC30 80094A90 24C6EE50 */  addiu $a2, %lo(D_8013EE50) # addiu $a2, $a2, -0x11b0
/* B0BC34 80094A94 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BC38 80094A98 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC3C 80094A9C 0C031AB1 */  jal   func_800C6AC4
/* B0BC40 80094AA0 240707C8 */   li    $a3, 1992
/* B0BC44 80094AA4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BC48 80094AA8 3C188012 */  lui   $t8, %hi(D_80126B80) # $t8, 0x8012
/* B0BC4C 80094AAC 27186B80 */  addiu $t8, %lo(D_80126B80) # addiu $t8, $t8, 0x6b80
/* B0BC50 80094AB0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BC54 80094AB4 3C0FDE00 */  lui   $t7, 0xde00
/* B0BC58 80094AB8 3C068014 */  lui   $a2, %hi(D_8013EE5C) # $a2, 0x8014
/* B0BC5C 80094ABC 246E0008 */  addiu $t6, $v1, 8
/* B0BC60 80094AC0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BC64 80094AC4 24C6EE5C */  addiu $a2, %lo(D_8013EE5C) # addiu $a2, $a2, -0x11a4
/* B0BC68 80094AC8 27A40024 */  addiu $a0, $sp, 0x24
/* B0BC6C 80094ACC 240707CC */  li    $a3, 1996
/* B0BC70 80094AD0 AC780004 */  sw    $t8, 4($v1)
/* B0BC74 80094AD4 0C031AD5 */  jal   func_800C6B54
/* B0BC78 80094AD8 AC6F0000 */   sw    $t7, ($v1)
/* B0BC7C 80094ADC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BC80 80094AE0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BC84 80094AE4 03E00008 */  jr    $ra
/* B0BC88 80094AE8 00000000 */   nop   


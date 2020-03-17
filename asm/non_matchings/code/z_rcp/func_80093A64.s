.rdata
glabel D_8013EB80
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EB8C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093A64
/* B0AC04 80093A64 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AC08 80093A68 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AC0C 80093A6C 00802825 */  move  $a1, $a0
/* B0AC10 80093A70 3C068014 */  lui   $a2, %hi(D_8013EB80) # $a2, 0x8014
/* B0AC14 80093A74 24C6EB80 */  addiu $a2, %lo(D_8013EB80) # addiu $a2, $a2, -0x1480
/* B0AC18 80093A78 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AC1C 80093A7C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC20 80093A80 0C031AB1 */  jal   func_800C6AC4
/* B0AC24 80093A84 2407055D */   li    $a3, 1373
/* B0AC28 80093A88 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AC2C 80093A8C 3C188012 */  lui   $t8, %hi(D_80126C70) # $t8, 0x8012
/* B0AC30 80093A90 27186C70 */  addiu $t8, %lo(D_80126C70) # addiu $t8, $t8, 0x6c70
/* B0AC34 80093A94 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AC38 80093A98 3C0FDE00 */  lui   $t7, 0xde00
/* B0AC3C 80093A9C 3C068014 */  lui   $a2, %hi(D_8013EB8C) # $a2, 0x8014
/* B0AC40 80093AA0 246E0008 */  addiu $t6, $v1, 8
/* B0AC44 80093AA4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AC48 80093AA8 24C6EB8C */  addiu $a2, %lo(D_8013EB8C) # addiu $a2, $a2, -0x1474
/* B0AC4C 80093AAC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC50 80093AB0 24070561 */  li    $a3, 1377
/* B0AC54 80093AB4 AC780004 */  sw    $t8, 4($v1)
/* B0AC58 80093AB8 0C031AD5 */  jal   func_800C6B54
/* B0AC5C 80093ABC AC6F0000 */   sw    $t7, ($v1)
/* B0AC60 80093AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AC64 80093AC4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AC68 80093AC8 03E00008 */  jr    $ra
/* B0AC6C 80093ACC 00000000 */   nop   


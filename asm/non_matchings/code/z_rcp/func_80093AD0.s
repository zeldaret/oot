.rdata
glabel D_8013EB98
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EBA4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093AD0
/* B0AC70 80093AD0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AC74 80093AD4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AC78 80093AD8 00802825 */  move  $a1, $a0
/* B0AC7C 80093ADC 3C068014 */  lui   $a2, %hi(D_8013EB98) # $a2, 0x8014
/* B0AC80 80093AE0 24C6EB98 */  addiu $a2, %lo(D_8013EB98) # addiu $a2, $a2, -0x1468
/* B0AC84 80093AE4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AC88 80093AE8 27A40024 */  addiu $a0, $sp, 0x24
/* B0AC8C 80093AEC 0C031AB1 */  jal   func_800C6AC4
/* B0AC90 80093AF0 2407056D */   li    $a3, 1389
/* B0AC94 80093AF4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AC98 80093AF8 3C188012 */  lui   $t8, %hi(D_80126CA0) # $t8, 0x8012
/* B0AC9C 80093AFC 27186CA0 */  addiu $t8, %lo(D_80126CA0) # addiu $t8, $t8, 0x6ca0
/* B0ACA0 80093B00 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0ACA4 80093B04 3C0FDE00 */  lui   $t7, 0xde00
/* B0ACA8 80093B08 3C068014 */  lui   $a2, %hi(D_8013EBA4) # $a2, 0x8014
/* B0ACAC 80093B0C 246E0008 */  addiu $t6, $v1, 8
/* B0ACB0 80093B10 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0ACB4 80093B14 24C6EBA4 */  addiu $a2, %lo(D_8013EBA4) # addiu $a2, $a2, -0x145c
/* B0ACB8 80093B18 27A40024 */  addiu $a0, $sp, 0x24
/* B0ACBC 80093B1C 24070571 */  li    $a3, 1393
/* B0ACC0 80093B20 AC780004 */  sw    $t8, 4($v1)
/* B0ACC4 80093B24 0C031AD5 */  jal   func_800C6B54
/* B0ACC8 80093B28 AC6F0000 */   sw    $t7, ($v1)
/* B0ACCC 80093B2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ACD0 80093B30 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ACD4 80093B34 03E00008 */  jr    $ra
/* B0ACD8 80093B38 00000000 */   nop   


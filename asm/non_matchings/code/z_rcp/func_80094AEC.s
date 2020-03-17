.rdata
glabel D_8013EE68
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE74
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094AEC
/* B0BC8C 80094AEC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BC90 80094AF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BC94 80094AF4 00802825 */  move  $a1, $a0
/* B0BC98 80094AF8 3C068014 */  lui   $a2, %hi(D_8013EE68) # $a2, 0x8014
/* B0BC9C 80094AFC 24C6EE68 */  addiu $a2, %lo(D_8013EE68) # addiu $a2, $a2, -0x1198
/* B0BCA0 80094B00 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BCA4 80094B04 27A40024 */  addiu $a0, $sp, 0x24
/* B0BCA8 80094B08 0C031AB1 */  jal   func_800C6AC4
/* B0BCAC 80094B0C 240707D8 */   li    $a3, 2008
/* B0BCB0 80094B10 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BCB4 80094B14 3C188012 */  lui   $t8, %hi(D_80126BB0) # $t8, 0x8012
/* B0BCB8 80094B18 27186BB0 */  addiu $t8, %lo(D_80126BB0) # addiu $t8, $t8, 0x6bb0
/* B0BCBC 80094B1C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BCC0 80094B20 3C0FDE00 */  lui   $t7, 0xde00
/* B0BCC4 80094B24 3C068014 */  lui   $a2, %hi(D_8013EE74) # $a2, 0x8014
/* B0BCC8 80094B28 246E0008 */  addiu $t6, $v1, 8
/* B0BCCC 80094B2C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BCD0 80094B30 24C6EE74 */  addiu $a2, %lo(D_8013EE74) # addiu $a2, $a2, -0x118c
/* B0BCD4 80094B34 27A40024 */  addiu $a0, $sp, 0x24
/* B0BCD8 80094B38 240707DC */  li    $a3, 2012
/* B0BCDC 80094B3C AC780004 */  sw    $t8, 4($v1)
/* B0BCE0 80094B40 0C031AD5 */  jal   func_800C6B54
/* B0BCE4 80094B44 AC6F0000 */   sw    $t7, ($v1)
/* B0BCE8 80094B48 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BCEC 80094B4C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BCF0 80094B50 03E00008 */  jr    $ra
/* B0BCF4 80094B54 00000000 */   nop   


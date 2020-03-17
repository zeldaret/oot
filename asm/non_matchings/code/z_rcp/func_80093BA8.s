.rdata
glabel D_8013EBC8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EBD4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093BA8
/* B0AD48 80093BA8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AD4C 80093BAC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AD50 80093BB0 00802825 */  move  $a1, $a0
/* B0AD54 80093BB4 3C068014 */  lui   $a2, %hi(D_8013EBC8) # $a2, 0x8014
/* B0AD58 80093BB8 24C6EBC8 */  addiu $a2, %lo(D_8013EBC8) # addiu $a2, $a2, -0x1438
/* B0AD5C 80093BBC AFA50038 */  sw    $a1, 0x38($sp)
/* B0AD60 80093BC0 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD64 80093BC4 0C031AB1 */  jal   func_800C6AC4
/* B0AD68 80093BC8 2407058D */   li    $a3, 1421
/* B0AD6C 80093BCC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AD70 80093BD0 3C188012 */  lui   $t8, %hi(D_80126760) # $t8, 0x8012
/* B0AD74 80093BD4 27186760 */  addiu $t8, %lo(D_80126760) # addiu $t8, $t8, 0x6760
/* B0AD78 80093BD8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AD7C 80093BDC 3C0FDE00 */  lui   $t7, 0xde00
/* B0AD80 80093BE0 3C068014 */  lui   $a2, %hi(D_8013EBD4) # $a2, 0x8014
/* B0AD84 80093BE4 246E0008 */  addiu $t6, $v1, 8
/* B0AD88 80093BE8 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AD8C 80093BEC 24C6EBD4 */  addiu $a2, %lo(D_8013EBD4) # addiu $a2, $a2, -0x142c
/* B0AD90 80093BF0 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD94 80093BF4 24070591 */  li    $a3, 1425
/* B0AD98 80093BF8 AC780004 */  sw    $t8, 4($v1)
/* B0AD9C 80093BFC 0C031AD5 */  jal   func_800C6B54
/* B0ADA0 80093C00 AC6F0000 */   sw    $t7, ($v1)
/* B0ADA4 80093C04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0ADA8 80093C08 27BD0038 */  addiu $sp, $sp, 0x38
/* B0ADAC 80093C0C 03E00008 */  jr    $ra
/* B0ADB0 80093C10 00000000 */   nop   


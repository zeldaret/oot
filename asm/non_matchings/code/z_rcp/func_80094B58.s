.rdata
glabel D_8013EE80
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE8C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094B58
/* B0BCF8 80094B58 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BCFC 80094B5C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BD00 80094B60 00802825 */  move  $a1, $a0
/* B0BD04 80094B64 3C068014 */  lui   $a2, %hi(D_8013EE80) # $a2, 0x8014
/* B0BD08 80094B68 24C6EE80 */  addiu $a2, %lo(D_8013EE80) # addiu $a2, $a2, -0x1180
/* B0BD0C 80094B6C AFA50038 */  sw    $a1, 0x38($sp)
/* B0BD10 80094B70 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD14 80094B74 0C031AB1 */  jal   func_800C6AC4
/* B0BD18 80094B78 240707E8 */   li    $a3, 2024
/* B0BD1C 80094B7C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BD20 80094B80 3C188012 */  lui   $t8, %hi(D_80126790) # $t8, 0x8012
/* B0BD24 80094B84 27186790 */  addiu $t8, %lo(D_80126790) # addiu $t8, $t8, 0x6790
/* B0BD28 80094B88 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BD2C 80094B8C 3C0FDE00 */  lui   $t7, 0xde00
/* B0BD30 80094B90 3C068014 */  lui   $a2, %hi(D_8013EE8C) # $a2, 0x8014
/* B0BD34 80094B94 246E0008 */  addiu $t6, $v1, 8
/* B0BD38 80094B98 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BD3C 80094B9C 24C6EE8C */  addiu $a2, %lo(D_8013EE8C) # addiu $a2, $a2, -0x1174
/* B0BD40 80094BA0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD44 80094BA4 240707EC */  li    $a3, 2028
/* B0BD48 80094BA8 AC780004 */  sw    $t8, 4($v1)
/* B0BD4C 80094BAC 0C031AD5 */  jal   func_800C6B54
/* B0BD50 80094BB0 AC6F0000 */   sw    $t7, ($v1)
/* B0BD54 80094BB4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BD58 80094BB8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BD5C 80094BBC 03E00008 */  jr    $ra
/* B0BD60 80094BC0 00000000 */   nop   


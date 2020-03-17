.rdata
glabel D_8013EB08
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EB14
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093848
/* B0A9E8 80093848 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0A9EC 8009384C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0A9F0 80093850 00802825 */  move  $a1, $a0
/* B0A9F4 80093854 3C068014 */  lui   $a2, %hi(D_8013EB08) # $a2, 0x8014
/* B0A9F8 80093858 24C6EB08 */  addiu $a2, %lo(D_8013EB08) # addiu $a2, $a2, -0x14f8
/* B0A9FC 8009385C AFA50038 */  sw    $a1, 0x38($sp)
/* B0AA00 80093860 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA04 80093864 0C031AB1 */  jal   func_800C6AC4
/* B0AA08 80093868 2407050D */   li    $a3, 1293
/* B0AA0C 8009386C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AA10 80093870 3C188012 */  lui   $t8, %hi(D_80126D60) # $t8, 0x8012
/* B0AA14 80093874 27186D60 */  addiu $t8, %lo(D_80126D60) # addiu $t8, $t8, 0x6d60
/* B0AA18 80093878 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AA1C 8009387C 3C0FDE00 */  lui   $t7, 0xde00
/* B0AA20 80093880 3C068014 */  lui   $a2, %hi(D_8013EB14) # $a2, 0x8014
/* B0AA24 80093884 246E0008 */  addiu $t6, $v1, 8
/* B0AA28 80093888 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AA2C 8009388C 24C6EB14 */  addiu $a2, %lo(D_8013EB14) # addiu $a2, $a2, -0x14ec
/* B0AA30 80093890 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA34 80093894 24070511 */  li    $a3, 1297
/* B0AA38 80093898 AC780004 */  sw    $t8, 4($v1)
/* B0AA3C 8009389C 0C031AD5 */  jal   func_800C6B54
/* B0AA40 800938A0 AC6F0000 */   sw    $t7, ($v1)
/* B0AA44 800938A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AA48 800938A8 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AA4C 800938AC 03E00008 */  jr    $ra
/* B0AA50 800938B0 00000000 */   nop   


.rdata
glabel D_8013EBB0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EBBC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093B3C
/* B0ACDC 80093B3C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0ACE0 80093B40 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ACE4 80093B44 00802825 */  move  $a1, $a0
/* B0ACE8 80093B48 3C068014 */  lui   $a2, %hi(D_8013EBB0) # $a2, 0x8014
/* B0ACEC 80093B4C 24C6EBB0 */  addiu $a2, %lo(D_8013EBB0) # addiu $a2, $a2, -0x1450
/* B0ACF0 80093B50 AFA50038 */  sw    $a1, 0x38($sp)
/* B0ACF4 80093B54 27A40024 */  addiu $a0, $sp, 0x24
/* B0ACF8 80093B58 0C031AB1 */  jal   func_800C6AC4
/* B0ACFC 80093B5C 2407057D */   li    $a3, 1405
/* B0AD00 80093B60 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AD04 80093B64 3C188012 */  lui   $t8, %hi(D_80126CD0) # $t8, 0x8012
/* B0AD08 80093B68 27186CD0 */  addiu $t8, %lo(D_80126CD0) # addiu $t8, $t8, 0x6cd0
/* B0AD0C 80093B6C 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0AD10 80093B70 3C0FDE00 */  lui   $t7, 0xde00
/* B0AD14 80093B74 3C068014 */  lui   $a2, %hi(D_8013EBBC) # $a2, 0x8014
/* B0AD18 80093B78 246E0008 */  addiu $t6, $v1, 8
/* B0AD1C 80093B7C ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0AD20 80093B80 24C6EBBC */  addiu $a2, %lo(D_8013EBBC) # addiu $a2, $a2, -0x1444
/* B0AD24 80093B84 27A40024 */  addiu $a0, $sp, 0x24
/* B0AD28 80093B88 24070581 */  li    $a3, 1409
/* B0AD2C 80093B8C AC780004 */  sw    $t8, 4($v1)
/* B0AD30 80093B90 0C031AD5 */  jal   func_800C6B54
/* B0AD34 80093B94 AC6F0000 */   sw    $t7, ($v1)
/* B0AD38 80093B98 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AD3C 80093B9C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AD40 80093BA0 03E00008 */  jr    $ra
/* B0AD44 80093BA4 00000000 */   nop   


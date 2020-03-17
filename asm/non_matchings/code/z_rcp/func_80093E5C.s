.rdata
glabel D_8013EC58
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC64
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093E5C
/* B0AFFC 80093E5C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B000 80093E60 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B004 80093E64 00802825 */  move  $a1, $a0
/* B0B008 80093E68 3C068014 */  lui   $a2, %hi(D_8013EC58) # $a2, 0x8014
/* B0B00C 80093E6C 24C6EC58 */  addiu $a2, %lo(D_8013EC58) # addiu $a2, $a2, -0x13a8
/* B0B010 80093E70 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B014 80093E74 27A40024 */  addiu $a0, $sp, 0x24
/* B0B018 80093E78 0C031AB1 */  jal   func_800C6AC4
/* B0B01C 80093E7C 240705F3 */   li    $a3, 1523
/* B0B020 80093E80 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B024 80093E84 3C188012 */  lui   $t8, %hi(D_80126880) # $t8, 0x8012
/* B0B028 80093E88 27186880 */  addiu $t8, %lo(D_80126880) # addiu $t8, $t8, 0x6880
/* B0B02C 80093E8C 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B030 80093E90 3C0FDE00 */  lui   $t7, 0xde00
/* B0B034 80093E94 3C068014 */  lui   $a2, %hi(D_8013EC64) # $a2, 0x8014
/* B0B038 80093E98 246E0008 */  addiu $t6, $v1, 8
/* B0B03C 80093E9C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B040 80093EA0 24C6EC64 */  addiu $a2, %lo(D_8013EC64) # addiu $a2, $a2, -0x139c
/* B0B044 80093EA4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B048 80093EA8 240705F7 */  li    $a3, 1527
/* B0B04C 80093EAC AC780004 */  sw    $t8, 4($v1)
/* B0B050 80093EB0 0C031AD5 */  jal   func_800C6B54
/* B0B054 80093EB4 AC6F0000 */   sw    $t7, ($v1)
/* B0B058 80093EB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B05C 80093EBC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B060 80093EC0 03E00008 */  jr    $ra
/* B0B064 80093EC4 00000000 */   nop   


.rdata
glabel D_8013EEC8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EED4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094CBC
/* B0BE5C 80094CBC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BE60 80094CC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BE64 80094CC4 00802825 */  move  $a1, $a0
/* B0BE68 80094CC8 3C068014 */  lui   $a2, %hi(D_8013EEC8) # $a2, 0x8014
/* B0BE6C 80094CCC 24C6EEC8 */  addiu $a2, %lo(D_8013EEC8) # addiu $a2, $a2, -0x1138
/* B0BE70 80094CD0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BE74 80094CD4 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE78 80094CD8 0C031AB1 */  jal   func_800C6AC4
/* B0BE7C 80094CDC 24070826 */   li    $a3, 2086
/* B0BE80 80094CE0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BE84 80094CE4 3C188012 */  lui   $t8, %hi(D_80126D00) # $t8, 0x8012
/* B0BE88 80094CE8 27186D00 */  addiu $t8, %lo(D_80126D00) # addiu $t8, $t8, 0x6d00
/* B0BE8C 80094CEC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BE90 80094CF0 3C0FDE00 */  lui   $t7, 0xde00
/* B0BE94 80094CF4 3C068014 */  lui   $a2, %hi(D_8013EED4) # $a2, 0x8014
/* B0BE98 80094CF8 246E0008 */  addiu $t6, $v1, 8
/* B0BE9C 80094CFC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BEA0 80094D00 24C6EED4 */  addiu $a2, %lo(D_8013EED4) # addiu $a2, $a2, -0x112c
/* B0BEA4 80094D04 27A40024 */  addiu $a0, $sp, 0x24
/* B0BEA8 80094D08 2407082A */  li    $a3, 2090
/* B0BEAC 80094D0C AC780004 */  sw    $t8, 4($v1)
/* B0BEB0 80094D10 0C031AD5 */  jal   func_800C6B54
/* B0BEB4 80094D14 AC6F0000 */   sw    $t7, ($v1)
/* B0BEB8 80094D18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BEBC 80094D1C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BEC0 80094D20 03E00008 */  jr    $ra
/* B0BEC4 80094D24 00000000 */   nop   


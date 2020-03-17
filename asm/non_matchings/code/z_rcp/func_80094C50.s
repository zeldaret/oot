.rdata
glabel D_8013EEB0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EEBC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094C50
/* B0BDF0 80094C50 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BDF4 80094C54 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BDF8 80094C58 00802825 */  move  $a1, $a0
/* B0BDFC 80094C5C 3C068014 */  lui   $a2, %hi(D_8013EEB0) # $a2, 0x8014
/* B0BE00 80094C60 24C6EEB0 */  addiu $a2, %lo(D_8013EEB0) # addiu $a2, $a2, -0x1150
/* B0BE04 80094C64 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BE08 80094C68 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE0C 80094C6C 0C031AB1 */  jal   func_800C6AC4
/* B0BE10 80094C70 24070808 */   li    $a3, 2056
/* B0BE14 80094C74 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BE18 80094C78 3C188012 */  lui   $t8, %hi(D_80126DF0) # $t8, 0x8012
/* B0BE1C 80094C7C 27186DF0 */  addiu $t8, %lo(D_80126DF0) # addiu $t8, $t8, 0x6df0
/* B0BE20 80094C80 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BE24 80094C84 3C0FDE00 */  lui   $t7, 0xde00
/* B0BE28 80094C88 3C068014 */  lui   $a2, %hi(D_8013EEBC) # $a2, 0x8014
/* B0BE2C 80094C8C 246E0008 */  addiu $t6, $v1, 8
/* B0BE30 80094C90 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BE34 80094C94 24C6EEBC */  addiu $a2, %lo(D_8013EEBC) # addiu $a2, $a2, -0x1144
/* B0BE38 80094C98 27A40024 */  addiu $a0, $sp, 0x24
/* B0BE3C 80094C9C 2407080A */  li    $a3, 2058
/* B0BE40 80094CA0 AC780004 */  sw    $t8, 4($v1)
/* B0BE44 80094CA4 0C031AD5 */  jal   func_800C6B54
/* B0BE48 80094CA8 AC6F0000 */   sw    $t7, ($v1)
/* B0BE4C 80094CAC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BE50 80094CB0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BE54 80094CB4 03E00008 */  jr    $ra
/* B0BE58 80094CB8 00000000 */   nop   


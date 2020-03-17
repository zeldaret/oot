.rdata
glabel D_8013ECD0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ECDC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800940B0
/* B0B250 800940B0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B254 800940B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B258 800940B8 00802825 */  move  $a1, $a0
/* B0B25C 800940BC 3C068014 */  lui   $a2, %hi(D_8013ECD0) # $a2, 0x8014
/* B0B260 800940C0 24C6ECD0 */  addiu $a2, %lo(D_8013ECD0) # addiu $a2, $a2, -0x1330
/* B0B264 800940C4 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B268 800940C8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B26C 800940CC 0C031AB1 */  jal   func_800C6AC4
/* B0B270 800940D0 24070651 */   li    $a3, 1617
/* B0B274 800940D4 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B278 800940D8 3C188012 */  lui   $t8, %hi(D_80126940) # $t8, 0x8012
/* B0B27C 800940DC 27186940 */  addiu $t8, %lo(D_80126940) # addiu $t8, $t8, 0x6940
/* B0B280 800940E0 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B284 800940E4 3C0FDE00 */  lui   $t7, 0xde00
/* B0B288 800940E8 3C068014 */  lui   $a2, %hi(D_8013ECDC) # $a2, 0x8014
/* B0B28C 800940EC 246E0008 */  addiu $t6, $v1, 8
/* B0B290 800940F0 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B294 800940F4 24C6ECDC */  addiu $a2, %lo(D_8013ECDC) # addiu $a2, $a2, -0x1324
/* B0B298 800940F8 27A40024 */  addiu $a0, $sp, 0x24
/* B0B29C 800940FC 24070655 */  li    $a3, 1621
/* B0B2A0 80094100 AC780004 */  sw    $t8, 4($v1)
/* B0B2A4 80094104 0C031AD5 */  jal   func_800C6B54
/* B0B2A8 80094108 AC6F0000 */   sw    $t7, ($v1)
/* B0B2AC 8009410C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B2B0 80094110 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B2B4 80094114 03E00008 */  jr    $ra
/* B0B2B8 80094118 00000000 */   nop   


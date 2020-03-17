.rdata
glabel D_8013EE20
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EE2C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800949A8
/* B0BB48 800949A8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BB4C 800949AC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BB50 800949B0 00802825 */  move  $a1, $a0
/* B0BB54 800949B4 3C068014 */  lui   $a2, %hi(D_8013EE20) # $a2, 0x8014
/* B0BB58 800949B8 24C6EE20 */  addiu $a2, %lo(D_8013EE20) # addiu $a2, $a2, -0x11e0
/* B0BB5C 800949BC AFA50038 */  sw    $a1, 0x38($sp)
/* B0BB60 800949C0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BB64 800949C4 0C031AB1 */  jal   func_800C6AC4
/* B0BB68 800949C8 240707A1 */   li    $a3, 1953
/* B0BB6C 800949CC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BB70 800949D0 3C188012 */  lui   $t8, %hi(D_80126A60) # $t8, 0x8012
/* B0BB74 800949D4 27186A60 */  addiu $t8, %lo(D_80126A60) # addiu $t8, $t8, 0x6a60
/* B0BB78 800949D8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0BB7C 800949DC 3C0FDE00 */  lui   $t7, 0xde00
/* B0BB80 800949E0 3C068014 */  lui   $a2, %hi(D_8013EE2C) # $a2, 0x8014
/* B0BB84 800949E4 246E0008 */  addiu $t6, $v1, 8
/* B0BB88 800949E8 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0BB8C 800949EC 24C6EE2C */  addiu $a2, %lo(D_8013EE2C) # addiu $a2, $a2, -0x11d4
/* B0BB90 800949F0 27A40024 */  addiu $a0, $sp, 0x24
/* B0BB94 800949F4 240707A5 */  li    $a3, 1957
/* B0BB98 800949F8 AC780004 */  sw    $t8, 4($v1)
/* B0BB9C 800949FC 0C031AD5 */  jal   func_800C6B54
/* B0BBA0 80094A00 AC6F0000 */   sw    $t7, ($v1)
/* B0BBA4 80094A04 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BBA8 80094A08 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BBAC 80094A0C 03E00008 */  jr    $ra
/* B0BBB0 80094A10 00000000 */   nop   


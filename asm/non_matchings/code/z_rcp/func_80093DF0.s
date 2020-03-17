.rdata
glabel D_8013EC40
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC4C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093DF0
/* B0AF90 80093DF0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AF94 80093DF4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AF98 80093DF8 00802825 */  move  $a1, $a0
/* B0AF9C 80093DFC 3C068014 */  lui   $a2, %hi(D_8013EC40) # $a2, 0x8014
/* B0AFA0 80093E00 24C6EC40 */  addiu $a2, %lo(D_8013EC40) # addiu $a2, $a2, -0x13c0
/* B0AFA4 80093E04 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AFA8 80093E08 27A40024 */  addiu $a0, $sp, 0x24
/* B0AFAC 80093E0C 0C031AB1 */  jal   func_800C6AC4
/* B0AFB0 80093E10 240705E3 */   li    $a3, 1507
/* B0AFB4 80093E14 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AFB8 80093E18 3C188012 */  lui   $t8, %hi(D_80126850) # $t8, 0x8012
/* B0AFBC 80093E1C 27186850 */  addiu $t8, %lo(D_80126850) # addiu $t8, $t8, 0x6850
/* B0AFC0 80093E20 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AFC4 80093E24 3C0FDE00 */  lui   $t7, 0xde00
/* B0AFC8 80093E28 3C068014 */  lui   $a2, %hi(D_8013EC4C) # $a2, 0x8014
/* B0AFCC 80093E2C 246E0008 */  addiu $t6, $v1, 8
/* B0AFD0 80093E30 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AFD4 80093E34 24C6EC4C */  addiu $a2, %lo(D_8013EC4C) # addiu $a2, $a2, -0x13b4
/* B0AFD8 80093E38 27A40024 */  addiu $a0, $sp, 0x24
/* B0AFDC 80093E3C 240705E7 */  li    $a3, 1511
/* B0AFE0 80093E40 AC780004 */  sw    $t8, 4($v1)
/* B0AFE4 80093E44 0C031AD5 */  jal   func_800C6B54
/* B0AFE8 80093E48 AC6F0000 */   sw    $t7, ($v1)
/* B0AFEC 80093E4C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AFF0 80093E50 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AFF4 80093E54 03E00008 */  jr    $ra
/* B0AFF8 80093E58 00000000 */   nop   


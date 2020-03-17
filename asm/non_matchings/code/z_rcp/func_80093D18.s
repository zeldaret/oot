.rdata
glabel D_8013EC10
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC1C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093D18
/* B0AEB8 80093D18 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AEBC 80093D1C AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AEC0 80093D20 00802825 */  move  $a1, $a0
/* B0AEC4 80093D24 3C068014 */  lui   $a2, %hi(D_8013EC10) # $a2, 0x8014
/* B0AEC8 80093D28 24C6EC10 */  addiu $a2, %lo(D_8013EC10) # addiu $a2, $a2, -0x13f0
/* B0AECC 80093D2C AFA50038 */  sw    $a1, 0x38($sp)
/* B0AED0 80093D30 27A40024 */  addiu $a0, $sp, 0x24
/* B0AED4 80093D34 0C031AB1 */  jal   func_800C6AC4
/* B0AED8 80093D38 240705C3 */   li    $a3, 1475
/* B0AEDC 80093D3C 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AEE0 80093D40 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0AEE4 80093D44 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0AEE8 80093D48 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AEEC 80093D4C 3C0FDE00 */  lui   $t7, 0xde00
/* B0AEF0 80093D50 3C068014 */  lui   $a2, %hi(D_8013EC1C) # $a2, 0x8014
/* B0AEF4 80093D54 246E0008 */  addiu $t6, $v1, 8
/* B0AEF8 80093D58 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AEFC 80093D5C 24C6EC1C */  addiu $a2, %lo(D_8013EC1C) # addiu $a2, $a2, -0x13e4
/* B0AF00 80093D60 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF04 80093D64 240705C7 */  li    $a3, 1479
/* B0AF08 80093D68 AC780004 */  sw    $t8, 4($v1)
/* B0AF0C 80093D6C 0C031AD5 */  jal   func_800C6B54
/* B0AF10 80093D70 AC6F0000 */   sw    $t7, ($v1)
/* B0AF14 80093D74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AF18 80093D78 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AF1C 80093D7C 03E00008 */  jr    $ra
/* B0AF20 80093D80 00000000 */   nop   


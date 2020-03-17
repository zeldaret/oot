.rdata
glabel D_8013EBE0
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EBEC
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093C14
/* B0ADB4 80093C14 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0ADB8 80093C18 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0ADBC 80093C1C 00802825 */  move  $a1, $a0
/* B0ADC0 80093C20 3C068014 */  lui   $a2, %hi(D_8013EBE0) # $a2, 0x8014
/* B0ADC4 80093C24 24C6EBE0 */  addiu $a2, %lo(D_8013EBE0) # addiu $a2, $a2, -0x1420
/* B0ADC8 80093C28 AFA50038 */  sw    $a1, 0x38($sp)
/* B0ADCC 80093C2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0ADD0 80093C30 0C031AB1 */  jal   func_800C6AC4
/* B0ADD4 80093C34 2407059F */   li    $a3, 1439
/* B0ADD8 80093C38 8FA50038 */  lw    $a1, 0x38($sp)
/* B0ADDC 80093C3C 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0ADE0 80093C40 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0ADE4 80093C44 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0ADE8 80093C48 3C0FDE00 */  lui   $t7, 0xde00
/* B0ADEC 80093C4C 3C068014 */  lui   $a2, %hi(D_8013EBEC) # $a2, 0x8014
/* B0ADF0 80093C50 246E0008 */  addiu $t6, $v1, 8
/* B0ADF4 80093C54 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0ADF8 80093C58 24C6EBEC */  addiu $a2, %lo(D_8013EBEC) # addiu $a2, $a2, -0x1414
/* B0ADFC 80093C5C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AE00 80093C60 240705A3 */  li    $a3, 1443
/* B0AE04 80093C64 AC780004 */  sw    $t8, 4($v1)
/* B0AE08 80093C68 0C031AD5 */  jal   func_800C6B54
/* B0AE0C 80093C6C AC6F0000 */   sw    $t7, ($v1)
/* B0AE10 80093C70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AE14 80093C74 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AE18 80093C78 03E00008 */  jr    $ra
/* B0AE1C 80093C7C 00000000 */   nop   


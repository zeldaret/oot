.rdata
glabel D_8013EC28
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC34
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093D84
/* B0AF24 80093D84 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AF28 80093D88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AF2C 80093D8C 00802825 */  move  $a1, $a0
/* B0AF30 80093D90 3C068014 */  lui   $a2, %hi(D_8013EC28) # $a2, 0x8014
/* B0AF34 80093D94 24C6EC28 */  addiu $a2, %lo(D_8013EC28) # addiu $a2, $a2, -0x13d8
/* B0AF38 80093D98 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AF3C 80093D9C 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF40 80093DA0 0C031AB1 */  jal   func_800C6AC4
/* B0AF44 80093DA4 240705D3 */   li    $a3, 1491
/* B0AF48 80093DA8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AF4C 80093DAC 3C188012 */  lui   $t8, %hi(D_80126730) # $t8, 0x8012
/* B0AF50 80093DB0 27186730 */  addiu $t8, %lo(D_80126730) # addiu $t8, $t8, 0x6730
/* B0AF54 80093DB4 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0AF58 80093DB8 3C0FDE00 */  lui   $t7, 0xde00
/* B0AF5C 80093DBC 3C068014 */  lui   $a2, %hi(D_8013EC34) # $a2, 0x8014
/* B0AF60 80093DC0 246E0008 */  addiu $t6, $v1, 8
/* B0AF64 80093DC4 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0AF68 80093DC8 24C6EC34 */  addiu $a2, %lo(D_8013EC34) # addiu $a2, $a2, -0x13cc
/* B0AF6C 80093DCC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AF70 80093DD0 240705D7 */  li    $a3, 1495
/* B0AF74 80093DD4 AC780004 */  sw    $t8, 4($v1)
/* B0AF78 80093DD8 0C031AD5 */  jal   func_800C6B54
/* B0AF7C 80093DDC AC6F0000 */   sw    $t7, ($v1)
/* B0AF80 80093DE0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AF84 80093DE4 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AF88 80093DE8 03E00008 */  jr    $ra
/* B0AF8C 80093DEC 00000000 */   nop   


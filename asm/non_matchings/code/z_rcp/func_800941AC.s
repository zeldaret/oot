.rdata
glabel D_8013ED00
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED0C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800941AC
/* B0B34C 800941AC 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B350 800941B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B354 800941B4 00802825 */  move  $a1, $a0
/* B0B358 800941B8 3C068014 */  lui   $a2, %hi(D_8013ED00) # $a2, 0x8014
/* B0B35C 800941BC 24C6ED00 */  addiu $a2, %lo(D_8013ED00) # addiu $a2, $a2, -0x1300
/* B0B360 800941C0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B364 800941C4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B368 800941C8 0C031AB1 */  jal   func_800C6AC4
/* B0B36C 800941CC 24070673 */   li    $a3, 1651
/* B0B370 800941D0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B374 800941D4 3C188012 */  lui   $t8, %hi(D_80126A90) # $t8, 0x8012
/* B0B378 800941D8 27186A90 */  addiu $t8, %lo(D_80126A90) # addiu $t8, $t8, 0x6a90
/* B0B37C 800941DC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B380 800941E0 3C0FDE00 */  lui   $t7, 0xde00
/* B0B384 800941E4 3C068014 */  lui   $a2, %hi(D_8013ED0C) # $a2, 0x8014
/* B0B388 800941E8 246E0008 */  addiu $t6, $v1, 8
/* B0B38C 800941EC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B390 800941F0 24C6ED0C */  addiu $a2, %lo(D_8013ED0C) # addiu $a2, $a2, -0x12f4
/* B0B394 800941F4 27A40024 */  addiu $a0, $sp, 0x24
/* B0B398 800941F8 24070677 */  li    $a3, 1655
/* B0B39C 800941FC AC780004 */  sw    $t8, 4($v1)
/* B0B3A0 80094200 0C031AD5 */  jal   func_800C6B54
/* B0B3A4 80094204 AC6F0000 */   sw    $t7, ($v1)
/* B0B3A8 80094208 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B3AC 8009420C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B3B0 80094210 03E00008 */  jr    $ra
/* B0B3B4 80094214 00000000 */   nop   


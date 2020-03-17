.rdata
glabel D_8013EB20
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EB2C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800938B4
/* B0AA54 800938B4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AA58 800938B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AA5C 800938BC 00802825 */  move  $a1, $a0
/* B0AA60 800938C0 3C068014 */  lui   $a2, %hi(D_8013EB20) # $a2, 0x8014
/* B0AA64 800938C4 24C6EB20 */  addiu $a2, %lo(D_8013EB20) # addiu $a2, $a2, -0x14e0
/* B0AA68 800938C8 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AA6C 800938CC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AA70 800938D0 0C031AB1 */  jal   func_800C6AC4
/* B0AA74 800938D4 2407051D */   li    $a3, 1309
/* B0AA78 800938D8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AA7C 800938DC 3C188012 */  lui   $t8, %hi(D_80126D30) # $t8, 0x8012
/* B0AA80 800938E0 27186D30 */  addiu $t8, %lo(D_80126D30) # addiu $t8, $t8, 0x6d30
/* B0AA84 800938E4 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AA88 800938E8 3C0FDE00 */  lui   $t7, 0xde00
/* B0AA8C 800938EC 3C068014 */  lui   $a2, %hi(D_8013EB2C) # $a2, 0x8014
/* B0AA90 800938F0 246E0008 */  addiu $t6, $v1, 8
/* B0AA94 800938F4 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AA98 800938F8 24C6EB2C */  addiu $a2, %lo(D_8013EB2C) # addiu $a2, $a2, -0x14d4
/* B0AA9C 800938FC 27A40024 */  addiu $a0, $sp, 0x24
/* B0AAA0 80093900 24070521 */  li    $a3, 1313
/* B0AAA4 80093904 AC780004 */  sw    $t8, 4($v1)
/* B0AAA8 80093908 0C031AD5 */  jal   func_800C6B54
/* B0AAAC 8009390C AC6F0000 */   sw    $t7, ($v1)
/* B0AAB0 80093910 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AAB4 80093914 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AAB8 80093918 03E00008 */  jr    $ra
/* B0AABC 8009391C 00000000 */   nop   


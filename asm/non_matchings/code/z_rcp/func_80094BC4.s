.rdata
glabel D_8013EE98
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EEA4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094BC4
/* B0BD64 80094BC4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0BD68 80094BC8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0BD6C 80094BCC 00802825 */  move  $a1, $a0
/* B0BD70 80094BD0 3C068014 */  lui   $a2, %hi(D_8013EE98) # $a2, 0x8014
/* B0BD74 80094BD4 24C6EE98 */  addiu $a2, %lo(D_8013EE98) # addiu $a2, $a2, -0x1168
/* B0BD78 80094BD8 AFA50038 */  sw    $a1, 0x38($sp)
/* B0BD7C 80094BDC 27A40024 */  addiu $a0, $sp, 0x24
/* B0BD80 80094BE0 0C031AB1 */  jal   func_800C6AC4
/* B0BD84 80094BE4 240707F8 */   li    $a3, 2040
/* B0BD88 80094BE8 8FA50038 */  lw    $a1, 0x38($sp)
/* B0BD8C 80094BEC 3C188012 */  lui   $t8, %hi(D_80126DC0) # $t8, 0x8012
/* B0BD90 80094BF0 27186DC0 */  addiu $t8, %lo(D_80126DC0) # addiu $t8, $t8, 0x6dc0
/* B0BD94 80094BF4 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BD98 80094BF8 3C0FDE00 */  lui   $t7, 0xde00
/* B0BD9C 80094BFC 3C08E300 */  lui   $t0, (0xE3001801 >> 16) # lui $t0, 0xe300
/* B0BDA0 80094C00 246E0008 */  addiu $t6, $v1, 8
/* B0BDA4 80094C04 ACAE02D0 */  sw    $t6, 0x2d0($a1)
/* B0BDA8 80094C08 AC780004 */  sw    $t8, 4($v1)
/* B0BDAC 80094C0C AC6F0000 */  sw    $t7, ($v1)
/* B0BDB0 80094C10 8CA302D0 */  lw    $v1, 0x2d0($a1)
/* B0BDB4 80094C14 35081801 */  ori   $t0, (0xE3001801 & 0xFFFF) # ori $t0, $t0, 0x1801
/* B0BDB8 80094C18 240900C0 */  li    $t1, 192
/* B0BDBC 80094C1C 24790008 */  addiu $t9, $v1, 8
/* B0BDC0 80094C20 3C068014 */  lui   $a2, %hi(D_8013EEA4) # $a2, 0x8014
/* B0BDC4 80094C24 ACB902D0 */  sw    $t9, 0x2d0($a1)
/* B0BDC8 80094C28 24C6EEA4 */  addiu $a2, %lo(D_8013EEA4) # addiu $a2, $a2, -0x115c
/* B0BDCC 80094C2C 27A40024 */  addiu $a0, $sp, 0x24
/* B0BDD0 80094C30 240707FB */  li    $a3, 2043
/* B0BDD4 80094C34 AC690004 */  sw    $t1, 4($v1)
/* B0BDD8 80094C38 0C031AD5 */  jal   func_800C6B54
/* B0BDDC 80094C3C AC680000 */   sw    $t0, ($v1)
/* B0BDE0 80094C40 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0BDE4 80094C44 27BD0038 */  addiu $sp, $sp, 0x38
/* B0BDE8 80094C48 03E00008 */  jr    $ra
/* B0BDEC 80094C4C 00000000 */   nop   


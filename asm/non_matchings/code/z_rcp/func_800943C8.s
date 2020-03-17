.rdata
glabel D_8013ED78
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ED84
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_800943C8
/* B0B568 800943C8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B56C 800943CC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B570 800943D0 00802825 */  move  $a1, $a0
/* B0B574 800943D4 3C068014 */  lui   $a2, %hi(D_8013ED78) # $a2, 0x8014
/* B0B578 800943D8 24C6ED78 */  addiu $a2, %lo(D_8013ED78) # addiu $a2, $a2, -0x1288
/* B0B57C 800943DC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B580 800943E0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B584 800943E4 0C031AB1 */  jal   func_800C6AC4
/* B0B588 800943E8 240706DE */   li    $a3, 1758
/* B0B58C 800943EC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B590 800943F0 3C188012 */  lui   $t8, %hi(D_80126970) # $t8, 0x8012
/* B0B594 800943F4 27186970 */  addiu $t8, %lo(D_80126970) # addiu $t8, $t8, 0x6970
/* B0B598 800943F8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B59C 800943FC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B5A0 80094400 3C068014 */  lui   $a2, %hi(D_8013ED84) # $a2, 0x8014
/* B0B5A4 80094404 246E0008 */  addiu $t6, $v1, 8
/* B0B5A8 80094408 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B5AC 8009440C 24C6ED84 */  addiu $a2, %lo(D_8013ED84) # addiu $a2, $a2, -0x127c
/* B0B5B0 80094410 27A40024 */  addiu $a0, $sp, 0x24
/* B0B5B4 80094414 240706E2 */  li    $a3, 1762
/* B0B5B8 80094418 AC780004 */  sw    $t8, 4($v1)
/* B0B5BC 8009441C 0C031AD5 */  jal   func_800C6B54
/* B0B5C0 80094420 AC6F0000 */   sw    $t7, ($v1)
/* B0B5C4 80094424 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B5C8 80094428 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B5CC 8009442C 03E00008 */  jr    $ra
/* B0B5D0 80094430 00000000 */   nop   


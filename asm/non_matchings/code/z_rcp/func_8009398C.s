.rdata
glabel D_8013EB50
    .asciz "../z_rcp.c"
    .balign 4
glabel D_8013EB5C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_8009398C
/* B0AB2C 8009398C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AB30 80093990 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AB34 80093994 00802825 */  move  $a1, $a0
/* B0AB38 80093998 3C068014 */  lui   $a2, %hi(D_8013EB50) # $a2, 0x8014
/* B0AB3C 8009399C 24C6EB50 */  addiu $a2, %lo(D_8013EB50) # addiu $a2, $a2, -0x14b0
/* B0AB40 800939A0 AFA50038 */  sw    $a1, 0x38($sp)
/* B0AB44 800939A4 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB48 800939A8 0C031AB1 */  jal   func_800C6AC4
/* B0AB4C 800939AC 2407053D */   li    $a3, 1341
/* B0AB50 800939B0 8FA50038 */  lw    $a1, 0x38($sp)
/* B0AB54 800939B4 3C188012 */  lui   $t8, %hi(D_80126C10) # $t8, 0x8012
/* B0AB58 800939B8 27186C10 */  addiu $t8, %lo(D_80126C10) # addiu $t8, $t8, 0x6c10
/* B0AB5C 800939BC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AB60 800939C0 3C0FDE00 */  lui   $t7, 0xde00
/* B0AB64 800939C4 3C068014 */  lui   $a2, %hi(D_8013EB5C) # $a2, 0x8014
/* B0AB68 800939C8 246E0008 */  addiu $t6, $v1, 8
/* B0AB6C 800939CC ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0AB70 800939D0 24C6EB5C */  addiu $a2, %lo(D_8013EB5C) # addiu $a2, $a2, -0x14a4
/* B0AB74 800939D4 27A40024 */  addiu $a0, $sp, 0x24
/* B0AB78 800939D8 24070541 */  li    $a3, 1345
/* B0AB7C 800939DC AC780004 */  sw    $t8, 4($v1)
/* B0AB80 800939E0 0C031AD5 */  jal   func_800C6B54
/* B0AB84 800939E4 AC6F0000 */   sw    $t7, ($v1)
/* B0AB88 800939E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AB8C 800939EC 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AB90 800939F0 03E00008 */  jr    $ra
/* B0AB94 800939F4 00000000 */   nop   


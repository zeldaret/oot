.rdata
glabel D_8013EC70
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC7C
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093EC8
/* B0B068 80093EC8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B06C 80093ECC AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B070 80093ED0 00802825 */  move  $a1, $a0
/* B0B074 80093ED4 3C068014 */  lui   $a2, %hi(D_8013EC70) # $a2, 0x8014
/* B0B078 80093ED8 24C6EC70 */  addiu $a2, %lo(D_8013EC70) # addiu $a2, $a2, -0x1390
/* B0B07C 80093EDC AFA50038 */  sw    $a1, 0x38($sp)
/* B0B080 80093EE0 27A40024 */  addiu $a0, $sp, 0x24
/* B0B084 80093EE4 0C031AB1 */  jal   func_800C6AC4
/* B0B088 80093EE8 24070603 */   li    $a3, 1539
/* B0B08C 80093EEC 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B090 80093EF0 3C188012 */  lui   $t8, %hi(D_801268B0) # $t8, 0x8012
/* B0B094 80093EF4 271868B0 */  addiu $t8, %lo(D_801268B0) # addiu $t8, $t8, 0x68b0
/* B0B098 80093EF8 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B09C 80093EFC 3C0FDE00 */  lui   $t7, 0xde00
/* B0B0A0 80093F00 3C068014 */  lui   $a2, %hi(D_8013EC7C) # $a2, 0x8014
/* B0B0A4 80093F04 246E0008 */  addiu $t6, $v1, 8
/* B0B0A8 80093F08 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B0AC 80093F0C 24C6EC7C */  addiu $a2, %lo(D_8013EC7C) # addiu $a2, $a2, -0x1384
/* B0B0B0 80093F10 27A40024 */  addiu $a0, $sp, 0x24
/* B0B0B4 80093F14 24070607 */  li    $a3, 1543
/* B0B0B8 80093F18 AC780004 */  sw    $t8, 4($v1)
/* B0B0BC 80093F1C 0C031AD5 */  jal   func_800C6B54
/* B0B0C0 80093F20 AC6F0000 */   sw    $t7, ($v1)
/* B0B0C4 80093F24 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B0C8 80093F28 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B0CC 80093F2C 03E00008 */  jr    $ra
/* B0B0D0 80093F30 00000000 */   nop   


.rdata
glabel D_8013ECE8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013ECF4
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80094140
/* B0B2E0 80094140 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0B2E4 80094144 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0B2E8 80094148 00802825 */  move  $a1, $a0
/* B0B2EC 8009414C 3C068014 */  lui   $a2, %hi(D_8013ECE8) # $a2, 0x8014
/* B0B2F0 80094150 24C6ECE8 */  addiu $a2, %lo(D_8013ECE8) # addiu $a2, $a2, -0x1318
/* B0B2F4 80094154 AFA50038 */  sw    $a1, 0x38($sp)
/* B0B2F8 80094158 27A40024 */  addiu $a0, $sp, 0x24
/* B0B2FC 8009415C 0C031AB1 */  jal   func_800C6AC4
/* B0B300 80094160 24070668 */   li    $a3, 1640
/* B0B304 80094164 8FA50038 */  lw    $a1, 0x38($sp)
/* B0B308 80094168 3C188012 */  lui   $t8, %hi(D_801267C0) # $t8, 0x8012
/* B0B30C 8009416C 271867C0 */  addiu $t8, %lo(D_801267C0) # addiu $t8, $t8, 0x67c0
/* B0B310 80094170 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0B314 80094174 3C0FDE00 */  lui   $t7, 0xde00
/* B0B318 80094178 3C068014 */  lui   $a2, %hi(D_8013ECF4) # $a2, 0x8014
/* B0B31C 8009417C 246E0008 */  addiu $t6, $v1, 8
/* B0B320 80094180 ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B0B324 80094184 24C6ECF4 */  addiu $a2, %lo(D_8013ECF4) # addiu $a2, $a2, -0x130c
/* B0B328 80094188 27A40024 */  addiu $a0, $sp, 0x24
/* B0B32C 8009418C 2407066C */  li    $a3, 1644
/* B0B330 80094190 AC780004 */  sw    $t8, 4($v1)
/* B0B334 80094194 0C031AD5 */  jal   func_800C6B54
/* B0B338 80094198 AC6F0000 */   sw    $t7, ($v1)
/* B0B33C 8009419C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0B340 800941A0 27BD0038 */  addiu $sp, $sp, 0x38
/* B0B344 800941A4 03E00008 */  jr    $ra
/* B0B348 800941A8 00000000 */   nop   


.rdata
glabel D_8013EBF8
    .asciz "../z_rcp.c"
    .balign 4

glabel D_8013EC04
    .asciz "../z_rcp.c"
    .balign 4

.text
glabel func_80093C80
/* B0AE20 80093C80 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B0AE24 80093C84 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0AE28 80093C88 AFA40038 */  sw    $a0, 0x38($sp)
/* B0AE2C 80093C8C 8C850000 */  lw    $a1, ($a0)
/* B0AE30 80093C90 00A02025 */  move  $a0, $a1
/* B0AE34 80093C94 0C024F46 */  jal   func_80093D18
/* B0AE38 80093C98 AFA50034 */   sw    $a1, 0x34($sp)
/* B0AE3C 80093C9C 8FAF0038 */  lw    $t7, 0x38($sp)
/* B0AE40 80093CA0 3C180001 */  lui   $t8, 1
/* B0AE44 80093CA4 24010003 */  li    $at, 3
/* B0AE48 80093CA8 030FC021 */  addu  $t8, $t8, $t7
/* B0AE4C 80093CAC 93181CBF */  lbu   $t8, 0x1cbf($t8)
/* B0AE50 80093CB0 8FA50034 */  lw    $a1, 0x34($sp)
/* B0AE54 80093CB4 27A40020 */  addiu $a0, $sp, 0x20
/* B0AE58 80093CB8 17010013 */  bne   $t8, $at, .L80093D08
/* B0AE5C 80093CBC 3C068014 */   lui   $a2, %hi(D_8013EBF8) # $a2, 0x8014
/* B0AE60 80093CC0 24C6EBF8 */  addiu $a2, %lo(D_8013EBF8) # addiu $a2, $a2, -0x1408
/* B0AE64 80093CC4 240705B4 */  li    $a3, 1460
/* B0AE68 80093CC8 0C031AB1 */  jal   func_800C6AC4
/* B0AE6C 80093CCC AFA50034 */   sw    $a1, 0x34($sp)
/* B0AE70 80093CD0 8FA50034 */  lw    $a1, 0x34($sp)
/* B0AE74 80093CD4 3C08E300 */  lui   $t0, (0xE3001801 >> 16) # lui $t0, 0xe300
/* B0AE78 80093CD8 35081801 */  ori   $t0, (0xE3001801 & 0xFFFF) # ori $t0, $t0, 0x1801
/* B0AE7C 80093CDC 8CA302C0 */  lw    $v1, 0x2c0($a1)
/* B0AE80 80093CE0 240900C0 */  li    $t1, 192
/* B0AE84 80093CE4 3C068014 */  lui   $a2, %hi(D_8013EC04) # $a2, 0x8014
/* B0AE88 80093CE8 24790008 */  addiu $t9, $v1, 8
/* B0AE8C 80093CEC ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B0AE90 80093CF0 24C6EC04 */  addiu $a2, %lo(D_8013EC04) # addiu $a2, $a2, -0x13fc
/* B0AE94 80093CF4 27A40020 */  addiu $a0, $sp, 0x20
/* B0AE98 80093CF8 240705B6 */  li    $a3, 1462
/* B0AE9C 80093CFC AC690004 */  sw    $t1, 4($v1)
/* B0AEA0 80093D00 0C031AD5 */  jal   func_800C6B54
/* B0AEA4 80093D04 AC680000 */   sw    $t0, ($v1)
.L80093D08:
/* B0AEA8 80093D08 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0AEAC 80093D0C 27BD0038 */  addiu $sp, $sp, 0x38
/* B0AEB0 80093D10 03E00008 */  jr    $ra
/* B0AEB4 80093D14 00000000 */   nop   


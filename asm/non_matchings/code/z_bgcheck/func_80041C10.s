glabel func_80041C10
/* AB8DB0 80041C10 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8DB4 80041C14 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8DB8 80041C18 AFA5001C */  sw    $a1, 0x1c($sp)
/* AB8DBC 80041C1C 0C00F131 */  jal   T_BGCheck_getBGDataInfo
/* AB8DC0 80041C20 00C02825 */   move  $a1, $a2
/* AB8DC4 80041C24 14400003 */  bnez  $v0, .L80041C34
/* AB8DC8 80041C28 8FBF0014 */   lw    $ra, 0x14($sp)
/* AB8DCC 80041C2C 10000018 */  b     .L80041C90
/* AB8DD0 80041C30 00001025 */   move  $v0, $zero
.L80041C34:
/* AB8DD4 80041C34 3C058016 */  lui   $a1, %hi(gSegments) # $a1, 0x8016
/* AB8DD8 80041C38 24A56FA8 */  addiu $a1, %lo(gSegments) # addiu $a1, $a1, 0x6fa8
/* AB8DDC 80041C3C 8CAE0000 */  lw    $t6, ($a1)
/* AB8DE0 80041C40 8C440020 */  lw    $a0, 0x20($v0)
/* AB8DE4 80041C44 3C068000 */  lui   $a2, 0x8000
/* AB8DE8 80041C48 01C67821 */  addu  $t7, $t6, $a2
/* AB8DEC 80041C4C 148F0003 */  bne   $a0, $t7, .L80041C5C
/* AB8DF0 80041C50 8FB8001C */   lw    $t8, 0x1c($sp)
/* AB8DF4 80041C54 1000000E */  b     .L80041C90
/* AB8DF8 80041C58 00001025 */   move  $v0, $zero
.L80041C5C:
/* AB8DFC 80041C5C 0018C8C0 */  sll   $t9, $t8, 3
/* AB8E00 80041C60 00994021 */  addu  $t0, $a0, $t9
/* AB8E04 80041C64 8D030004 */  lw    $v1, 4($t0)
/* AB8E08 80041C68 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AB8E0C 80041C6C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AB8E10 80041C70 00035100 */  sll   $t2, $v1, 4
/* AB8E14 80041C74 000A5F02 */  srl   $t3, $t2, 0x1c
/* AB8E18 80041C78 000B6080 */  sll   $t4, $t3, 2
/* AB8E1C 80041C7C 00AC6821 */  addu  $t5, $a1, $t4
/* AB8E20 80041C80 8DAE0000 */  lw    $t6, ($t5)
/* AB8E24 80041C84 00614824 */  and   $t1, $v1, $at
/* AB8E28 80041C88 012E7821 */  addu  $t7, $t1, $t6
/* AB8E2C 80041C8C 01E61021 */  addu  $v0, $t7, $a2
.L80041C90:
/* AB8E30 80041C90 03E00008 */  jr    $ra
/* AB8E34 80041C94 27BD0018 */   addiu $sp, $sp, 0x18


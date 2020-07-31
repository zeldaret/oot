glabel func_800E1F38
/* B590D8 800E1F38 3C068017 */  lui   $a2, %hi(gAudioContext) # $a2, 0x8017
/* B590DC 800E1F3C 24C6F180 */  addiu $a2, %lo(gAudioContext) # addiu $a2, $a2, -0xe80
/* B590E0 800E1F40 8CC2283C */  lw    $v0, 0x283c($a2)
/* B590E4 800E1F44 00047040 */  sll   $t6, $a0, 1
/* B590E8 800E1F48 004E7821 */  addu  $t7, $v0, $t6
/* B590EC 800E1F4C 95E30000 */  lhu   $v1, ($t7)
/* B590F0 800E1F50 0062C021 */  addu  $t8, $v1, $v0
/* B590F4 800E1F54 93190000 */  lbu   $t9, ($t8)
/* B590F8 800E1F58 24630001 */  addiu $v1, $v1, 1
/* B590FC 800E1F5C 17200003 */  bnez  $t9, .L800E1F6C
/* B59100 800E1F60 ACB90000 */   sw    $t9, ($a1)
/* B59104 800E1F64 03E00008 */  jr    $ra
/* B59108 800E1F68 00001025 */   move  $v0, $zero

.L800E1F6C:
/* B5910C 800E1F6C 8CC9283C */  lw    $t1, 0x283c($a2)
/* B59110 800E1F70 01231021 */  addu  $v0, $t1, $v1
/* B59114 800E1F74 03E00008 */  jr    $ra
/* B59118 800E1F78 00000000 */   nop


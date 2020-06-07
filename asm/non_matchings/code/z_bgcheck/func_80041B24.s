glabel func_80041B24
/* AB8CC4 80041B24 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB8CC8 80041B28 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB8CCC 80041B2C AFA5001C */  sw    $a1, 0x1c($sp)
/* AB8CD0 80041B30 0C00F131 */  jal   T_BGCheck_getBGDataInfo
/* AB8CD4 80041B34 00C02825 */   move  $a1, $a2
/* AB8CD8 80041B38 14400003 */  bnez  $v0, .L80041B48
/* AB8CDC 80041B3C 8FBF0014 */   lw    $ra, 0x14($sp)
/* AB8CE0 80041B40 1000000D */  b     .L80041B78
/* AB8CE4 80041B44 00001025 */   move  $v0, $zero
.L80041B48:
/* AB8CE8 80041B48 8C430020 */  lw    $v1, 0x20($v0)
/* AB8CEC 80041B4C 3C0F8016 */  lui   $t7, %hi(gSegments) # $t7, 0x8016
/* AB8CF0 80041B50 8DEF6FA8 */  lw    $t7, %lo(gSegments)($t7)
/* AB8CF4 80041B54 3C018000 */  lui   $at, 0x8000
/* AB8CF8 80041B58 00617021 */  addu  $t6, $v1, $at
/* AB8CFC 80041B5C 15CF0003 */  bne   $t6, $t7, .L80041B6C
/* AB8D00 80041B60 8FB8001C */   lw    $t8, 0x1c($sp)
/* AB8D04 80041B64 10000004 */  b     .L80041B78
/* AB8D08 80041B68 00001025 */   move  $v0, $zero
.L80041B6C:
/* AB8D0C 80041B6C 0018C8C0 */  sll   $t9, $t8, 3
/* AB8D10 80041B70 00794021 */  addu  $t0, $v1, $t9
/* AB8D14 80041B74 95020002 */  lhu   $v0, 2($t0)
.L80041B78:
/* AB8D18 80041B78 03E00008 */  jr    $ra
/* AB8D1C 80041B7C 27BD0018 */   addiu $sp, $sp, 0x18


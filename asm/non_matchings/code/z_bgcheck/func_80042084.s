glabel func_80042084
/* AB9224 80042084 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9228 80042088 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB922C 8004208C AFA5001C */  sw    $a1, 0x1c($sp)
/* AB9230 80042090 0C00F131 */  jal   T_BGCheck_getBGDataInfo
/* AB9234 80042094 00C02825 */   move  $a1, $a2
/* AB9238 80042098 14400003 */  bnez  $v0, .L800420A8
/* AB923C 8004209C 8FBF0014 */   lw    $ra, 0x14($sp)
/* AB9240 800420A0 10000005 */  b     .L800420B8
/* AB9244 800420A4 24020001 */   li    $v0, 1
.L800420A8:
/* AB9248 800420A8 8FAE001C */  lw    $t6, 0x1c($sp)
/* AB924C 800420AC 95C30004 */  lhu   $v1, 4($t6)
/* AB9250 800420B0 30632000 */  andi  $v1, $v1, 0x2000
/* AB9254 800420B4 0003102B */  sltu  $v0, $zero, $v1
.L800420B8:
/* AB9258 800420B8 03E00008 */  jr    $ra
/* AB925C 800420BC 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800420C0
/* AB9260 800420C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB9264 800420C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB9268 800420C8 0C01066C */  jal   func_800419B0
/* AB926C 800420CC 24070001 */   li    $a3, 1
/* AB9270 800420D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB9274 800420D4 00021482 */  srl   $v0, $v0, 0x12
/* AB9278 800420D8 30420007 */  andi  $v0, $v0, 7
/* AB927C 800420DC 03E00008 */  jr    $ra
/* AB9280 800420E0 27BD0018 */   addiu $sp, $sp, 0x18


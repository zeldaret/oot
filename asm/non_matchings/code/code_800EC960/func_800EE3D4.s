glabel func_800EE3D4
/* B65574 800EE3D4 3C038017 */  lui   $v1, %hi(D_8016B9F8) # $v1, 0x8017
/* B65578 800EE3D8 2463B9F8 */  addiu $v1, %lo(D_8016B9F8) # addiu $v1, $v1, -0x4608
/* B6557C 800EE3DC 906E0001 */  lbu   $t6, 1($v1)
/* B65580 800EE3E0 29C100FE */  slti  $at, $t6, 0xfe
/* B65584 800EE3E4 10200002 */  beqz  $at, .L800EE3F0
/* B65588 800EE3E8 3C018013 */   lui   $at, %hi(D_80130F3C) # $at, 0x8013
/* B6558C 800EE3EC AC200F3C */  sw    $zero, %lo(D_80130F3C)($at)
.L800EE3F0:
/* B65590 800EE3F0 03E00008 */  jr    $ra
/* B65594 800EE3F4 00601025 */   move  $v0, $v1


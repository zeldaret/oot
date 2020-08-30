glabel Audio_AllocZeroed
/* B55520 800DE380 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55524 800DE384 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55528 800DE388 0C0378F7 */  jal   Audio_Alloc
/* B5552C 800DE38C AFA40018 */   sw    $a0, 0x18($sp)
/* B55530 800DE390 8FA40018 */  lw    $a0, 0x18($sp)
/* B55534 800DE394 1040000C */  beqz  $v0, .L800DE3C8
/* B55538 800DE398 00402825 */   move  $a1, $v0
/* B5553C 800DE39C 8C8E0004 */  lw    $t6, 4($a0)
/* B55540 800DE3A0 00401825 */  move  $v1, $v0
/* B55544 800DE3A4 004E082B */  sltu  $at, $v0, $t6
/* B55548 800DE3A8 50200008 */  beql  $at, $zero, .L800DE3CC
/* B5554C 800DE3AC 8FBF0014 */   lw    $ra, 0x14($sp)
/* B55550 800DE3B0 A0600000 */  sb    $zero, ($v1)
.L800DE3B4:
/* B55554 800DE3B4 8C8F0004 */  lw    $t7, 4($a0)
/* B55558 800DE3B8 24630001 */  addiu $v1, $v1, 1
/* B5555C 800DE3BC 006F082B */  sltu  $at, $v1, $t7
/* B55560 800DE3C0 5420FFFC */  bnezl $at, .L800DE3B4
/* B55564 800DE3C4 A0600000 */   sb    $zero, ($v1)
.L800DE3C8:
/* B55568 800DE3C8 8FBF0014 */  lw    $ra, 0x14($sp)
.L800DE3CC:
/* B5556C 800DE3CC 27BD0018 */  addiu $sp, $sp, 0x18
/* B55570 800DE3D0 00A01025 */  move  $v0, $a1
/* B55574 800DE3D4 03E00008 */  jr    $ra
/* B55578 800DE3D8 00000000 */   nop   


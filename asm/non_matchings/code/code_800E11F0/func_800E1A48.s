glabel func_800E1A48
/* B58BE8 800E1A48 240100FF */  li    $at, 255
/* B58BEC 800E1A4C 10810008 */  beq   $a0, $at, .L800E1A70
/* B58BF0 800E1A50 3C0E8017 */   lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B58BF4 800E1A54 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B58BF8 800E1A58 008E1021 */  addu  $v0, $a0, $t6
/* B58BFC 800E1A5C 904F3498 */  lbu   $t7, 0x3498($v0)
/* B58C00 800E1A60 24010005 */  li    $at, 5
/* B58C04 800E1A64 11E10002 */  beq   $t7, $at, .L800E1A70
/* B58C08 800E1A68 00000000 */   nop
/* B58C0C 800E1A6C A0453498 */  sb    $a1, 0x3498($v0)
.L800E1A70:
/* B58C10 800E1A70 03E00008 */  jr    $ra
/* B58C14 800E1A74 00000000 */   nop


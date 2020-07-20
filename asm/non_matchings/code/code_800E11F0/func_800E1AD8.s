glabel func_800E1AD8
/* B58C78 800E1AD8 240100FF */  li    $at, 255
/* B58C7C 800E1ADC 10810008 */  beq   $a0, $at, .L800E1B00
/* B58C80 800E1AE0 3C0E8017 */   lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B58C84 800E1AE4 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B58C88 800E1AE8 008E1021 */  addu  $v0, $a0, $t6
/* B58C8C 800E1AEC 904F3438 */  lbu   $t7, 0x3438($v0)
/* B58C90 800E1AF0 24010005 */  li    $at, 5
/* B58C94 800E1AF4 11E10002 */  beq   $t7, $at, .L800E1B00
/* B58C98 800E1AF8 00000000 */   nop
/* B58C9C 800E1AFC A0453438 */  sb    $a1, 0x3438($v0)
.L800E1B00:
/* B58CA0 800E1B00 03E00008 */  jr    $ra
/* B58CA4 800E1B04 00000000 */   nop


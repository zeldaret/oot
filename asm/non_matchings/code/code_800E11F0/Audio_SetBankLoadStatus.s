glabel Audio_SetBankLoadStatus
/* B58BB8 800E1A18 240100FF */  li    $at, 255
/* B58BBC 800E1A1C 10810008 */  beq   $a0, $at, .L800E1A40
/* B58BC0 800E1A20 3C0E8017 */   lui   $t6, %hi(gAudioContext) # $t6, 0x8017
/* B58BC4 800E1A24 25CEF180 */  addiu $t6, %lo(gAudioContext) # addiu $t6, $t6, -0xe80
/* B58BC8 800E1A28 008E1021 */  addu  $v0, $a0, $t6
/* B58BCC 800E1A2C 904F3468 */  lbu   $t7, 0x3468($v0)
/* B58BD0 800E1A30 24010005 */  li    $at, 5
/* B58BD4 800E1A34 11E10002 */  beq   $t7, $at, .L800E1A40
/* B58BD8 800E1A38 00000000 */   nop
/* B58BDC 800E1A3C A0453468 */  sb    $a1, 0x3468($v0)
.L800E1A40:
/* B58BE0 800E1A40 03E00008 */  jr    $ra
/* B58BE4 800E1A44 00000000 */   nop


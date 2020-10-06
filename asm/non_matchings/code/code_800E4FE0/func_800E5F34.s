glabel func_800E5F34
/* B5D0D4 800E5F34 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B5D0D8 800E5F38 AFB1001C */  sw    $s1, 0x1c($sp)
/* B5D0DC 800E5F3C AFB20020 */  sw    $s2, 0x20($sp)
/* B5D0E0 800E5F40 AFB00018 */  sw    $s0, 0x18($sp)
/* B5D0E4 800E5F44 3C118017 */  lui   $s1, %hi(gAudioContext) # $s1, 0x8017
/* B5D0E8 800E5F48 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5D0EC 800E5F4C 2631F180 */  addiu $s1, %lo(gAudioContext) # addiu $s1, $s1, -0xe80
/* B5D0F0 800E5F50 2410FFFF */  li    $s0, -1
/* B5D0F4 800E5F54 27B20028 */  addiu $s2, $sp, 0x28
/* B5D0F8 800E5F58 8E245BE4 */  lw    $a0, 0x5be4($s1)
.L800E5F5C:
/* B5D0FC 800E5F5C 02402825 */  move  $a1, $s2
/* B5D100 800E5F60 0C000CA0 */  jal   osRecvMesg
/* B5D104 800E5F64 00003025 */   move  $a2, $zero
/* B5D108 800E5F68 5450FFFC */  bnel  $v0, $s0, .L800E5F5C
/* B5D10C 800E5F6C 8E245BE4 */   lw    $a0, 0x5be4($s1)
/* B5D110 800E5F70 8FBF0024 */  lw    $ra, 0x24($sp)
/* B5D114 800E5F74 8FB00018 */  lw    $s0, 0x18($sp)
/* B5D118 800E5F78 8FB1001C */  lw    $s1, 0x1c($sp)
/* B5D11C 800E5F7C 8FB20020 */  lw    $s2, 0x20($sp)
/* B5D120 800E5F80 03E00008 */  jr    $ra
/* B5D124 800E5F84 27BD0030 */   addiu $sp, $sp, 0x30


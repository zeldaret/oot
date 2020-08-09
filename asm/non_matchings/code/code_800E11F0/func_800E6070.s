glabel func_800E6070
/* B5D210 800E6070 00047080 */  sll   $t6, $a0, 2
/* B5D214 800E6074 01C47023 */  subu  $t6, $t6, $a0
/* B5D218 800E6078 000E7080 */  sll   $t6, $t6, 2
/* B5D21C 800E607C 01C47023 */  subu  $t6, $t6, $a0
/* B5D220 800E6080 3C0F8017 */  lui   $t7, %hi(gAudioContext) # $t7, 0x8017
/* B5D224 800E6084 25EFF180 */  addiu $t7, %lo(gAudioContext) # addiu $t7, $t7, -0xe80
/* B5D228 800E6088 000E7140 */  sll   $t6, $t6, 5
/* B5D22C 800E608C 01CF1821 */  addu  $v1, $t6, $t7
/* B5D230 800E6090 8C783530 */  lw    $t8, 0x3530($v1)
/* B5D234 800E6094 00054080 */  sll   $t0, $a1, 2
/* B5D238 800E6098 00684821 */  addu  $t1, $v1, $t0
/* B5D23C 800E609C 0018CFC2 */  srl   $t9, $t8, 0x1f
/* B5D240 800E60A0 53200006 */  beql  $t9, $zero, .L800E60BC
/* B5D244 800E60A4 2402FFFF */   li    $v0, -1
/* B5D248 800E60A8 8D243568 */  lw    $a0, 0x3568($t1)
/* B5D24C 800E60AC 00865021 */  addu  $t2, $a0, $a2
/* B5D250 800E60B0 03E00008 */  jr    $ra
/* B5D254 800E60B4 814200C4 */   lb    $v0, 0xc4($t2)
/* B5D258 800E60B8 2402FFFF */  li    $v0, -1
.L800E60BC:
/* B5D25C 800E60BC 03E00008 */  jr    $ra
/* B5D260 800E60C0 00000000 */   nop


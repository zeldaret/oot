glabel func_800DE1B4
/* B55354 800DE1B4 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B55358 800DE1B8 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B5535C 800DE1BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B55360 800DE1C0 AFB20020 */  sw    $s2, 0x20($sp)
/* B55364 800DE1C4 AFB1001C */  sw    $s1, 0x1c($sp)
/* B55368 800DE1C8 00809025 */  move  $s2, $a0
/* B5536C 800DE1CC AFBF0024 */  sw    $ra, 0x24($sp)
/* B55370 800DE1D0 AFB00018 */  sw    $s0, 0x18($sp)
/* B55374 800DE1D4 18400012 */  blez  $v0, .L800DE220
/* B55378 800DE1D8 00008825 */   move  $s1, $zero
/* B5537C 800DE1DC 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B55380 800DE1E0 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800DE1E4:
/* B55384 800DE1E4 8E0E3530 */  lw    $t6, 0x3530($s0)
/* B55388 800DE1E8 000E7FC2 */  srl   $t7, $t6, 0x1f
/* B5538C 800DE1EC 51E00009 */  beql  $t7, $zero, .L800DE214
/* B55390 800DE1F0 26310001 */   addiu $s1, $s1, 1
/* B55394 800DE1F4 92183534 */  lbu   $t8, 0x3534($s0)
/* B55398 800DE1F8 56580006 */  bnel  $s2, $t8, .L800DE214
/* B5539C 800DE1FC 26310001 */   addiu $s1, $s1, 1
/* B553A0 800DE200 0C03A6DB */  jal   Audio_SequencePlayerDisable
/* B553A4 800DE204 26043530 */   addiu $a0, $s0, 0x3530
/* B553A8 800DE208 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B553AC 800DE20C 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B553B0 800DE210 26310001 */  addiu $s1, $s1, 1
.L800DE214:
/* B553B4 800DE214 0222082A */  slt   $at, $s1, $v0
/* B553B8 800DE218 1420FFF2 */  bnez  $at, .L800DE1E4
/* B553BC 800DE21C 26100160 */   addiu $s0, $s0, 0x160
.L800DE220:
/* B553C0 800DE220 8FBF0024 */  lw    $ra, 0x24($sp)
/* B553C4 800DE224 8FB00018 */  lw    $s0, 0x18($sp)
/* B553C8 800DE228 8FB1001C */  lw    $s1, 0x1c($sp)
/* B553CC 800DE22C 8FB20020 */  lw    $s2, 0x20($sp)
/* B553D0 800DE230 03E00008 */  jr    $ra
/* B553D4 800DE234 27BD0028 */   addiu $sp, $sp, 0x28


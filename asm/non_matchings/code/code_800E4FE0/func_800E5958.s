glabel func_800E5958
/* B5CAF8 800E5958 14A00002 */  bnez  $a1, .L800E5964
/* B5CAFC 800E595C 00047080 */   sll   $t6, $a0, 2
/* B5CB00 800E5960 24050001 */  li    $a1, 1
.L800E5964:
/* B5CB04 800E5964 44853000 */  mtc1  $a1, $f6
/* B5CB08 800E5968 01C47023 */  subu  $t6, $t6, $a0
/* B5CB0C 800E596C 000E7080 */  sll   $t6, $t6, 2
/* B5CB10 800E5970 01C47023 */  subu  $t6, $t6, $a0
/* B5CB14 800E5974 46803220 */  cvt.s.w $f8, $f6
/* B5CB18 800E5978 000E7140 */  sll   $t6, $t6, 5
/* B5CB1C 800E597C 3C188017 */  lui   $t8, %hi(gAudioContext) # $t8, 0x8017
/* B5CB20 800E5980 2718F180 */  addiu $t8, %lo(gAudioContext) # addiu $t8, $t8, -0xe80
/* B5CB24 800E5984 25CF3530 */  addiu $t7, $t6, 0x3530
/* B5CB28 800E5988 01F81021 */  addu  $v0, $t7, $t8
/* B5CB2C 800E598C C444001C */  lwc1  $f4, 0x1c($v0)
/* B5CB30 800E5990 24190002 */  li    $t9, 2
/* B5CB34 800E5994 A0590001 */  sb    $t9, 1($v0)
/* B5CB38 800E5998 46082283 */  div.s $f10, $f4, $f8
/* B5CB3C 800E599C A4450012 */  sh    $a1, 0x12($v0)
/* B5CB40 800E59A0 46005407 */  neg.s $f16, $f10
/* B5CB44 800E59A4 03E00008 */  jr    $ra
/* B5CB48 800E59A8 E4500020 */   swc1  $f16, 0x20($v0)


glabel func_800DF5DC
/* B5677C 800DF5DC 3C188013 */  lui   $t8, %hi(D_80130228) # $t8, 0x8013
/* B56780 800DF5E0 27180228 */  addiu $t8, %lo(D_80130228) # addiu $t8, $t8, 0x228
/* B56784 800DF5E4 00801825 */  move  $v1, $a0
/* B56788 800DF5E8 00057900 */  sll   $t7, $a1, 4
/* B5678C 800DF5EC 01F83021 */  addu  $a2, $t7, $t8
/* B56790 800DF5F0 24040008 */  li    $a0, 8
/* B56794 800DF5F4 00001025 */  move  $v0, $zero
.L800DF5F8:
/* B56798 800DF5F8 84D90000 */  lh    $t9, ($a2)
/* B5679C 800DF5FC 24420004 */  addiu $v0, $v0, 4
/* B567A0 800DF600 24630008 */  addiu $v1, $v1, 8
/* B567A4 800DF604 A479FFF8 */  sh    $t9, -8($v1)
/* B567A8 800DF608 84C80002 */  lh    $t0, 2($a2)
/* B567AC 800DF60C 24C60008 */  addiu $a2, $a2, 8
/* B567B0 800DF610 A468FFFA */  sh    $t0, -6($v1)
/* B567B4 800DF614 84C9FFFC */  lh    $t1, -4($a2)
/* B567B8 800DF618 A469FFFC */  sh    $t1, -4($v1)
/* B567BC 800DF61C 84CAFFFE */  lh    $t2, -2($a2)
/* B567C0 800DF620 1444FFF5 */  bne   $v0, $a0, .L800DF5F8
/* B567C4 800DF624 A46AFFFE */   sh    $t2, -2($v1)
/* B567C8 800DF628 03E00008 */  jr    $ra
/* B567CC 800DF62C 00000000 */   nop   


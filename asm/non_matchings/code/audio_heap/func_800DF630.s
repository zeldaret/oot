glabel func_800DF630
/* B567D0 800DF630 00057900 */  sll   $t7, $a1, 4
/* B567D4 800DF634 3C198013 */  lui   $t9, %hi(D_80130328) # $t9, 0x8013
/* B567D8 800DF638 27390328 */  addiu $t9, %lo(D_80130328) # addiu $t9, $t9, 0x328
/* B567DC 800DF63C 25F8FFF0 */  addiu $t8, $t7, -0x10
/* B567E0 800DF640 00801825 */  move  $v1, $a0
/* B567E4 800DF644 24040008 */  li    $a0, 8
/* B567E8 800DF648 03193021 */  addu  $a2, $t8, $t9
/* B567EC 800DF64C 00001025 */  move  $v0, $zero
.L800DF650:
/* B567F0 800DF650 84C80000 */  lh    $t0, ($a2)
/* B567F4 800DF654 24420004 */  addiu $v0, $v0, 4
/* B567F8 800DF658 24630008 */  addiu $v1, $v1, 8
/* B567FC 800DF65C A468FFF8 */  sh    $t0, -8($v1)
/* B56800 800DF660 84C90002 */  lh    $t1, 2($a2)
/* B56804 800DF664 24C60008 */  addiu $a2, $a2, 8
/* B56808 800DF668 A469FFFA */  sh    $t1, -6($v1)
/* B5680C 800DF66C 84CAFFFC */  lh    $t2, -4($a2)
/* B56810 800DF670 A46AFFFC */  sh    $t2, -4($v1)
/* B56814 800DF674 84CBFFFE */  lh    $t3, -2($a2)
/* B56818 800DF678 1444FFF5 */  bne   $v0, $a0, .L800DF650
/* B5681C 800DF67C A46BFFFE */   sh    $t3, -2($v1)
/* B56820 800DF680 03E00008 */  jr    $ra
/* B56824 800DF684 00000000 */   nop   


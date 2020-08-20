glabel func_800DE434
/* B555D4 800DE434 24A2000F */  addiu $v0, $a1, 0xf
/* B555D8 800DE438 2401FFF0 */  li    $at, -16
/* B555DC 800DE43C 30AE000F */  andi  $t6, $a1, 0xf
/* B555E0 800DE440 00411024 */  and   $v0, $v0, $at
/* B555E4 800DE444 00CE7823 */  subu  $t7, $a2, $t6
/* B555E8 800DE448 AC820000 */  sw    $v0, ($a0)
/* B555EC 800DE44C AC820004 */  sw    $v0, 4($a0)
/* B555F0 800DE450 AC8F0008 */  sw    $t7, 8($a0)
/* B555F4 800DE454 03E00008 */  jr    $ra
/* B555F8 800DE458 AC80000C */   sw    $zero, 0xc($a0)


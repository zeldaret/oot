glabel func_800DF5AC
/* B5674C 800DF5AC 00801825 */  move  $v1, $a0
/* B56750 800DF5B0 24040008 */  li    $a0, 8
/* B56754 800DF5B4 00001025 */  move  $v0, $zero
.L800DF5B8:
/* B56758 800DF5B8 24420004 */  addiu $v0, $v0, 4
/* B5675C 800DF5BC A4600002 */  sh    $zero, 2($v1)
/* B56760 800DF5C0 A4600004 */  sh    $zero, 4($v1)
/* B56764 800DF5C4 A4600006 */  sh    $zero, 6($v1)
/* B56768 800DF5C8 24630008 */  addiu $v1, $v1, 8
/* B5676C 800DF5CC 1444FFFA */  bne   $v0, $a0, .L800DF5B8
/* B56770 800DF5D0 A460FFF8 */   sh    $zero, -8($v1)
/* B56774 800DF5D4 03E00008 */  jr    $ra
/* B56778 800DF5D8 00000000 */   nop   


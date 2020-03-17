glabel func_800944A0
/* B0B640 800944A0 00801025 */  move  $v0, $a0
/* B0B644 800944A4 3C0F8012 */  lui   $t7, %hi(D_801269D0) # $t7, 0x8012
/* B0B648 800944A8 25EF69D0 */  addiu $t7, %lo(D_801269D0) # addiu $t7, $t7, 0x69d0
/* B0B64C 800944AC 3C0EDE00 */  lui   $t6, 0xde00
/* B0B650 800944B0 AC4E0000 */  sw    $t6, ($v0)
/* B0B654 800944B4 AC4F0004 */  sw    $t7, 4($v0)
/* B0B658 800944B8 24840008 */  addiu $a0, $a0, 8
/* B0B65C 800944BC 03E00008 */  jr    $ra
/* B0B660 800944C0 00801025 */   move  $v0, $a0


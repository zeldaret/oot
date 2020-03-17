glabel func_80094708
/* B0B8A8 80094708 00801025 */  move  $v0, $a0
/* B0B8AC 8009470C 3C0F8012 */  lui   $t7, %hi(D_80126F10) # $t7, 0x8012
/* B0B8B0 80094710 25EF6F10 */  addiu $t7, %lo(D_80126F10) # addiu $t7, $t7, 0x6f10
/* B0B8B4 80094714 3C0EDE00 */  lui   $t6, 0xde00
/* B0B8B8 80094718 AC4E0000 */  sw    $t6, ($v0)
/* B0B8BC 8009471C AC4F0004 */  sw    $t7, 4($v0)
/* B0B8C0 80094720 24840008 */  addiu $a0, $a0, 8
/* B0B8C4 80094724 03E00008 */  jr    $ra
/* B0B8C8 80094728 00801025 */   move  $v0, $a0


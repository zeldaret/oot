glabel func_80093F34
/* B0B0D4 80093F34 00801025 */  move  $v0, $a0
/* B0B0D8 80093F38 3C0F8012 */  lui   $t7, %hi(D_80126E80) # $t7, 0x8012
/* B0B0DC 80093F3C 25EF6E80 */  addiu $t7, %lo(D_80126E80) # addiu $t7, $t7, 0x6e80
/* B0B0E0 80093F40 3C0EDE00 */  lui   $t6, 0xde00
/* B0B0E4 80093F44 AC4E0000 */  sw    $t6, ($v0)
/* B0B0E8 80093F48 AC4F0004 */  sw    $t7, 4($v0)
/* B0B0EC 80093F4C 24840008 */  addiu $a0, $a0, 8
/* B0B0F0 80093F50 03E00008 */  jr    $ra
/* B0B0F4 80093F54 00801025 */   move  $v0, $a0


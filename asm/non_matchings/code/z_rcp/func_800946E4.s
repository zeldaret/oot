glabel func_800946E4
/* B0B884 800946E4 00801025 */  move  $v0, $a0
/* B0B888 800946E8 3C0F8012 */  lui   $t7, %hi(D_80126EE0) # $t7, 0x8012
/* B0B88C 800946EC 25EF6EE0 */  addiu $t7, %lo(D_80126EE0) # addiu $t7, $t7, 0x6ee0
/* B0B890 800946F0 3C0EDE00 */  lui   $t6, 0xde00
/* B0B894 800946F4 AC4E0000 */  sw    $t6, ($v0)
/* B0B898 800946F8 AC4F0004 */  sw    $t7, 4($v0)
/* B0B89C 800946FC 24840008 */  addiu $a0, $a0, 8
/* B0B8A0 80094700 03E00008 */  jr    $ra
/* B0B8A4 80094704 00801025 */   move  $v0, $a0


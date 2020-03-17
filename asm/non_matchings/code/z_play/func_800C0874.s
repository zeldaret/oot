glabel func_800C0874
/* B37A14 800C0874 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B37A18 800C0878 AFA5001C */  sw    $a1, 0x1c($sp)
/* B37A1C 800C087C 00052C00 */  sll   $a1, $a1, 0x10
/* B37A20 800C0880 AFBF0014 */  sw    $ra, 0x14($sp)
/* B37A24 800C0884 00052C03 */  sra   $a1, $a1, 0x10
/* B37A28 800C0888 0C030129 */  jal   func_800C04A4
/* B37A2C 800C088C AFA60020 */   sw    $a2, 0x20($sp)
/* B37A30 800C0890 00402025 */  move  $a0, $v0
/* B37A34 800C0894 0C0169DF */  jal   func_8005A77C
/* B37A38 800C0898 87A50022 */   lh    $a1, 0x22($sp)
/* B37A3C 800C089C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B37A40 800C08A0 27BD0018 */  addiu $sp, $sp, 0x18
/* B37A44 800C08A4 03E00008 */  jr    $ra
/* B37A48 800C08A8 00000000 */   nop   


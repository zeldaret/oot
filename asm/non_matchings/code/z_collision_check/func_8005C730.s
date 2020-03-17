glabel func_8005C730
/* AD38D0 8005C730 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD38D4 8005C734 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD38D8 8005C738 AFA40018 */  sw    $a0, 0x18($sp)
/* AD38DC 8005C73C AFA5001C */  sw    $a1, 0x1c($sp)
/* AD38E0 8005C740 0C016E4F */  jal   func_8005B93C
/* AD38E4 8005C744 AFA60020 */   sw    $a2, 0x20($sp)
/* AD38E8 8005C748 8FA5001C */  lw    $a1, 0x1c($sp)
/* AD38EC 8005C74C 8FA60020 */  lw    $a2, 0x20($sp)
/* AD38F0 8005C750 8FA40018 */  lw    $a0, 0x18($sp)
/* AD38F4 8005C754 24A50028 */  addiu $a1, $a1, 0x28
/* AD38F8 8005C758 0C017182 */  jal   func_8005C608
/* AD38FC 8005C75C 24C60018 */   addiu $a2, $a2, 0x18
/* AD3900 8005C760 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD3904 8005C764 27BD0018 */  addiu $sp, $sp, 0x18
/* AD3908 8005C768 24020001 */  li    $v0, 1
/* AD390C 8005C76C 03E00008 */  jr    $ra
/* AD3910 8005C770 00000000 */   nop   


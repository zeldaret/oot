glabel func_800F483C
/* B6B9DC 800F483C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6B9E0 800F4840 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6B9E4 800F4844 AFA40018 */  sw    $a0, 0x18($sp)
/* B6B9E8 800F4848 AFA5001C */  sw    $a1, 0x1c($sp)
/* B6B9EC 800F484C 308600FF */  andi  $a2, $a0, 0xff
/* B6B9F0 800F4850 30A700FF */  andi  $a3, $a1, 0xff
/* B6B9F4 800F4854 00002825 */  move  $a1, $zero
/* B6B9F8 800F4858 0C03E890 */  jal   func_800FA240
/* B6B9FC 800F485C 00002025 */   move  $a0, $zero
/* B6BA00 800F4860 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6BA04 800F4864 27BD0018 */  addiu $sp, $sp, 0x18
/* B6BA08 800F4868 03E00008 */  jr    $ra
/* B6BA0C 800F486C 00000000 */   nop   


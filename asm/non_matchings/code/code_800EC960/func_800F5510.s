glabel func_800F5510
/* B6C6B0 800F5510 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6C6B4 800F5514 AFBF001C */  sw    $ra, 0x1c($sp)
/* B6C6B8 800F5518 AFA40020 */  sw    $a0, 0x20($sp)
/* B6C6BC 800F551C 0C03D554 */  jal   func_800F5550
/* B6C6C0 800F5520 97A40022 */   lhu   $a0, 0x22($sp)
/* B6C6C4 800F5524 240E0001 */  li    $t6, 1
/* B6C6C8 800F5528 AFAE0010 */  sw    $t6, 0x10($sp)
/* B6C6CC 800F552C 00002025 */  move  $a0, $zero
/* B6C6D0 800F5530 97A50022 */  lhu   $a1, 0x22($sp)
/* B6C6D4 800F5534 00003025 */  move  $a2, $zero
/* B6C6D8 800F5538 0C03D786 */  jal   func_800F5E18
/* B6C6DC 800F553C 00003825 */   move  $a3, $zero
/* B6C6E0 800F5540 8FBF001C */  lw    $ra, 0x1c($sp)
/* B6C6E4 800F5544 27BD0020 */  addiu $sp, $sp, 0x20
/* B6C6E8 800F5548 03E00008 */  jr    $ra
/* B6C6EC 800F554C 00000000 */   nop   


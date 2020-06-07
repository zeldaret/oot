glabel func_8003E6EC
/* AB588C 8003E6EC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AB5890 8003E6F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AB5894 8003E6F4 AFB00018 */  sw    $s0, 0x18($sp)
/* AB5898 8003E6F8 AFA40020 */  sw    $a0, 0x20($sp)
/* AB589C 8003E6FC 00A08025 */  move  $s0, $a1
/* AB58A0 8003E700 ACA00000 */  sw    $zero, ($a1)
/* AB58A4 8003E704 ACA00004 */  sw    $zero, 4($a1)
/* AB58A8 8003E708 0C00F94C */  jal   func_8003E530
/* AB58AC 8003E70C 24A40014 */   addiu $a0, $a1, 0x14
/* AB58B0 8003E710 0C00F94C */  jal   func_8003E530
/* AB58B4 8003E714 26040034 */   addiu $a0, $s0, 0x34
/* AB58B8 8003E718 0C00F9B1 */  jal   func_8003E6C4
/* AB58BC 8003E71C 26040008 */   addiu $a0, $s0, 8
/* AB58C0 8003E720 0C00F9B9 */  jal   func_8003E6E4
/* AB58C4 8003E724 26040010 */   addiu $a0, $s0, 0x10
/* AB58C8 8003E728 A6000058 */  sh    $zero, 0x58($s0)
/* AB58CC 8003E72C 86020058 */  lh    $v0, 0x58($s0)
/* AB58D0 8003E730 A600005A */  sh    $zero, 0x5a($s0)
/* AB58D4 8003E734 A6020056 */  sh    $v0, 0x56($s0)
/* AB58D8 8003E738 A6020054 */  sh    $v0, 0x54($s0)
/* AB58DC 8003E73C 8FBF001C */  lw    $ra, 0x1c($sp)
/* AB58E0 8003E740 8FB00018 */  lw    $s0, 0x18($sp)
/* AB58E4 8003E744 27BD0020 */  addiu $sp, $sp, 0x20
/* AB58E8 8003E748 03E00008 */  jr    $ra
/* AB58EC 8003E74C 00000000 */   nop   


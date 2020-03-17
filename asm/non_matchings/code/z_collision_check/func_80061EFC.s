glabel func_80061EFC
/* AD909C 80061EFC 90CE0000 */  lbu   $t6, ($a2)
/* AD90A0 80061F00 AC850000 */  sw    $a1, ($a0)
/* AD90A4 80061F04 A08E0017 */  sb    $t6, 0x17($a0)
/* AD90A8 80061F08 84CF0002 */  lh    $t7, 2($a2)
/* AD90AC 80061F0C A48F0010 */  sh    $t7, 0x10($a0)
/* AD90B0 80061F10 84D80004 */  lh    $t8, 4($a2)
/* AD90B4 80061F14 A4980012 */  sh    $t8, 0x12($a0)
/* AD90B8 80061F18 84D90006 */  lh    $t9, 6($a2)
/* AD90BC 80061F1C A4990014 */  sh    $t9, 0x14($a0)
/* AD90C0 80061F20 90C80008 */  lbu   $t0, 8($a2)
/* AD90C4 80061F24 03E00008 */  jr    $ra
/* AD90C8 80061F28 A0880016 */   sb    $t0, 0x16($a0)

/* AD90CC 80061F2C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AD90D0 80061F30 AFBF0014 */  sw    $ra, 0x14($sp)
/* AD90D4 80061F34 AFA40018 */  sw    $a0, 0x18($sp)
/* AD90D8 80061F38 AFA60020 */  sw    $a2, 0x20($sp)
/* AD90DC 80061F3C 0C016C80 */  jal   CollisionBtlTbl_Get
/* AD90E0 80061F40 00A02025 */   move  $a0, $a1
/* AD90E4 80061F44 8FA40018 */  lw    $a0, 0x18($sp)
/* AD90E8 80061F48 00402825 */  move  $a1, $v0
/* AD90EC 80061F4C 0C0187BF */  jal   func_80061EFC
/* AD90F0 80061F50 8FA60020 */   lw    $a2, 0x20($sp)
/* AD90F4 80061F54 8FBF0014 */  lw    $ra, 0x14($sp)
/* AD90F8 80061F58 27BD0018 */  addiu $sp, $sp, 0x18
/* AD90FC 80061F5C 03E00008 */  jr    $ra
/* AD9100 80061F60 00000000 */   nop   


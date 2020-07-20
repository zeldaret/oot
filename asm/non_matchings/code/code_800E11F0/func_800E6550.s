glabel func_800E6550
/* B5D6F0 800E6550 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D6F4 800E6554 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D6F8 800E6558 3C048017 */  lui   $a0, %hi(D_80174D68) # $a0, 0x8017
/* B5D6FC 800E655C 8C844D68 */  lw    $a0, %lo(D_80174D68)($a0)
/* B5D700 800E6560 00002825 */  move  $a1, $zero
/* B5D704 800E6564 0C000CA0 */  jal   osRecvMesg
/* B5D708 800E6568 00003025 */   move  $a2, $zero
/* B5D70C 800E656C 3C048017 */  lui   $a0, %hi(D_80174D68) # $a0, 0x8017
/* B5D710 800E6570 8C844D68 */  lw    $a0, %lo(D_80174D68)($a0)
/* B5D714 800E6574 00002825 */  move  $a1, $zero
/* B5D718 800E6578 0C000CA0 */  jal   osRecvMesg
/* B5D71C 800E657C 24060001 */   li    $a2, 1
/* B5D720 800E6580 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D724 800E6584 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D728 800E6588 03E00008 */  jr    $ra
/* B5D72C 800E658C 00000000 */   nop


glabel func_800E9878
/* B60A18 800E9878 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B60A1C 800E987C 00057080 */  sll   $t6, $a1, 2
/* B60A20 800E9880 AFBF0014 */  sw    $ra, 0x14($sp)
/* B60A24 800E9884 008E1021 */  addu  $v0, $a0, $t6
/* B60A28 800E9888 8C460050 */  lw    $a2, 0x50($v0)
/* B60A2C 800E988C 3C048017 */  lui   $a0, %hi(D_80174D08) # $a0, 0x8017
/* B60A30 800E9890 24844D08 */  addiu $a0, %lo(D_80174D08) # addiu $a0, $a0, 0x4d08
/* B60A34 800E9894 10C00008 */  beqz  $a2, .L800E98B8
/* B60A38 800E9898 24C50070 */   addiu $a1, $a2, 0x70
/* B60A3C 800E989C AFA20018 */  sw    $v0, 0x18($sp)
/* B60A40 800E98A0 0C03A70A */  jal   Audio_AudioListPushBack
/* B60A44 800E98A4 AFA6001C */   sw    $a2, 0x1c($sp)
/* B60A48 800E98A8 0C03A5FF */  jal   func_800E97FC
/* B60A4C 800E98AC 8FA4001C */   lw    $a0, 0x1c($sp)
/* B60A50 800E98B0 8FA20018 */  lw    $v0, 0x18($sp)
/* B60A54 800E98B4 AC400050 */  sw    $zero, 0x50($v0)
.L800E98B8:
/* B60A58 800E98B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B60A5C 800E98BC 27BD0020 */  addiu $sp, $sp, 0x20
/* B60A60 800E98C0 03E00008 */  jr    $ra
/* B60A64 800E98C4 00000000 */   nop   


glabel Math3D_DotProduct
/* B4218C 800CAFEC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B42190 800CAFF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B42194 800CAFF4 0C032C04 */  jal   Math3D_CalcDotProduct
/* B42198 800CAFF8 27A6001C */   addiu $a2, $sp, 0x1c
/* B4219C 800CAFFC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B421A0 800CB000 C7A0001C */  lwc1  $f0, 0x1c($sp)
/* B421A4 800CB004 27BD0020 */  addiu $sp, $sp, 0x20
/* B421A8 800CB008 03E00008 */  jr    $ra
/* B421AC 800CB00C 00000000 */   nop


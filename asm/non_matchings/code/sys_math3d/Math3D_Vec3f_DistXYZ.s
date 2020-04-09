glabel Math3D_Vec3f_DistXYZ
/* B42818 800CB678 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4281C 800CB67C AFBF0014 */  sw    $ra, 0x14($sp)
/* B42820 800CB680 0C01DFE4 */  jal   Math_Vec3f_DistXYZ
/* B42824 800CB684 00000000 */   nop
/* B42828 800CB688 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4282C 800CB68C 27BD0018 */  addiu $sp, $sp, 0x18
/* B42830 800CB690 03E00008 */  jr    $ra
/* B42834 800CB694 00000000 */   nop


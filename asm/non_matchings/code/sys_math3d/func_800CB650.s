glabel func_800CB650
/* B427F0 800CB650 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B427F4 800CB654 AFBF0014 */  sw    $ra, 0x14($sp)
/* B427F8 800CB658 0C01DFB4 */  jal   Math_Vec3f_Diff
/* B427FC 800CB65C 27A6001C */   addiu $a2, $sp, 0x1c
/* B42800 800CB660 0C032D80 */  jal   Math3D_Vec3f_HadamardProduct
/* B42804 800CB664 27A4001C */   addiu $a0, $sp, 0x1c
/* B42808 800CB668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B4280C 800CB66C 27BD0028 */  addiu $sp, $sp, 0x28
/* B42810 800CB670 03E00008 */  jr    $ra
/* B42814 800CB674 00000000 */   nop   


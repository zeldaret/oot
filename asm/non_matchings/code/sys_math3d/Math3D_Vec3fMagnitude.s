glabel Math3D_Vec3fMagnitude
/* B427C8 800CB628 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B427CC 800CB62C AFBF0014 */  sw    $ra, 0x14($sp)
/* B427D0 800CB630 0C032D80 */  jal   Math3D_Vec3f_HadamardProduct
/* B427D4 800CB634 00000000 */   nop
/* B427D8 800CB638 46000021 */  cvt.d.s $f0, $f0
/* B427DC 800CB63C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B427E0 800CB640 46200004 */  sqrt.d $f0, $f0
/* B427E4 800CB644 27BD0018 */  addiu $sp, $sp, 0x18
/* B427E8 800CB648 03E00008 */  jr    $ra
/* B427EC 800CB64C 46200020 */   cvt.s.d $f0, $f0


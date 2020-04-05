glabel Math3D_Vec3f_HadamardProduct
/* B427A0 800CB600 C4820000 */  lwc1  $f2, ($a0)
/* B427A4 800CB604 C48C0004 */  lwc1  $f12, 4($a0)
/* B427A8 800CB608 C48E0008 */  lwc1  $f14, 8($a0)
/* B427AC 800CB60C 46021102 */  mul.s $f4, $f2, $f2
/* B427B0 800CB610 00000000 */  nop   
/* B427B4 800CB614 460C6182 */  mul.s $f6, $f12, $f12
/* B427B8 800CB618 46062200 */  add.s $f8, $f4, $f6
/* B427BC 800CB61C 460E7282 */  mul.s $f10, $f14, $f14
/* B427C0 800CB620 03E00008 */  jr    $ra
/* B427C4 800CB624 460A4000 */   add.s $f0, $f8, $f10


glabel func_800CD668
/* B44808 800CD668 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B4480C 800CD66C 44876000 */  mtc1  $a3, $f12
/* B44810 800CD670 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B44814 800CD674 44814000 */  mtc1  $at, $f8
/* B44818 800CD678 C7A40038 */  lwc1  $f4, 0x38($sp)
/* B4481C 800CD67C C7A6003C */  lwc1  $f6, 0x3c($sp)
/* B44820 800CD680 C7AA0040 */  lwc1  $f10, 0x40($sp)
/* B44824 800CD684 AFBF0024 */  sw    $ra, 0x24($sp)
/* B44828 800CD688 44076000 */  mfc1  $a3, $f12
/* B4482C 800CD68C E7A40010 */  swc1  $f4, 0x10($sp)
/* B44830 800CD690 E7A80018 */  swc1  $f8, 0x18($sp)
/* B44834 800CD694 E7A60014 */  swc1  $f6, 0x14($sp)
/* B44838 800CD698 0C0334D3 */  jal   func_800CD34C
/* B4483C 800CD69C E7AA001C */   swc1  $f10, 0x1c($sp)
/* B44840 800CD6A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B44844 800CD6A4 27BD0028 */  addiu $sp, $sp, 0x28
/* B44848 800CD6A8 03E00008 */  jr    $ra
/* B4484C 800CD6AC 00000000 */   nop   


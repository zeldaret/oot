glabel func_800CB5D8
/* B42778 800CB5D8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B4277C 800CB5DC AFBF0014 */  sw    $ra, 0x14($sp)
/* B42780 800CB5E0 AFA60020 */  sw    $a2, 0x20($sp)
/* B42784 800CB5E4 0C032D65 */  jal   func_800CB594
/* B42788 800CB5E8 AFA70024 */   sw    $a3, 0x24($sp)
/* B4278C 800CB5EC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B42790 800CB5F0 27BD0018 */  addiu $sp, $sp, 0x18
/* B42794 800CB5F4 46000004 */  sqrt.s $f0, $f0
/* B42798 800CB5F8 03E00008 */  jr    $ra
/* B4279C 800CB5FC 00000000 */   nop   


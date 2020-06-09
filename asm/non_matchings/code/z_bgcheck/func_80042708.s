glabel func_80042708
/* AB98A8 80042708 27BDFFB8 */  addiu $sp, $sp, -0x48
/* AB98AC 8004270C AFBF002C */  sw    $ra, 0x2c($sp)
/* AB98B0 80042710 AFA5004C */  sw    $a1, 0x4c($sp)
/* AB98B4 80042714 AFA60050 */  sw    $a2, 0x50($sp)
/* AB98B8 80042718 AFA70054 */  sw    $a3, 0x54($sp)
/* AB98BC 8004271C AFA40048 */  sw    $a0, 0x48($sp)
/* AB98C0 80042720 27A7003C */  addiu $a3, $sp, 0x3c
/* AB98C4 80042724 27A60040 */  addiu $a2, $sp, 0x40
/* AB98C8 80042728 0C00E275 */  jal   func_800389D4
/* AB98CC 8004272C 27A50044 */   addiu $a1, $sp, 0x44
/* AB98D0 80042730 8FA4004C */  lw    $a0, 0x4c($sp)
/* AB98D4 80042734 27A50038 */  addiu $a1, $sp, 0x38
/* AB98D8 80042738 27A60034 */  addiu $a2, $sp, 0x34
/* AB98DC 8004273C 0C00E275 */  jal   func_800389D4
/* AB98E0 80042740 27A70030 */   addiu $a3, $sp, 0x30
/* AB98E4 80042744 8FAE0048 */  lw    $t6, 0x48($sp)
/* AB98E8 80042748 C7A60038 */  lwc1  $f6, 0x38($sp)
/* AB98EC 8004274C C7A80034 */  lwc1  $f8, 0x34($sp)
/* AB98F0 80042750 85CF000E */  lh    $t7, 0xe($t6)
/* AB98F4 80042754 C7AA0030 */  lwc1  $f10, 0x30($sp)
/* AB98F8 80042758 8FB8004C */  lw    $t8, 0x4c($sp)
/* AB98FC 8004275C E7A60010 */  swc1  $f6, 0x10($sp)
/* AB9900 80042760 E7A80014 */  swc1  $f8, 0x14($sp)
/* AB9904 80042764 E7AA0018 */  swc1  $f10, 0x18($sp)
/* AB9908 80042768 8719000E */  lh    $t9, 0xe($t8)
/* AB990C 8004276C 448F2000 */  mtc1  $t7, $f4
/* AB9910 80042770 8FA80050 */  lw    $t0, 0x50($sp)
/* AB9914 80042774 44998000 */  mtc1  $t9, $f16
/* AB9918 80042778 46802120 */  cvt.s.w $f4, $f4
/* AB991C 8004277C 8FA90054 */  lw    $t1, 0x54($sp)
/* AB9920 80042780 C7AC0044 */  lwc1  $f12, 0x44($sp)
/* AB9924 80042784 C7AE0040 */  lwc1  $f14, 0x40($sp)
/* AB9928 80042788 8FA6003C */  lw    $a2, 0x3c($sp)
/* AB992C 8004278C 468084A0 */  cvt.s.w $f18, $f16
/* AB9930 80042790 44072000 */  mfc1  $a3, $f4
/* AB9934 80042794 AFA80020 */  sw    $t0, 0x20($sp)
/* AB9938 80042798 AFA90024 */  sw    $t1, 0x24($sp)
/* AB993C 8004279C 0C032BBA */  jal   func_800CAEE8
/* AB9940 800427A0 E7B2001C */   swc1  $f18, 0x1c($sp)
/* AB9944 800427A4 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB9948 800427A8 27BD0048 */  addiu $sp, $sp, 0x48
/* AB994C 800427AC 03E00008 */  jr    $ra
/* AB9950 800427B0 00000000 */   nop   

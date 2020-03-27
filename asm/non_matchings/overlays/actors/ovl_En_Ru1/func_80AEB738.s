glabel func_80AEB738
/* 00B28 80AEB738 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B2C 80AEB73C AFBF001C */  sw      $ra, 0x001C($sp)
/* 00B30 80AEB740 AFB00018 */  sw      $s0, 0x0018($sp)
/* 00B34 80AEB744 AFA50024 */  sw      $a1, 0x0024($sp)
/* 00B38 80AEB748 8C8E016C */  lw      $t6, 0x016C($a0)           ## 0000016C
/* 00B3C 80AEB74C 8C99016C */  lw      $t9, 0x016C($a0)           ## 0000016C
/* 00B40 80AEB750 8C8B016C */  lw      $t3, 0x016C($a0)           ## 0000016C
/* 00B44 80AEB754 89D80000 */  lwl     $t8, 0x0000($t6)           ## 00000000
/* 00B48 80AEB758 99D80003 */  lwr     $t8, 0x0003($t6)           ## 00000003
/* 00B4C 80AEB75C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B50 80AEB760 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
/* 00B54 80AEB764 A898018A */  swl     $t8, 0x018A($a0)           ## 0000018A
/* 00B58 80AEB768 B898018D */  swr     $t8, 0x018D($a0)           ## 0000018D
/* 00B5C 80AEB76C 95D80004 */  lhu     $t8, 0x0004($t6)           ## 00000004
/* 00B60 80AEB770 848A018C */  lh      $t2, 0x018C($a0)           ## 0000018C
/* 00B64 80AEB774 A498018E */  sh      $t8, 0x018E($a0)           ## 0000018E
/* 00B68 80AEB778 8B290000 */  lwl     $t1, 0x0000($t9)           ## 00000000
/* 00B6C 80AEB77C 9B290003 */  lwr     $t1, 0x0003($t9)           ## 00000003
/* 00B70 80AEB780 A8890184 */  swl     $t1, 0x0184($a0)           ## 00000184
/* 00B74 80AEB784 B8890187 */  swr     $t1, 0x0187($a0)           ## 00000187
/* 00B78 80AEB788 97290004 */  lhu     $t1, 0x0004($t9)           ## 00000004
/* 00B7C 80AEB78C A4890188 */  sh      $t1, 0x0188($a0)           ## 00000188
/* 00B80 80AEB790 856C0002 */  lh      $t4, 0x0002($t3)           ## 00000002
/* 00B84 80AEB794 014C082A */  slt     $at, $t2, $t4
/* 00B88 80AEB798 50200009 */  beql    $at, $zero, .L80AEB7C0
/* 00B8C 80AEB79C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00B90 80AEB7A0 90CD0035 */  lbu     $t5, 0x0035($a2)           ## 00000181
/* 00B94 80AEB7A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B98 80AEB7A8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00B9C 80AEB7AC 35AE0003 */  ori     $t6, $t5, 0x0003           ## $t6 = 00000003
/* 00BA0 80AEB7B0 A0CE0035 */  sb      $t6, 0x0035($a2)           ## 00000181
/* 00BA4 80AEB7B4 0C028D88 */  jal     SkelAnime_LoadAnimationType5
/* 00BA8 80AEB7B8 8FA40024 */  lw      $a0, 0x0024($sp)
/* 00BAC 80AEB7BC 8FBF001C */  lw      $ra, 0x001C($sp)
.L80AEB7C0:
/* 00BB0 80AEB7C0 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00BB4 80AEB7C4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BB8 80AEB7C8 03E00008 */  jr      $ra
/* 00BBC 80AEB7CC 00000000 */  nop



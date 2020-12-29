glabel func_80AFA8E8
/* 001C8 80AFA8E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001CC 80AFA8EC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 001D0 80AFA8F0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001D4 80AFA8F4 3C050600 */  lui     $a1, %hi(D_06000BA0)                ## $a1 = 06000000
/* 001D8 80AFA8F8 24A50BA0 */  addiu   $a1, $a1, %lo(D_06000BA0)           ## $a1 = 06000BA0
/* 001DC 80AFA8FC AFA60018 */  sw      $a2, 0x0018($sp)
/* 001E0 80AFA900 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 001E4 80AFA904 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 001E8 80AFA908 8FA60018 */  lw      $a2, 0x0018($sp)
/* 001EC 80AFA90C 3C0F80B0 */  lui     $t7, %hi(func_80AFACE0)    ## $t7 = 80B00000
/* 001F0 80AFA910 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 001F4 80AFA914 25EFACE0 */  addiu   $t7, $t7, %lo(func_80AFACE0) ## $t7 = 80AFACE0
/* 001F8 80AFA918 A4CE0194 */  sh      $t6, 0x0194($a2)           ## 00000194
/* 001FC 80AFA91C ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00200 80AFA920 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00204 80AFA924 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00208 80AFA928 03E00008 */  jr      $ra
/* 0020C 80AFA92C 00000000 */  nop

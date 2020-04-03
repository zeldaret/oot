glabel func_80AEF728
/* 04B18 80AEF728 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 04B1C 80AEF72C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 04B20 80AEF730 10A00016 */  beq     $a1, $zero, .L80AEF78C
/* 04B24 80AEF734 AFA40028 */  sw      $a0, 0x0028($sp)
/* 04B28 80AEF738 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 04B2C 80AEF73C 0C028800 */  jal     SkelAnime_GetFrameCount

/* 04B30 80AEF740 24843608 */  addiu   $a0, $a0, 0x3608           ## $a0 = 06003608
/* 04B34 80AEF744 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 04B38 80AEF748 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04B3C 80AEF74C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04B40 80AEF750 468021A0 */  cvt.s.w $f6, $f4
/* 04B44 80AEF754 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 04B48 80AEF758 44070000 */  mfc1    $a3, $f0
/* 04B4C 80AEF75C 24A53608 */  addiu   $a1, $a1, 0x3608           ## $a1 = 06003608
/* 04B50 80AEF760 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 04B54 80AEF764 AFA00014 */  sw      $zero, 0x0014($sp)
/* 04B58 80AEF768 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 04B5C 80AEF76C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 04B60 80AEF770 0C029468 */  jal     SkelAnime_ChangeAnim

/* 04B64 80AEF774 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 04B68 80AEF778 0C2BACF3 */  jal     func_80AEB3CC
/* 04B6C 80AEF77C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 04B70 80AEF780 8FAF0028 */  lw      $t7, 0x0028($sp)
/* 04B74 80AEF784 240E0026 */  addiu   $t6, $zero, 0x0026         ## $t6 = 00000026
/* 04B78 80AEF788 ADEE0264 */  sw      $t6, 0x0264($t7)           ## 00000264
.L80AEF78C:
/* 04B7C 80AEF78C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 04B80 80AEF790 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 04B84 80AEF794 03E00008 */  jr      $ra
/* 04B88 80AEF798 00000000 */  nop



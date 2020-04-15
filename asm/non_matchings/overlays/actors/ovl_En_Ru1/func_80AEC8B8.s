glabel func_80AEC8B8
/* 01CA8 80AEC8B8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01CAC 80AEC8BC AFA40028 */  sw      $a0, 0x0028($sp)
/* 01CB0 80AEC8C0 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01CB4 80AEC8C4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01CB8 80AEC8C8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01CBC 80AEC8CC 0C2BABE8 */  jal     func_80AEAFA0
/* 01CC0 80AEC8D0 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01CC4 80AEC8D4 10400015 */  beq     $v0, $zero, .L80AEC92C
/* 01CC8 80AEC8D8 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01CCC 80AEC8DC 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01CD0 80AEC8E0 24844074 */  addiu   $a0, $a0, 0x4074           ## $a0 = 06004074
/* 01CD4 80AEC8E4 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01CD8 80AEC8E8 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01CDC 80AEC8EC 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01CE0 80AEC8F0 468021A0 */  cvt.s.w $f6, $f4
/* 01CE4 80AEC8F4 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01CE8 80AEC8F8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01CEC 80AEC8FC 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 01CF0 80AEC900 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01CF4 80AEC904 24A54074 */  addiu   $a1, $a1, 0x4074           ## $a1 = 06004074
/* 01CF8 80AEC908 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01CFC 80AEC90C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01D00 80AEC910 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01D04 80AEC914 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01D08 80AEC918 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01D0C 80AEC91C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D10 80AEC920 8FB80028 */  lw      $t8, 0x0028($sp)
/* 01D14 80AEC924 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 01D18 80AEC928 AF0F0264 */  sw      $t7, 0x0264($t8)           ## 00000264
.L80AEC92C:
/* 01D1C 80AEC92C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01D20 80AEC930 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01D24 80AEC934 03E00008 */  jr      $ra
/* 01D28 80AEC938 00000000 */  nop

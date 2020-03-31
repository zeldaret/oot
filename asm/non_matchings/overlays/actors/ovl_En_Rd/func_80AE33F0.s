glabel func_80AE33F0
/* 00FF0 80AE33F0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00FF4 80AE33F4 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00FF8 80AE33F8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00FFC 80AE33FC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01000 80AE3400 24A54ADC */  addiu   $a1, $a1, 0x4ADC           ## $a1 = 06004ADC
/* 01004 80AE3404 AFA60018 */  sw      $a2, 0x0018($sp)
/* 01008 80AE3408 0C02947A */  jal     SkelAnime_ChangeAnimationDefaultStop
/* 0100C 80AE340C 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01010 80AE3410 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01014 80AE3414 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01018 80AE3418 300E00FF */  andi    $t6, $zero, 0x00FF         ## $t6 = 00000000
/* 0101C 80AE341C 240F00C8 */  addiu   $t7, $zero, 0x00C8         ## $t7 = 000000C8
/* 01020 80AE3420 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 01024 80AE3424 3C0580AE */  lui     $a1, %hi(func_80AE3454)    ## $a1 = 80AE0000
/* 01028 80AE3428 24A53454 */  addiu   $a1, $a1, %lo(func_80AE3454) ## $a1 = 80AE3454
/* 0102C 80AE342C A48E030C */  sh      $t6, 0x030C($a0)           ## 0000030C
/* 01030 80AE3430 A0800304 */  sb      $zero, 0x0304($a0)         ## 00000304
/* 01034 80AE3434 A08F0319 */  sb      $t7, 0x0319($a0)           ## 00000319
/* 01038 80AE3438 A098031B */  sb      $t8, 0x031B($a0)           ## 0000031B
/* 0103C 80AE343C 0C2B8900 */  jal     func_80AE2400
/* 01040 80AE3440 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01044 80AE3444 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01048 80AE3448 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0104C 80AE344C 03E00008 */  jr      $ra
/* 01050 80AE3450 00000000 */  nop



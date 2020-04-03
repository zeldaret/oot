glabel func_80AEC6E4
/* 01AD4 80AEC6E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01AD8 80AEC6E8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01ADC 80AEC6EC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01AE0 80AEC6F0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01AE4 80AEC6F4 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01AE8 80AEC6F8 0C2BABE8 */  jal     func_80AEAFA0
/* 01AEC 80AEC6FC 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01AF0 80AEC700 1040001B */  beq     $v0, $zero, .L80AEC770
/* 01AF4 80AEC704 8FAE0028 */  lw      $t6, 0x0028($sp)
/* 01AF8 80AEC708 8DCF0280 */  lw      $t7, 0x0280($t6)           ## 00000280
/* 01AFC 80AEC70C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 01B00 80AEC710 55E00018 */  bnel    $t7, $zero, .L80AEC774
/* 01B04 80AEC714 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01B08 80AEC718 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01B0C 80AEC71C 24843784 */  addiu   $a0, $a0, 0x3784           ## $a0 = 06003784
/* 01B10 80AEC720 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 01B14 80AEC724 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 01B18 80AEC728 44814000 */  mtc1    $at, $f8                   ## $f8 = -8.00
/* 01B1C 80AEC72C 468021A0 */  cvt.s.w $f6, $f4
/* 01B20 80AEC730 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01B24 80AEC734 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01B28 80AEC738 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 01B2C 80AEC73C AFB80014 */  sw      $t8, 0x0014($sp)
/* 01B30 80AEC740 24A53784 */  addiu   $a1, $a1, 0x3784           ## $a1 = 06003784
/* 01B34 80AEC744 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 01B38 80AEC748 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01B3C 80AEC74C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01B40 80AEC750 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01B44 80AEC754 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01B48 80AEC758 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01B4C 80AEC75C 8FA80028 */  lw      $t0, 0x0028($sp)
/* 01B50 80AEC760 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01B54 80AEC764 AD190280 */  sw      $t9, 0x0280($t0)           ## 00000280
/* 01B58 80AEC768 0C2BB1AC */  jal     func_80AEC6B0
/* 01B5C 80AEC76C 8FA40028 */  lw      $a0, 0x0028($sp)
.L80AEC770:
/* 01B60 80AEC770 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80AEC774:
/* 01B64 80AEC774 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B68 80AEC778 03E00008 */  jr      $ra
/* 01B6C 80AEC77C 00000000 */  nop



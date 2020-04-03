glabel func_80AE39D4
/* 015D4 80AE39D4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 015D8 80AE39D8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 015DC 80AE39DC AFBF0024 */  sw      $ra, 0x0024($sp)
/* 015E0 80AE39E0 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 015E4 80AE39E4 0C028800 */  jal     SkelAnime_GetFrameCount

/* 015E8 80AE39E8 24848040 */  addiu   $a0, $a0, 0x8040           ## $a0 = 06008040
/* 015EC 80AE39EC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 015F0 80AE39F0 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 015F4 80AE39F4 44814000 */  mtc1    $at, $f8                   ## $f8 = -4.00
/* 015F8 80AE39F8 46802120 */  cvt.s.w $f4, $f4
/* 015FC 80AE39FC 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01600 80AE3A00 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01604 80AE3A04 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 01608 80AE3A08 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 0160C 80AE3A0C AFAE0014 */  sw      $t6, 0x0014($sp)
/* 01610 80AE3A10 44072000 */  mfc1    $a3, $f4
/* 01614 80AE3A14 24A58040 */  addiu   $a1, $a1, 0x8040           ## $a1 = 06008040
/* 01618 80AE3A18 3C06BF80 */  lui     $a2, 0xBF80                ## $a2 = BF800000
/* 0161C 80AE3A1C E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01620 80AE3A20 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 01624 80AE3A24 0C029468 */  jal     SkelAnime_ChangeAnim

/* 01628 80AE3A28 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 0162C 80AE3A2C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01630 80AE3A30 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 01634 80AE3A34 3C0580AE */  lui     $a1, %hi(func_80AE3A54)    ## $a1 = 80AE0000
/* 01638 80AE3A38 24A53A54 */  addiu   $a1, $a1, %lo(func_80AE3A54) ## $a1 = 80AE3A54
/* 0163C 80AE3A3C 0C2B8900 */  jal     func_80AE2400
/* 01640 80AE3A40 A08F031B */  sb      $t7, 0x031B($a0)           ## 0000031B
/* 01644 80AE3A44 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01648 80AE3A48 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0164C 80AE3A4C 03E00008 */  jr      $ra
/* 01650 80AE3A50 00000000 */  nop



glabel func_80AE2970
/* 00570 80AE2970 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00574 80AE2974 AFB00028 */  sw      $s0, 0x0028($sp)
/* 00578 80AE2978 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0057C 80AE297C AFBF002C */  sw      $ra, 0x002C($sp)
/* 00580 80AE2980 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 00584 80AE2984 0C028800 */  jal     SkelAnime_GetFrameCount

/* 00588 80AE2988 248487D0 */  addiu   $a0, $a0, 0x87D0           ## $a0 = 060087D0
/* 0058C 80AE298C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00590 80AE2990 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00594 80AE2994 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 00598 80AE2998 468021A0 */  cvt.s.w $f6, $f4
/* 0059C 80AE299C 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 005A0 80AE29A0 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 005A4 80AE29A4 44060000 */  mfc1    $a2, $f0
/* 005A8 80AE29A8 44070000 */  mfc1    $a3, $f0
/* 005AC 80AE29AC 24A587D0 */  addiu   $a1, $a1, 0x87D0           ## $a1 = 060087D0
/* 005B0 80AE29B0 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 005B4 80AE29B4 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 005B8 80AE29B8 AFA00014 */  sw      $zero, 0x0014($sp)
/* 005BC 80AE29BC 0C029468 */  jal     SkelAnime_ChangeAnim

/* 005C0 80AE29C0 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 005C4 80AE29C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 005C8 80AE29C8 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 005CC 80AE29CC 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 005D0 80AE29D0 2418C000 */  addiu   $t8, $zero, 0xC000         ## $t8 = FFFFC000
/* 005D4 80AE29D4 3C0580AE */  lui     $a1, %hi(func_80AE2A10)    ## $a1 = 80AE0000
/* 005D8 80AE29D8 A20E031B */  sb      $t6, 0x031B($s0)           ## 0000031B
/* 005DC 80AE29DC A60F030C */  sh      $t7, 0x030C($s0)           ## 0000030C
/* 005E0 80AE29E0 A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 005E4 80AE29E4 24A52A10 */  addiu   $a1, $a1, %lo(func_80AE2A10) ## $a1 = 80AE2A10
/* 005E8 80AE29E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005EC 80AE29EC E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 005F0 80AE29F0 E60000BC */  swc1    $f0, 0x00BC($s0)           ## 000000BC
/* 005F4 80AE29F4 0C2B8900 */  jal     func_80AE2400
/* 005F8 80AE29F8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 005FC 80AE29FC 8FBF002C */  lw      $ra, 0x002C($sp)
/* 00600 80AE2A00 8FB00028 */  lw      $s0, 0x0028($sp)
/* 00604 80AE2A04 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00608 80AE2A08 03E00008 */  jr      $ra
/* 0060C 80AE2A0C 00000000 */  nop

glabel func_80AE269C
/* 0029C 80AE269C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002A0 80AE26A0 AFBF001C */  sw      $ra, 0x001C($sp)
/* 002A4 80AE26A4 AFB00018 */  sw      $s0, 0x0018($sp)
/* 002A8 80AE26A8 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 002AC 80AE26AC 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002B0 80AE26B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B4 80AE26B4 11C10008 */  beq     $t6, $at, .L80AE26D8
/* 002B8 80AE26B8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002BC 80AE26BC 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 002C0 80AE26C0 24A587D0 */  addiu   $a1, $a1, 0x87D0           ## $a1 = 060087D0
/* 002C4 80AE26C4 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 002C8 80AE26C8 0C0294D3 */  jal     SkelAnime_ChangeAnimTransitionRepeat
/* 002CC 80AE26CC 3C06C0C0 */  lui     $a2, 0xC0C0                ## $a2 = C0C00000
/* 002D0 80AE26D0 10000004 */  beq     $zero, $zero, .L80AE26E4
/* 002D4 80AE26D4 00000000 */  nop
.L80AE26D8:
/* 002D8 80AE26D8 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 002DC 80AE26DC 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 002E0 80AE26E0 24A55D98 */  addiu   $a1, $a1, 0x5D98           ## $a1 = 00005D98
.L80AE26E4:
/* 002E4 80AE26E4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 002E8 80AE26E8 A200031B */  sb      $zero, 0x031B($s0)         ## 0000031B
/* 002EC 80AE26EC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 002F0 80AE26F0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 002F4 80AE26F4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 002F8 80AE26F8 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 002FC 80AE26FC 46040182 */  mul.s   $f6, $f0, $f4
/* 00300 80AE2700 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00304 80AE2704 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00308 80AE2708 3C0580AE */  lui     $a1, %hi(func_80AE2744)    ## $a1 = 80AE0000
/* 0030C 80AE270C 24A52744 */  addiu   $a1, $a1, %lo(func_80AE2744) ## $a1 = 80AE2744
/* 00310 80AE2710 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00314 80AE2714 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 00318 80AE2718 46083280 */  add.s   $f10, $f6, $f8
/* 0031C 80AE271C A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00320 80AE2720 4600540D */  trunc.w.s $f16, $f10
/* 00324 80AE2724 44188000 */  mfc1    $t8, $f16
/* 00328 80AE2728 0C2B8900 */  jal     func_80AE2400
/* 0032C 80AE272C A618030C */  sh      $t8, 0x030C($s0)           ## 0000030C
/* 00330 80AE2730 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00334 80AE2734 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00338 80AE2738 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0033C 80AE273C 03E00008 */  jr      $ra
/* 00340 80AE2740 00000000 */  nop



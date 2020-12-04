glabel func_80861EC0
/* 02870 80861EC0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02874 80861EC4 AFB00028 */  sw      $s0, 0x0028($sp)
/* 02878 80861EC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0287C 80861ECC AFBF002C */  sw      $ra, 0x002C($sp)
/* 02880 80861ED0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 02884 80861ED4 0C028800 */  jal     SkelAnime_GetLastFrame

/* 02888 80861ED8 24841C20 */  addiu   $a0, $a0, 0x1C20           ## $a0 = 06001C20
/* 0288C 80861EDC 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 02890 80861EE0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02894 80861EE4 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 02898 80861EE8 468021A0 */  cvt.s.w $f6, $f4
/* 0289C 80861EEC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 028A0 80861EF0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 028A4 80861EF4 44060000 */  mfc1    $a2, $f0
/* 028A8 80861EF8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 028AC 80861EFC 24A51C20 */  addiu   $a1, $a1, 0x1C20           ## $a1 = 06001C20
/* 028B0 80861F00 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 028B4 80861F04 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 028B8 80861F08 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 028BC 80861F0C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 028C0 80861F10 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 028C4 80861F14 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 028C8 80861F18 240F0015 */  addiu   $t7, $zero, 0x0015         ## $t7 = 00000015
/* 028CC 80861F1C A20F07C8 */  sb      $t7, 0x07C8($s0)           ## 000007C8
/* 028D0 80861F20 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 028D4 80861F24 E6080068 */  swc1    $f8, 0x0068($s0)           ## 00000068
/* 028D8 80861F28 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 028DC 80861F2C 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 028E0 80861F30 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 028E4 80861F34 44819000 */  mtc1    $at, $f18                  ## $f18 = 11.00
/* 028E8 80861F38 460A0402 */  mul.s   $f16, $f0, $f10
/* 028EC 80861F3C 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 028F0 80861F40 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 028F4 80861F44 3C058086 */  lui     $a1, %hi(func_80861F80)    ## $a1 = 80860000
/* 028F8 80861F48 A20907DE */  sb      $t1, 0x07DE($s0)           ## 000007DE
/* 028FC 80861F4C 24A51F80 */  addiu   $a1, $a1, %lo(func_80861F80) ## $a1 = 80861F80
/* 02900 80861F50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02904 80861F54 46128100 */  add.s   $f4, $f16, $f18
/* 02908 80861F58 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 0290C 80861F5C 4600218D */  trunc.w.s $f6, $f4
/* 02910 80861F60 44193000 */  mfc1    $t9, $f6
/* 02914 80861F64 0C217D94 */  jal     EnTest_SetupAction
/* 02918 80861F68 AE1907E8 */  sw      $t9, 0x07E8($s0)           ## 000007E8
/* 0291C 80861F6C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02920 80861F70 8FB00028 */  lw      $s0, 0x0028($sp)
/* 02924 80861F74 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02928 80861F78 03E00008 */  jr      $ra
/* 0292C 80861F7C 00000000 */  nop

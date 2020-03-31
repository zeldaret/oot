glabel func_809EC9C8
/* 00148 809EC9C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0014C 809EC9CC AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00150 809EC9D0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00154 809EC9D4 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00158 809EC9D8 24A515B0 */  addiu   $a1, $a1, 0x15B0           ## $a1 = 060015B0
/* 0015C 809EC9DC AFA60018 */  sw      $a2, 0x0018($sp)
/* 00160 809EC9E0 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00164 809EC9E4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00168 809EC9E8 8FA60018 */  lw      $a2, 0x0018($sp)
/* 0016C 809EC9EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00170 809EC9F0 A0C001C0 */  sb      $zero, 0x01C0($a2)         ## 000001C0
/* 00174 809EC9F4 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00178 809EC9F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 0017C 809EC9FC 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00180 809ECA00 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 00184 809ECA04 46040182 */  mul.s   $f6, $f0, $f4
/* 00188 809ECA08 8FA40018 */  lw      $a0, 0x0018($sp)
/* 0018C 809ECA0C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00190 809ECA10 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00194 809ECA14 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00198 809ECA18 3C05809F */  lui     $a1, %hi(func_809ECA50)    ## $a1 = 809F0000
/* 0019C 809ECA1C 24A5CA50 */  addiu   $a1, $a1, %lo(func_809ECA50) ## $a1 = 809ECA50
/* 001A0 809ECA20 46083280 */  add.s   $f10, $f6, $f8
/* 001A4 809ECA24 A4990018 */  sh      $t9, 0x0018($a0)           ## 00000018
/* 001A8 809ECA28 E4920068 */  swc1    $f18, 0x0068($a0)          ## 00000068
/* 001AC 809ECA2C A4980032 */  sh      $t8, 0x0032($a0)           ## 00000032
/* 001B0 809ECA30 4600540D */  trunc.w.s $f16, $f10
/* 001B4 809ECA34 440F8000 */  mfc1    $t7, $f16
/* 001B8 809ECA38 0C27B220 */  jal     func_809EC880
/* 001BC 809ECA3C A48F01C8 */  sh      $t7, 0x01C8($a0)           ## 000001C8
/* 001C0 809ECA40 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 001C4 809ECA44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C8 809ECA48 03E00008 */  jr      $ra
/* 001CC 809ECA4C 00000000 */  nop



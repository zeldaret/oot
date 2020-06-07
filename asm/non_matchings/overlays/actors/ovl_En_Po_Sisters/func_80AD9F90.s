glabel func_80AD9F90
/* 01000 80AD9F90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01004 80AD9F94 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01008 80AD9F98 908E0194 */  lbu     $t6, 0x0194($a0)           ## 00000194
/* 0100C 80AD9F9C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01010 80AD9FA0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01014 80AD9FA4 15C10008 */  bne     $t6, $at, .L80AD9FC8
/* 01018 80AD9FA8 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0101C 80AD9FAC 3C01C41E */  lui     $at, 0xC41E                ## $at = C41E0000
/* 01020 80AD9FB0 44812000 */  mtc1    $at, $f4                   ## $f4 = -632.00
/* 01024 80AD9FB4 3C01C557 */  lui     $at, 0xC557                ## $at = C5570000
/* 01028 80AD9FB8 44813000 */  mtc1    $at, $f6                   ## $f6 = -3440.00
/* 0102C 80AD9FBC E4840008 */  swc1    $f4, 0x0008($a0)           ## 00000008
/* 01030 80AD9FC0 10000007 */  beq     $zero, $zero, .L80AD9FE0
/* 01034 80AD9FC4 E4860010 */  swc1    $f6, 0x0010($a0)           ## 00000010
.L80AD9FC8:
/* 01038 80AD9FC8 3C01443C */  lui     $at, 0x443C                ## $at = 443C0000
/* 0103C 80AD9FCC 44814000 */  mtc1    $at, $f8                   ## $f8 = 752.00
/* 01040 80AD9FD0 3C01C557 */  lui     $at, 0xC557                ## $at = C5570000
/* 01044 80AD9FD4 44815000 */  mtc1    $at, $f10                  ## $f10 = -3440.00
/* 01048 80AD9FD8 E4C80008 */  swc1    $f8, 0x0008($a2)           ## 00000008
/* 0104C 80AD9FDC E4CA0010 */  swc1    $f10, 0x0010($a2)          ## 00000010
.L80AD9FE0:
/* 01050 80AD9FE0 24C4014C */  addiu   $a0, $a2, 0x014C           ## $a0 = 0000014C
/* 01054 80AD9FE4 24A50D40 */  addiu   $a1, $a1, 0x0D40           ## $a1 = 06000D40
/* 01058 80AD9FE8 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 0105C 80AD9FEC AFA60018 */  sw      $a2, 0x0018($sp)
/* 01060 80AD9FF0 8FA60018 */  lw      $a2, 0x0018($sp)
/* 01064 80AD9FF4 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01068 80AD9FF8 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 0106C 80AD9FFC 90CF0199 */  lbu     $t7, 0x0199($a2)           ## 00000199
/* 01070 80ADA000 3C1980AE */  lui     $t9, %hi(func_80ADBB6C)    ## $t9 = 80AE0000
/* 01074 80ADA004 2739BB6C */  addiu   $t9, $t9, %lo(func_80ADBB6C) ## $t9 = 80ADBB6C
/* 01078 80ADA008 35F8000A */  ori     $t8, $t7, 0x000A           ## $t8 = 0000000A
/* 0107C 80ADA00C A0D80199 */  sb      $t8, 0x0199($a2)           ## 00000199
/* 01080 80ADA010 ACD90190 */  sw      $t9, 0x0190($a2)           ## 00000190
/* 01084 80ADA014 E4D00068 */  swc1    $f16, 0x0068($a2)          ## 00000068
/* 01088 80ADA018 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 0108C 80ADA01C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01090 80ADA020 03E00008 */  jr      $ra
/* 01094 80ADA024 00000000 */  nop

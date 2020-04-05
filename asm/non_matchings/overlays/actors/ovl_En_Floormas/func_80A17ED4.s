glabel func_80A17ED4
/* 009C4 80A17ED4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 009C8 80A17ED8 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009CC 80A17EDC 3C014224 */  lui     $at, 0x4224                ## $at = 42240000
/* 009D0 80A17EE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 41.00
/* 009D4 80A17EE4 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 009D8 80A17EE8 AFA40028 */  sw      $a0, 0x0028($sp)
/* 009DC 80A17EEC 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 009E0 80A17EF0 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 009E4 80A17EF4 44070000 */  mfc1    $a3, $f0
/* 009E8 80A17EF8 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 009EC 80A17EFC 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 009F0 80A17F00 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009F4 80A17F04 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 009F8 80A17F08 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 009FC 80A17F0C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00A00 80A17F10 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00A04 80A17F14 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00A08 80A17F18 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00A0C 80A17F1C 3C0F80A2 */  lui     $t7, %hi(func_80A196DC)    ## $t7 = 80A20000
/* 00A10 80A17F20 25EF96DC */  addiu   $t7, $t7, %lo(func_80A196DC) ## $t7 = 80A196DC
/* 00A14 80A17F24 AC4F0190 */  sw      $t7, 0x0190($v0)           ## 00000190
/* 00A18 80A17F28 E4460068 */  swc1    $f6, 0x0068($v0)           ## 00000068
/* 00A1C 80A17F2C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A20 80A17F30 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A24 80A17F34 03E00008 */  jr      $ra
/* 00A28 80A17F38 00000000 */  nop



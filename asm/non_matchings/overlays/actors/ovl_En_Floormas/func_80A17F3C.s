glabel func_80A17F3C
/* 00A2C 80A17F3C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A30 80A17F40 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A34 80A17F44 3C014224 */  lui     $at, 0x4224                ## $at = 42240000
/* 00A38 80A17F48 44812000 */  mtc1    $at, $f4                   ## $f4 = 41.00
/* 00A3C 80A17F4C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 00A40 80A17F50 AFA40028 */  sw      $a0, 0x0028($sp)
/* 00A44 80A17F54 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 00A48 80A17F58 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 00A4C 80A17F5C 44070000 */  mfc1    $a3, $f0
/* 00A50 80A17F60 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 00A54 80A17F64 24A519CC */  addiu   $a1, $a1, 0x19CC           ## $a1 = 060019CC
/* 00A58 80A17F68 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A5C 80A17F6C 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00A60 80A17F70 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 00A64 80A17F74 0C029468 */  jal     SkelAnime_ChangeAnim

/* 00A68 80A17F78 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 00A6C 80A17F7C 8FA20028 */  lw      $v0, 0x0028($sp)
/* 00A70 80A17F80 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00A74 80A17F84 3C0F80A2 */  lui     $t7, %hi(func_80A1928C)    ## $t7 = 80A20000
/* 00A78 80A17F88 25EF928C */  addiu   $t7, $t7, %lo(func_80A1928C) ## $t7 = 80A1928C
/* 00A7C 80A17F8C AC4F0190 */  sw      $t7, 0x0190($v0)           ## 00000190
/* 00A80 80A17F90 E4460068 */  swc1    $f6, 0x0068($v0)           ## 00000068
/* 00A84 80A17F94 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 00A88 80A17F98 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00A8C 80A17F9C 03E00008 */  jr      $ra
/* 00A90 80A17FA0 00000000 */  nop



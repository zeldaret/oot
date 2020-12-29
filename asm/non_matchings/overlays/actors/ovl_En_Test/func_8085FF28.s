glabel func_8085FF28
/* 008D8 8085FF28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008DC 8085FF2C AFBF0014 */  sw      $ra, 0x0014($sp)
/* 008E0 8085FF30 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 008E4 8085FF34 3C050600 */  lui     $a1, %hi(D_0600316C)                ## $a1 = 06000000
/* 008E8 8085FF38 24A5316C */  addiu   $a1, $a1, %lo(D_0600316C)           ## $a1 = 0600316C
/* 008EC 8085FF3C AFA60018 */  sw      $a2, 0x0018($sp)
/* 008F0 8085FF40 0C0294BE */  jal     SkelAnime_ChangeAnimDefaultRepeat
/* 008F4 8085FF44 24840188 */  addiu   $a0, $a0, 0x0188           ## $a0 = 00000188
/* 008F8 8085FF48 8FA40018 */  lw      $a0, 0x0018($sp)
/* 008FC 8085FF4C 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00900 8085FF50 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00904 8085FF54 C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 00908 8085FF58 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0090C 8085FF5C A08007C8 */  sb      $zero, 0x07C8($a0)         ## 000007C8
/* 00910 8085FF60 46062200 */  add.s   $f8, $f4, $f6
/* 00914 8085FF64 0C00B58B */  jal     Actor_SetScale

/* 00918 8085FF68 E4880028 */  swc1    $f8, 0x0028($a0)           ## 00000028
/* 0091C 8085FF6C 8FA40018 */  lw      $a0, 0x0018($sp)
/* 00920 8085FF70 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00924 8085FF74 3C058086 */  lui     $a1, %hi(func_8085FF9C)    ## $a1 = 80860000
/* 00928 8085FF78 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0092C 8085FF7C 24A5FF9C */  addiu   $a1, $a1, %lo(func_8085FF9C) ## $a1 = 8085FF9C
/* 00930 8085FF80 01C17824 */  and     $t7, $t6, $at
/* 00934 8085FF84 0C217D94 */  jal     EnTest_SetupAction
/* 00938 8085FF88 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 0093C 8085FF8C 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 00940 8085FF90 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00944 8085FF94 03E00008 */  jr      $ra
/* 00948 8085FF98 00000000 */  nop

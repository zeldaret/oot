glabel func_808D3EC8
/* 01858 808D3EC8 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0185C 808D3ECC AFB00028 */  sw      $s0, 0x0028($sp)
/* 01860 808D3ED0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01864 808D3ED4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 01868 808D3ED8 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 0186C 808D3EDC AFA50034 */  sw      $a1, 0x0034($sp)
/* 01870 808D3EE0 0C028800 */  jal     SkelAnime_GetFrameCount

/* 01874 808D3EE4 248489DC */  addiu   $a0, $a0, 0x89DC           ## $a0 = 060089DC
/* 01878 808D3EE8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0187C 808D3EEC 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 01880 808D3EF0 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 01884 808D3EF4 46802020 */  cvt.s.w $f0, $f4
/* 01888 808D3EF8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 0188C 808D3EFC 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 01890 808D3F00 24A589DC */  addiu   $a1, $a1, 0x89DC           ## $a1 = 060089DC
/* 01894 808D3F04 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01898 808D3F08 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0189C 808D3F0C E60001F0 */  swc1    $f0, 0x01F0($s0)           ## 000001F0
/* 018A0 808D3F10 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 018A4 808D3F14 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 018A8 808D3F18 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 018AC 808D3F1C 0C029468 */  jal     SkelAnime_ChangeAnim

/* 018B0 808D3F20 E7A60018 */  swc1    $f6, 0x0018($sp)
/* 018B4 808D3F24 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 018B8 808D3F28 3C0F808D */  lui     $t7, %hi(func_808D40C8)    ## $t7 = 808D0000
/* 018BC 808D3F2C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 018C0 808D3F30 25EF40C8 */  addiu   $t7, $t7, %lo(func_808D40C8) ## $t7 = 808D40C8
/* 018C4 808D3F34 0301C824 */  and     $t9, $t8, $at
/* 018C8 808D3F38 AE0F0190 */  sw      $t7, 0x0190($s0)           ## 00000190
/* 018CC 808D3F3C AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 018D0 808D3F40 A6001390 */  sh      $zero, 0x1390($s0)         ## 00001390
/* 018D4 808D3F44 8FBF002C */  lw      $ra, 0x002C($sp)
/* 018D8 808D3F48 8FB00028 */  lw      $s0, 0x0028($sp)
/* 018DC 808D3F4C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 018E0 808D3F50 03E00008 */  jr      $ra
/* 018E4 808D3F54 00000000 */  nop



glabel func_80B3F010
/* 02E30 80B3F010 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 02E34 80B3F014 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 02E38 80B3F018 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02E3C 80B3F01C AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02E40 80B3F020 AFA40028 */  sw      $a0, 0x0028($sp)
/* 02E44 80B3F024 85F8145E */  lh      $t8, 0x145E($t7)           ## 8016145E
/* 02E48 80B3F028 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 02E4C 80B3F02C 44814000 */  mtc1    $at, $f8                   ## $f8 = 140.00
/* 02E50 80B3F030 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 02E54 80B3F034 C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 02E58 80B3F038 3C040600 */  lui     $a0, %hi(D_06004828)                ## $a0 = 06000000
/* 02E5C 80B3F03C 468021A0 */  cvt.s.w $f6, $f4
/* 02E60 80B3F040 46083280 */  add.s   $f10, $f6, $f8
/* 02E64 80B3F044 4600503E */  c.le.s  $f10, $f0
/* 02E68 80B3F048 00000000 */  nop
/* 02E6C 80B3F04C 45020017 */  bc1fl   .L80B3F0AC
/* 02E70 80B3F050 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02E74 80B3F054 0C028800 */  jal     Animation_GetLastFrame

/* 02E78 80B3F058 24844828 */  addiu   $a0, $a0, %lo(D_06004828)           ## $a0 = 06004828
/* 02E7C 80B3F05C 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 02E80 80B3F060 3C01C140 */  lui     $at, 0xC140                ## $at = C1400000
/* 02E84 80B3F064 44812000 */  mtc1    $at, $f4                   ## $f4 = -12.00
/* 02E88 80B3F068 468084A0 */  cvt.s.w $f18, $f16
/* 02E8C 80B3F06C 8FA40028 */  lw      $a0, 0x0028($sp)
/* 02E90 80B3F070 3C050600 */  lui     $a1, %hi(D_06004828)                ## $a1 = 06000000
/* 02E94 80B3F074 24A54828 */  addiu   $a1, $a1, %lo(D_06004828)           ## $a1 = 06004828
/* 02E98 80B3F078 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02E9C 80B3F07C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 02EA0 80B3F080 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 02EA4 80B3F084 AFA00014 */  sw      $zero, 0x0014($sp)
/* 02EA8 80B3F088 E7A40018 */  swc1    $f4, 0x0018($sp)
/* 02EAC 80B3F08C 0C029468 */  jal     Animation_Change

/* 02EB0 80B3F090 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02EB4 80B3F094 8FA20028 */  lw      $v0, 0x0028($sp)
/* 02EB8 80B3F098 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02EBC 80B3F09C 24190029 */  addiu   $t9, $zero, 0x0029         ## $t9 = 00000029
/* 02EC0 80B3F0A0 AC590260 */  sw      $t9, 0x0260($v0)           ## 00000260
/* 02EC4 80B3F0A4 E4460268 */  swc1    $f6, 0x0268($v0)           ## 00000268
/* 02EC8 80B3F0A8 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B3F0AC:
/* 02ECC 80B3F0AC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02ED0 80B3F0B0 03E00008 */  jr      $ra
/* 02ED4 80B3F0B4 00000000 */  nop

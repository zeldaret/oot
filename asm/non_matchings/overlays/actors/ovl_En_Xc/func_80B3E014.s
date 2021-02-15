glabel func_80B3E014
/* 01E34 80B3E014 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 01E38 80B3E018 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 01E3C 80B3E01C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01E40 80B3E020 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 01E44 80B3E024 AFA40028 */  sw      $a0, 0x0028($sp)
/* 01E48 80B3E028 85F8145E */  lh      $t8, 0x145E($t7)           ## 8016145E
/* 01E4C 80B3E02C 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 01E50 80B3E030 44814000 */  mtc1    $at, $f8                   ## $f8 = 140.00
/* 01E54 80B3E034 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 01E58 80B3E038 C4800090 */  lwc1    $f0, 0x0090($a0)           ## 00000090
/* 01E5C 80B3E03C 3C040600 */  lui     $a0, %hi(D_06004828)                ## $a0 = 06000000
/* 01E60 80B3E040 468021A0 */  cvt.s.w $f6, $f4
/* 01E64 80B3E044 46083280 */  add.s   $f10, $f6, $f8
/* 01E68 80B3E048 4600503E */  c.le.s  $f10, $f0
/* 01E6C 80B3E04C 00000000 */  nop
/* 01E70 80B3E050 45020017 */  bc1fl   .L80B3E0B0
/* 01E74 80B3E054 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 01E78 80B3E058 0C028800 */  jal     Animation_GetLastFrame

/* 01E7C 80B3E05C 24844828 */  addiu   $a0, $a0, %lo(D_06004828)           ## $a0 = 06004828
/* 01E80 80B3E060 44828000 */  mtc1    $v0, $f16                  ## $f16 = 0.00
/* 01E84 80B3E064 3C01C140 */  lui     $at, 0xC140                ## $at = C1400000
/* 01E88 80B3E068 44812000 */  mtc1    $at, $f4                   ## $f4 = -12.00
/* 01E8C 80B3E06C 468084A0 */  cvt.s.w $f18, $f16
/* 01E90 80B3E070 8FA40028 */  lw      $a0, 0x0028($sp)
/* 01E94 80B3E074 3C050600 */  lui     $a1, %hi(D_06004828)                ## $a1 = 06000000
/* 01E98 80B3E078 24A54828 */  addiu   $a1, $a1, %lo(D_06004828)           ## $a1 = 06004828
/* 01E9C 80B3E07C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01EA0 80B3E080 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01EA4 80B3E084 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 01EA8 80B3E088 AFA00014 */  sw      $zero, 0x0014($sp)
/* 01EAC 80B3E08C E7A40018 */  swc1    $f4, 0x0018($sp)
/* 01EB0 80B3E090 0C029468 */  jal     Animation_Change

/* 01EB4 80B3E094 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01EB8 80B3E098 8FA20028 */  lw      $v0, 0x0028($sp)
/* 01EBC 80B3E09C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01EC0 80B3E0A0 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 01EC4 80B3E0A4 AC590260 */  sw      $t9, 0x0260($v0)           ## 00000260
/* 01EC8 80B3E0A8 E4460268 */  swc1    $f6, 0x0268($v0)           ## 00000268
/* 01ECC 80B3E0AC 8FBF0024 */  lw      $ra, 0x0024($sp)
.L80B3E0B0:
/* 01ED0 80B3E0B0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01ED4 80B3E0B4 03E00008 */  jr      $ra
/* 01ED8 80B3E0B8 00000000 */  nop

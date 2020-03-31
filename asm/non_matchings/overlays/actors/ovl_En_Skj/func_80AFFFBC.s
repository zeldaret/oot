glabel func_80AFFFBC
/* 01D0C 80AFFFBC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01D10 80AFFFC0 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 01D14 80AFFFC4 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01D18 80AFFFC8 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 01D1C 80AFFFCC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D20 80AFFFD0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 01D24 80AFFFD4 E4840060 */  swc1    $f4, 0x0060($a0)           ## 00000060
/* 01D28 80AFFFD8 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 01D2C 80AFFFDC AFA40018 */  sw      $a0, 0x0018($sp)
/* 01D30 80AFFFE0 0C2BF8AC */  jal     func_80AFE2B0
/* 01D34 80AFFFE4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01D38 80AFFFE8 8FA60018 */  lw      $a2, 0x0018($sp)
/* 01D3C 80AFFFEC 0C029502 */  jal     SkelAnime_AnimationReverse
/* 01D40 80AFFFF0 24C4014C */  addiu   $a0, $a2, 0x014C           ## $a0 = 0000014C
/* 01D44 80AFFFF4 8FA40018 */  lw      $a0, 0x0018($sp)
/* 01D48 80AFFFF8 24050011 */  addiu   $a1, $zero, 0x0011         ## $a1 = 00000011
/* 01D4C 80AFFFFC C4880158 */  lwc1    $f8, 0x0158($a0)           ## 00000158
/* 01D50 80B00000 0C2BF8CE */  jal     func_80AFE338
/* 01D54 80B00004 E4880164 */  swc1    $f8, 0x0164($a0)           ## 00000164
/* 01D58 80B00008 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 01D5C 80B0000C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D60 80B00010 03E00008 */  jr      $ra
/* 01D64 80B00014 00000000 */  nop



glabel func_80ADE1BC
/* 0046C 80ADE1BC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00470 80ADE1C0 AFBF0014 */  sw      $ra, 0x0014($sp)
/* 00474 80ADE1C4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00478 80ADE1C8 8CCE02A4 */  lw      $t6, 0x02A4($a2)           ## 000002A4
/* 0047C 80ADE1CC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00480 80ADE1D0 8DC50010 */  lw      $a1, 0x0010($t6)           ## 00000010
/* 00484 80ADE1D4 0C0294BE */  jal     SkelAnime_ChangeAnimationDefaultRepeat
/* 00488 80ADE1D8 AFA60018 */  sw      $a2, 0x0018($sp)
/* 0048C 80ADE1DC 8FA60018 */  lw      $a2, 0x0018($sp)
/* 00490 80ADE1E0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00494 80ADE1E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00498 80ADE1E8 3C0F80AE */  lui     $t7, %hi(func_80ADEC9C)    ## $t7 = 80AE0000
/* 0049C 80ADE1EC 25EFEC9C */  addiu   $t7, $t7, %lo(func_80ADEC9C) ## $t7 = 80ADEC9C
/* 004A0 80ADE1F0 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 004A4 80ADE1F4 A4C00198 */  sh      $zero, 0x0198($a2)         ## 00000198
/* 004A8 80ADE1F8 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 004AC 80ADE1FC 8FBF0014 */  lw      $ra, 0x0014($sp)
/* 004B0 80ADE200 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004B4 80ADE204 03E00008 */  jr      $ra
/* 004B8 80ADE208 00000000 */  nop



glabel func_80ADE4C8
/* 00778 80ADE4C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0077C 80ADE4CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00780 80ADE4D0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00784 80ADE4D4 8CCE02A4 */  lw      $t6, 0x02A4($a2)           ## 000002A4
/* 00788 80ADE4D8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0078C 80ADE4DC 8DC50010 */  lw      $a1, 0x0010($t6)           ## 00000010
/* 00790 80ADE4E0 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 00794 80ADE4E4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00798 80ADE4E8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0079C 80ADE4EC 3C01C0A0 */  lui     $at, 0xC0A0                ## $at = C0A00000
/* 007A0 80ADE4F0 44812000 */  mtc1    $at, $f4                   ## $f4 = -5.00
/* 007A4 80ADE4F4 3C0F80AE */  lui     $t7, %hi(func_80ADF574)    ## $t7 = 80AE0000
/* 007A8 80ADE4F8 25EFF574 */  addiu   $t7, $t7, %lo(func_80ADF574) ## $t7 = 80ADF574
/* 007AC 80ADE4FC ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 007B0 80ADE500 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 007B4 80ADE504 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007B8 80ADE508 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007BC 80ADE50C 03E00008 */  jr      $ra                        
/* 007C0 80ADE510 00000000 */  nop



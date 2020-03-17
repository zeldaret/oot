glabel func_80ADE114
/* 003C4 80ADE114 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003C8 80ADE118 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003CC 80ADE11C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003D0 80ADE120 8CCE02A4 */  lw      $t6, 0x02A4($a2)           ## 000002A4
/* 003D4 80ADE124 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 003D8 80ADE128 8DC5000C */  lw      $a1, 0x000C($t6)           ## 0000000C
/* 003DC 80ADE12C 0C0294BE */  jal     func_800A52F8              
/* 003E0 80ADE130 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003E4 80ADE134 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 003E8 80ADE138 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 003EC 80ADE13C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 003F0 80ADE140 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003F4 80ADE144 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003F8 80ADE148 3C0F80AE */  lui     $t7, %hi(func_80ADEAC4)    ## $t7 = 80AE0000
/* 003FC 80ADE14C 25EFEAC4 */  addiu   $t7, $t7, %lo(func_80ADEAC4) ## $t7 = 80ADEAC4
/* 00400 80ADE150 A4C20198 */  sh      $v0, 0x0198($a2)           ## 00000198
/* 00404 80ADE154 ACCF0190 */  sw      $t7, 0x0190($a2)           ## 00000190
/* 00408 80ADE158 E4C40068 */  swc1    $f4, 0x0068($a2)           ## 00000068
/* 0040C 80ADE15C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00410 80ADE160 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00414 80ADE164 03E00008 */  jr      $ra                        
/* 00418 80ADE168 00000000 */  nop



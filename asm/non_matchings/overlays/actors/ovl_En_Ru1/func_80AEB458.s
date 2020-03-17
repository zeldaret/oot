glabel func_80AEB458
/* 00848 80AEB458 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0084C 80AEB45C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00850 80AEB460 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00854 80AEB464 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000000
/* 00858 80AEB468 0C2BABE8 */  jal     func_80AEAFA0              
/* 0085C 80AEB46C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00860 80AEB470 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00864 80AEB474 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00868 80AEB478 03E00008 */  jr      $ra                        
/* 0086C 80AEB47C 00000000 */  nop



glabel func_80AE5688
/* 009B8 80AE5688 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009BC 80AE568C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009C0 80AE5690 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009C4 80AE5694 A480027E */  sh      $zero, 0x027E($a0)         ## 0000027E
/* 009C8 80AE5698 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009CC 80AE569C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 009D0 80AE56A0 24053987 */  addiu   $a1, $zero, 0x3987         ## $a1 = 00003987
/* 009D4 80AE56A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 009D8 80AE56A8 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 009DC 80AE56AC 3C0880AE */  lui     $t0, %hi(func_80AE56E0)    ## $t0 = 80AE0000
/* 009E0 80AE56B0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 009E4 80AE56B4 250856E0 */  addiu   $t0, $t0, %lo(func_80AE56E0) ## $t0 = 80AE56E0
/* 009E8 80AE56B8 AC88026C */  sw      $t0, 0x026C($a0)           ## 0000026C
/* 009EC 80AE56BC 01C17825 */  or      $t7, $t6, $at              ## $t7 = 08000000
/* 009F0 80AE56C0 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 009F4 80AE56C4 01E1C824 */  and     $t9, $t7, $at              
/* 009F8 80AE56C8 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 009FC 80AE56CC AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00A00 80AE56D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A04 80AE56D4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A08 80AE56D8 03E00008 */  jr      $ra                        
/* 00A0C 80AE56DC 00000000 */  nop

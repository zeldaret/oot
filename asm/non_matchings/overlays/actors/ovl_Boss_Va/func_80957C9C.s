glabel func_80957C9C
/* 089DC 80957C9C 3C0E8096 */  lui     $t6, %hi(D_809668D2)       ## $t6 = 80960000
/* 089E0 80957CA0 81CE68D2 */  lb      $t6, %lo(D_809668D2)($t6)  
/* 089E4 80957CA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 089E8 80957CA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 089EC 80957CAC 19C00004 */  blez    $t6, .L80957CC0            
/* 089F0 80957CB0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 089F4 80957CB4 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 089F8 80957CB8 3C018096 */  lui     $at, %hi(D_80966934)       ## $at = 80960000
/* 089FC 80957CBC A42F6934 */  sh      $t7, %lo(D_80966934)($at)  
.L80957CC0:
/* 08A00 80957CC0 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 08A04 80957CC4 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 08A08 80957CC8 3C058095 */  lui     $a1, %hi(func_80957CEC)    ## $a1 = 80950000
/* 08A0C 80957CCC 0301C824 */  and     $t9, $t8, $at              
/* 08A10 80957CD0 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 08A14 80957CD4 0C253CB0 */  jal     func_8094F2C0              
/* 08A18 80957CD8 24A57CEC */  addiu   $a1, $a1, %lo(func_80957CEC) ## $a1 = 80957CEC
/* 08A1C 80957CDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 08A20 80957CE0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 08A24 80957CE4 03E00008 */  jr      $ra                        
/* 08A28 80957CE8 00000000 */  nop



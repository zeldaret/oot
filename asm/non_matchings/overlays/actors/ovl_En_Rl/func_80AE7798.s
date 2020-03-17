glabel func_80AE7798
/* 004E8 80AE7798 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004EC 80AE779C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004F0 80AE77A0 0C2B9D9A */  jal     func_80AE7668              
/* 004F4 80AE77A4 00000000 */  nop
/* 004F8 80AE77A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004FC 80AE77AC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00500 80AE77B0 03E00008 */  jr      $ra                        
/* 00504 80AE77B4 00000000 */  nop



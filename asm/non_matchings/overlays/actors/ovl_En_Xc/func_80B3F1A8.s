glabel func_80B3F1A8
/* 02FC8 80B3F1A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02FCC 80B3F1AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02FD0 80B3F1B0 0C2CF919 */  jal     func_80B3E464              
/* 02FD4 80B3F1B4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02FD8 80B3F1B8 0C2CFBBB */  jal     func_80B3EEEC              
/* 02FDC 80B3F1BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 02FE0 80B3F1C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02FE4 80B3F1C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02FE8 80B3F1C8 03E00008 */  jr      $ra                        
/* 02FEC 80B3F1CC 00000000 */  nop



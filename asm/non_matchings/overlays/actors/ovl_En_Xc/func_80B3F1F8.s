glabel func_80B3F1F8
/* 03018 80B3F1F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0301C 80B3F1FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03020 80B3F200 0C2CF93E */  jal     func_80B3E4F8              
/* 03024 80B3F204 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03028 80B3F208 0C2CFBCD */  jal     func_80B3EF34              
/* 0302C 80B3F20C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03030 80B3F210 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03034 80B3F214 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03038 80B3F218 03E00008 */  jr      $ra                        
/* 0303C 80B3F21C 00000000 */  nop



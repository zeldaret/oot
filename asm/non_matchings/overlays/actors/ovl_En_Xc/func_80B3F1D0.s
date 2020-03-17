glabel func_80B3F1D0
/* 02FF0 80B3F1D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02FF4 80B3F1D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02FF8 80B3F1D8 0C2CF92B */  jal     func_80B3E4AC              
/* 02FFC 80B3F1DC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03000 80B3F1E0 0C2CFBC4 */  jal     func_80B3EF10              
/* 03004 80B3F1E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03008 80B3F1E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0300C 80B3F1EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03010 80B3F1F0 03E00008 */  jr      $ra                        
/* 03014 80B3F1F4 00000000 */  nop



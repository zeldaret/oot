glabel func_80B99204
/* 00764 80B99204 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00768 80B99208 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0076C 80B9920C 0C2E6443 */  jal     func_80B9910C              
/* 00770 80B99210 00000000 */  nop
/* 00774 80B99214 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00778 80B99218 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0077C 80B9921C 03E00008 */  jr      $ra                        
/* 00780 80B99220 00000000 */  nop



glabel func_8083C8DC
/* 0A6CC 8083C8DC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A6D0 8083C8E0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0A6D4 8083C8E4 00063400 */  sll     $a2, $a2, 16               
/* 0A6D8 8083C8E8 00063403 */  sra     $a2, $a2, 16               
/* 0A6DC 8083C8EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A6E0 8083C8F0 A486083C */  sh      $a2, 0x083C($a0)           ## 0000083C
/* 0A6E4 8083C8F4 848E083C */  lh      $t6, 0x083C($a0)           ## 0000083C
/* 0A6E8 8083C8F8 0C20F216 */  jal     func_8083C858              
/* 0A6EC 8083C8FC A48E00B6 */  sh      $t6, 0x00B6($a0)           ## 000000B6
/* 0A6F0 8083C900 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A6F4 8083C904 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A6F8 8083C908 03E00008 */  jr      $ra                        
/* 0A6FC 8083C90C 00000000 */  nop

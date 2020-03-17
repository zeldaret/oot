glabel func_8084E988
/* 1C778 8084E988 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1C77C 8084E98C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1C780 8084E990 3C058085 */  lui     $a1, %hi(D_808549F0)       ## $a1 = 80850000
/* 1C784 8084E994 0C20CA49 */  jal     func_80832924              
/* 1C788 8084E998 24A549F0 */  addiu   $a1, $a1, %lo(D_808549F0)  ## $a1 = 808549F0
/* 1C78C 8084E99C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1C790 8084E9A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1C794 8084E9A4 03E00008 */  jr      $ra                        
/* 1C798 8084E9A8 00000000 */  nop



glabel func_80B93D90
/* 00230 80B93D90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00234 80B93D94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00238 80B93D98 0C2E4ED8 */  jal     func_80B93B60              
/* 0023C 80B93D9C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00240 80B93DA0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00244 80B93DA4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00248 80B93DA8 03E00008 */  jr      $ra                        
/* 0024C 80B93DAC 00000000 */  nop



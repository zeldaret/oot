glabel func_80AC3180
/* 004E0 80AC3180 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004E4 80AC3184 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004E8 80AC3188 0C042DC8 */  jal     func_8010B720              
/* 004EC 80AC318C 24057076 */  addiu   $a1, $zero, 0x7076         ## $a1 = 00007076
/* 004F0 80AC3190 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004F4 80AC3194 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004F8 80AC3198 03E00008 */  jr      $ra                        
/* 004FC 80AC319C 00000000 */  nop



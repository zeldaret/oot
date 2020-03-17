glabel func_80B400E4
/* 03F04 80B400E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03F08 80B400E8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03F0C 80B400EC 0C2CFFC3 */  jal     func_80B3FF0C              
/* 03F10 80B400F0 00000000 */  nop
/* 03F14 80B400F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F18 80B400F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F1C 80B400FC 03E00008 */  jr      $ra                        
/* 03F20 80B40100 00000000 */  nop



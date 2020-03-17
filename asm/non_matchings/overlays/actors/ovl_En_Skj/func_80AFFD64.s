glabel func_80AFFD64
/* 01AB4 80AFFD64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01AB8 80AFFD68 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01ABC 80AFFD6C 0C2BF8CE */  jal     func_80AFE338              
/* 01AC0 80AFFD70 2405000D */  addiu   $a1, $zero, 0x000D         ## $a1 = 0000000D
/* 01AC4 80AFFD74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01AC8 80AFFD78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01ACC 80AFFD7C 03E00008 */  jr      $ra                        
/* 01AD0 80AFFD80 00000000 */  nop



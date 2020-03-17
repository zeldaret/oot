glabel func_80B3F0B8
/* 02ED8 80B3F0B8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02EDC 80B3F0BC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02EE0 80B3F0C0 24050029 */  addiu   $a1, $zero, 0x0029         ## $a1 = 00000029
/* 02EE4 80B3F0C4 0C2CF1EF */  jal     func_80B3C7BC              
/* 02EE8 80B3F0C8 2406002A */  addiu   $a2, $zero, 0x002A         ## $a2 = 0000002A
/* 02EEC 80B3F0CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EF0 80B3F0D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02EF4 80B3F0D4 03E00008 */  jr      $ra                        
/* 02EF8 80B3F0D8 00000000 */  nop



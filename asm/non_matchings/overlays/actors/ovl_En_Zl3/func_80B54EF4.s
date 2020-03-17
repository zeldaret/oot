glabel func_80B54EF4
/* 01B44 80B54EF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01B48 80B54EF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01B4C 80B54EFC 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01B50 80B54F00 0C01E245 */  jal     func_80078914              
/* 01B54 80B54F04 24056879 */  addiu   $a1, $zero, 0x6879         ## $a1 = 00006879
/* 01B58 80B54F08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01B5C 80B54F0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01B60 80B54F10 03E00008 */  jr      $ra                        
/* 01B64 80B54F14 00000000 */  nop



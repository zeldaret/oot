glabel func_80851154
/* 1EF44 80851154 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EF48 80851158 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EF4C 8085115C 0C20C899 */  jal     func_80832264              
/* 1EF50 80851160 00000000 */  nop
/* 1EF54 80851164 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1EF58 80851168 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1EF5C 8085116C 03E00008 */  jr      $ra                        
/* 1EF60 80851170 00000000 */  nop

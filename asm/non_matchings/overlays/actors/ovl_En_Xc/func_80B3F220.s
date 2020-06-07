glabel func_80B3F220
/* 03040 80B3F220 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03044 80B3F224 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03048 80B3F228 0C2CF94F */  jal     func_80B3E53C              
/* 0304C 80B3F22C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03050 80B3F230 0C2CFBD6 */  jal     func_80B3EF58              
/* 03054 80B3F234 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03058 80B3F238 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0305C 80B3F23C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03060 80B3F240 03E00008 */  jr      $ra                        
/* 03064 80B3F244 00000000 */  nop

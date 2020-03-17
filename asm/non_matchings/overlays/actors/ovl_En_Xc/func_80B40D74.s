glabel func_80B40D74
/* 04B94 80B40D74 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B98 80B40D78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B9C 80B40D7C 24050049 */  addiu   $a1, $zero, 0x0049         ## $a1 = 00000049
/* 04BA0 80B40D80 0C2CF1EF */  jal     func_80B3C7BC              
/* 04BA4 80B40D84 2406004A */  addiu   $a2, $zero, 0x004A         ## $a2 = 0000004A
/* 04BA8 80B40D88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04BAC 80B40D8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04BB0 80B40D90 03E00008 */  jr      $ra                        
/* 04BB4 80B40D94 00000000 */  nop



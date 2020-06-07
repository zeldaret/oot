glabel func_80B3FA2C
/* 0384C 80B3FA2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03850 80B3FA30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03854 80B3FA34 0C03CFCF */  jal     func_800F3F3C              
/* 03858 80B3FA38 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 0385C 80B3FA3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03860 80B3FA40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03864 80B3FA44 03E00008 */  jr      $ra                        
/* 03868 80B3FA48 00000000 */  nop

glabel func_80B3EF58
/* 02D78 80B3EF58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D7C 80B3EF5C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D80 80B3EF60 24050023 */  addiu   $a1, $zero, 0x0023         ## $a1 = 00000023
/* 02D84 80B3EF64 24060024 */  addiu   $a2, $zero, 0x0024         ## $a2 = 00000024
/* 02D88 80B3EF68 0C2CF1F5 */  jal     func_80B3C7D4              
/* 02D8C 80B3EF6C 24070022 */  addiu   $a3, $zero, 0x0022         ## $a3 = 00000022
/* 02D90 80B3EF70 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D94 80B3EF74 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D98 80B3EF78 03E00008 */  jr      $ra                        
/* 02D9C 80B3EF7C 00000000 */  nop



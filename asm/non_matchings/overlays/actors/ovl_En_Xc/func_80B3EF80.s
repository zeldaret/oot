glabel func_80B3EF80
/* 02DA0 80B3EF80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DA4 80B3EF84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DA8 80B3EF88 24050024 */  addiu   $a1, $zero, 0x0024         ## $a1 = 00000024
/* 02DAC 80B3EF8C 0C2CF1EF */  jal     func_80B3C7BC              
/* 02DB0 80B3EF90 24060025 */  addiu   $a2, $zero, 0x0025         ## $a2 = 00000025
/* 02DB4 80B3EF94 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DB8 80B3EF98 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02DBC 80B3EF9C 03E00008 */  jr      $ra                        
/* 02DC0 80B3EFA0 00000000 */  nop



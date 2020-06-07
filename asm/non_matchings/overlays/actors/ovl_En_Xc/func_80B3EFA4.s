glabel func_80B3EFA4
/* 02DC4 80B3EFA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02DC8 80B3EFA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02DCC 80B3EFAC 24050025 */  addiu   $a1, $zero, 0x0025         ## $a1 = 00000025
/* 02DD0 80B3EFB0 0C2CF1EF */  jal     func_80B3C7BC              
/* 02DD4 80B3EFB4 24060026 */  addiu   $a2, $zero, 0x0026         ## $a2 = 00000026
/* 02DD8 80B3EFB8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02DDC 80B3EFBC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02DE0 80B3EFC0 03E00008 */  jr      $ra                        
/* 02DE4 80B3EFC4 00000000 */  nop

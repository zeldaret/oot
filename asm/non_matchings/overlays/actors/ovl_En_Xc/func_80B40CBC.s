glabel func_80B40CBC
/* 04ADC 80B40CBC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04AE0 80B40CC0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04AE4 80B40CC4 24050044 */  addiu   $a1, $zero, 0x0044         ## $a1 = 00000044
/* 04AE8 80B40CC8 0C2CF1EF */  jal     func_80B3C7BC              
/* 04AEC 80B40CCC 24060045 */  addiu   $a2, $zero, 0x0045         ## $a2 = 00000045
/* 04AF0 80B40CD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04AF4 80B40CD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04AF8 80B40CD8 03E00008 */  jr      $ra                        
/* 04AFC 80B40CDC 00000000 */  nop

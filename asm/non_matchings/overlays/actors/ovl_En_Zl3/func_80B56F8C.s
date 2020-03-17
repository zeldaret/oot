glabel func_80B56F8C
/* 03BDC 80B56F8C 8C820310 */  lw      $v0, 0x0310($a0)           ## 00000310
/* 03BE0 80B56F90 00A2082A */  slt     $at, $a1, $v0              
/* 03BE4 80B56F94 10200003 */  beq     $at, $zero, .L80B56FA4     
/* 03BE8 80B56F98 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03BEC 80B56F9C 03E00008 */  jr      $ra                        
/* 03BF0 80B56FA0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B56FA4:
/* 03BF4 80B56FA4 03E00008 */  jr      $ra                        
/* 03BF8 80B56FA8 00000000 */  nop



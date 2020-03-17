glabel func_80B412FC
/* 0511C 80B412FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 05120 80B41300 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 05124 80B41304 0C2CF94F */  jal     func_80B3E53C              
/* 05128 80B41308 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0512C 80B4130C 0C2D0338 */  jal     func_80B40CE0              
/* 05130 80B41310 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 05134 80B41314 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 05138 80B41318 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0513C 80B4131C 03E00008 */  jr      $ra                        
/* 05140 80B41320 00000000 */  nop



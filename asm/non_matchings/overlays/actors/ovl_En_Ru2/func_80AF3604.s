glabel func_80AF3604
/* 010B4 80AF3604 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 010B8 80AF3608 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 010BC 80AF360C 0C2BCD59 */  jal     func_80AF3564              
/* 010C0 80AF3610 00000000 */  nop
/* 010C4 80AF3614 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 010C8 80AF3618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 010CC 80AF361C 03E00008 */  jr      $ra                        
/* 010D0 80AF3620 00000000 */  nop



glabel func_80B3F9E8
/* 03808 80B3F9E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0380C 80B3F9EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03810 80B3F9F0 0C2CFD67 */  jal     func_80B3F59C              
/* 03814 80B3F9F4 00000000 */  nop
/* 03818 80B3F9F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0381C 80B3F9FC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03820 80B3FA00 03E00008 */  jr      $ra                        
/* 03824 80B3FA04 00000000 */  nop



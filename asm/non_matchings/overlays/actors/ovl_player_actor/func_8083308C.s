glabel func_8083308C
/* 00E7C 8083308C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E80 80833090 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E84 80833094 0C20CC19 */  jal     func_80833064              
/* 00E88 80833098 2407001C */  addiu   $a3, $zero, 0x001C         ## $a3 = 0000001C
/* 00E8C 8083309C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E90 808330A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E94 808330A4 03E00008 */  jr      $ra                        
/* 00E98 808330A8 00000000 */  nop

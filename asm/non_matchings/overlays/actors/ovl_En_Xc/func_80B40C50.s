glabel func_80B40C50
/* 04A70 80B40C50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04A74 80B40C54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04A78 80B40C58 24050041 */  addiu   $a1, $zero, 0x0041         ## $a1 = 00000041
/* 04A7C 80B40C5C 0C2CF1EF */  jal     func_80B3C7BC              
/* 04A80 80B40C60 24060042 */  addiu   $a2, $zero, 0x0042         ## $a2 = 00000042
/* 04A84 80B40C64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04A88 80B40C68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04A8C 80B40C6C 03E00008 */  jr      $ra                        
/* 04A90 80B40C70 00000000 */  nop



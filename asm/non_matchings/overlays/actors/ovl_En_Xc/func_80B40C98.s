glabel func_80B40C98
/* 04AB8 80B40C98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04ABC 80B40C9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04AC0 80B40CA0 24050043 */  addiu   $a1, $zero, 0x0043         ## $a1 = 00000043
/* 04AC4 80B40CA4 0C2CF1EF */  jal     func_80B3C7BC              
/* 04AC8 80B40CA8 24060044 */  addiu   $a2, $zero, 0x0044         ## $a2 = 00000044
/* 04ACC 80B40CAC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04AD0 80B40CB0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04AD4 80B40CB4 03E00008 */  jr      $ra                        
/* 04AD8 80B40CB8 00000000 */  nop

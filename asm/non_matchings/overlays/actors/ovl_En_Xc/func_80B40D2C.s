glabel func_80B40D2C
/* 04B4C 80B40D2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B50 80B40D30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B54 80B40D34 24050047 */  addiu   $a1, $zero, 0x0047         ## $a1 = 00000047
/* 04B58 80B40D38 0C2CF1EF */  jal     func_80B3C7BC              
/* 04B5C 80B40D3C 24060048 */  addiu   $a2, $zero, 0x0048         ## $a2 = 00000048
/* 04B60 80B40D40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B64 80B40D44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B68 80B40D48 03E00008 */  jr      $ra                        
/* 04B6C 80B40D4C 00000000 */  nop

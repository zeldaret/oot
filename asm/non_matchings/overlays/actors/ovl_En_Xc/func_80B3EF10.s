glabel func_80B3EF10
/* 02D30 80B3EF10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D34 80B3EF14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D38 80B3EF18 24050021 */  addiu   $a1, $zero, 0x0021         ## $a1 = 00000021
/* 02D3C 80B3EF1C 0C2CF1EF */  jal     func_80B3C7BC              
/* 02D40 80B3EF20 24060022 */  addiu   $a2, $zero, 0x0022         ## $a2 = 00000022
/* 02D44 80B3EF24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D48 80B3EF28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D4C 80B3EF2C 03E00008 */  jr      $ra                        
/* 02D50 80B3EF30 00000000 */  nop

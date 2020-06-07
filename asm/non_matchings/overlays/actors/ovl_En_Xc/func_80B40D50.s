glabel func_80B40D50
/* 04B70 80B40D50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B74 80B40D54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B78 80B40D58 24050048 */  addiu   $a1, $zero, 0x0048         ## $a1 = 00000048
/* 04B7C 80B40D5C 0C2CF1EF */  jal     func_80B3C7BC              
/* 04B80 80B40D60 24060049 */  addiu   $a2, $zero, 0x0049         ## $a2 = 00000049
/* 04B84 80B40D64 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B88 80B40D68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B8C 80B40D6C 03E00008 */  jr      $ra                        
/* 04B90 80B40D70 00000000 */  nop

glabel func_80B40D08
/* 04B28 80B40D08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B2C 80B40D0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B30 80B40D10 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 04B34 80B40D14 0C2CF1EF */  jal     func_80B3C7BC              
/* 04B38 80B40D18 24060047 */  addiu   $a2, $zero, 0x0047         ## $a2 = 00000047
/* 04B3C 80B40D1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B40 80B40D20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B44 80B40D24 03E00008 */  jr      $ra                        
/* 04B48 80B40D28 00000000 */  nop



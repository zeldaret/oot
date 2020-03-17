glabel func_80B40CE0
/* 04B00 80B40CE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04B04 80B40CE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04B08 80B40CE8 24050045 */  addiu   $a1, $zero, 0x0045         ## $a1 = 00000045
/* 04B0C 80B40CEC 24060046 */  addiu   $a2, $zero, 0x0046         ## $a2 = 00000046
/* 04B10 80B40CF0 0C2CF1F5 */  jal     func_80B3C7D4              
/* 04B14 80B40CF4 24070044 */  addiu   $a3, $zero, 0x0044         ## $a3 = 00000044
/* 04B18 80B40CF8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 04B1C 80B40CFC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04B20 80B40D00 03E00008 */  jr      $ra                        
/* 04B24 80B40D04 00000000 */  nop



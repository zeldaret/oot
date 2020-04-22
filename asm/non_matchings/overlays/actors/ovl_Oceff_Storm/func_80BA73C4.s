glabel func_80BA73C4
/* 002E4 80BA73C4 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 002E8 80BA73C8 9082014E */  lbu     $v0, 0x014E($a0)           ## 0000014E
/* 002EC 80BA73CC 28410064 */  slti    $at, $v0, 0x0064           
/* 002F0 80BA73D0 10200002 */  beq     $at, $zero, .L80BA73DC     
/* 002F4 80BA73D4 244E0005 */  addiu   $t6, $v0, 0x0005           ## $t6 = 00000005
/* 002F8 80BA73D8 A08E014E */  sb      $t6, 0x014E($a0)           ## 0000014E
.L80BA73DC:
/* 002FC 80BA73DC 03E00008 */  jr      $ra                        
/* 00300 80BA73E0 00000000 */  nop

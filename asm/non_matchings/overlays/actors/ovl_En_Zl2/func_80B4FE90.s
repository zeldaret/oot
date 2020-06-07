glabel func_80B4FE90
/* 01500 80B4FE90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01504 80B4FE94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01508 80B4FE98 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 0150C 80B4FE9C 0C01E245 */  jal     func_80078914              
/* 01510 80B4FEA0 24056878 */  addiu   $a1, $zero, 0x6878         ## $a1 = 00006878
/* 01514 80B4FEA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01518 80B4FEA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0151C 80B4FEAC 03E00008 */  jr      $ra                        
/* 01520 80B4FEB0 00000000 */  nop

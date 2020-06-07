glabel func_80B4FED8
/* 01548 80B4FED8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0154C 80B4FEDC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01550 80B4FEE0 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 01554 80B4FEE4 0C01E245 */  jal     func_80078914              
/* 01558 80B4FEE8 24056875 */  addiu   $a1, $zero, 0x6875         ## $a1 = 00006875
/* 0155C 80B4FEEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01560 80B4FEF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01564 80B4FEF4 03E00008 */  jr      $ra                        
/* 01568 80B4FEF8 00000000 */  nop

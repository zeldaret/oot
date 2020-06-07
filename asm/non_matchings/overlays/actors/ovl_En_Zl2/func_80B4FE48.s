glabel func_80B4FE48
/* 014B8 80B4FE48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014BC 80B4FE4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014C0 80B4FE50 248400E4 */  addiu   $a0, $a0, 0x00E4           ## $a0 = 000000E4
/* 014C4 80B4FE54 0C01E245 */  jal     func_80078914              
/* 014C8 80B4FE58 24052086 */  addiu   $a1, $zero, 0x2086         ## $a1 = 00002086
/* 014CC 80B4FE5C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 014D0 80B4FE60 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014D4 80B4FE64 03E00008 */  jr      $ra                        
/* 014D8 80B4FE68 00000000 */  nop

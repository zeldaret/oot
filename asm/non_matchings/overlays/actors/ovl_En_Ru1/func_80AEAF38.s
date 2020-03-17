glabel func_80AEAF38
/* 00328 80AEAF38 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 0032C 80AEAF3C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00330 80AEAF40 15C00003 */  bne     $t6, $zero, .L80AEAF50     
/* 00334 80AEAF44 00000000 */  nop
/* 00338 80AEAF48 03E00008 */  jr      $ra                        
/* 0033C 80AEAF4C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AEAF50:
/* 00340 80AEAF50 03E00008 */  jr      $ra                        
/* 00344 80AEAF54 00000000 */  nop



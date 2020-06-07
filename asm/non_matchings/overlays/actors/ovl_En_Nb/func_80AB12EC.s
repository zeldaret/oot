glabel func_80AB12EC
/* 0055C 80AB12EC 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 00560 80AB12F0 00057880 */  sll     $t7, $a1,  2               
/* 00564 80AB12F4 008FC021 */  addu    $t8, $a0, $t7              
/* 00568 80AB12F8 11C00003 */  beq     $t6, $zero, .L80AB1308     
/* 0056C 80AB12FC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00570 80AB1300 03E00008 */  jr      $ra                        
/* 00574 80AB1304 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
.L80AB1308:
/* 00578 80AB1308 03E00008 */  jr      $ra                        
/* 0057C 80AB130C 00000000 */  nop

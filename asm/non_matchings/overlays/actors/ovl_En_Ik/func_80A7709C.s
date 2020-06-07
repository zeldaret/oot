glabel func_80A7709C
/* 02D8C 80A7709C 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 02D90 80A770A0 00057880 */  sll     $t7, $a1,  2               
/* 02D94 80A770A4 008FC021 */  addu    $t8, $a0, $t7              
/* 02D98 80A770A8 11C00003 */  beq     $t6, $zero, .L80A770B8     
/* 02D9C 80A770AC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 02DA0 80A770B0 03E00008 */  jr      $ra                        
/* 02DA4 80A770B4 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
.L80A770B8:
/* 02DA8 80A770B8 03E00008 */  jr      $ra                        
/* 02DAC 80A770BC 00000000 */  nop

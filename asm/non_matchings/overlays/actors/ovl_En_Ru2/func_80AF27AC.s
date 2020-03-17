glabel func_80AF27AC
/* 0025C 80AF27AC 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 00260 80AF27B0 00057880 */  sll     $t7, $a1,  2               
/* 00264 80AF27B4 008FC021 */  addu    $t8, $a0, $t7              
/* 00268 80AF27B8 11C00003 */  beq     $t6, $zero, .L80AF27C8     
/* 0026C 80AF27BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00270 80AF27C0 03E00008 */  jr      $ra                        
/* 00274 80AF27C4 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
.L80AF27C8:
/* 00278 80AF27C8 03E00008 */  jr      $ra                        
/* 0027C 80AF27CC 00000000 */  nop



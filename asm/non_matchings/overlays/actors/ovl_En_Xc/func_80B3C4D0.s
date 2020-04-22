glabel func_80B3C4D0
/* 002F0 80B3C4D0 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 002F4 80B3C4D4 00057880 */  sll     $t7, $a1,  2               
/* 002F8 80B3C4D8 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 002FC 80B3C4DC 11C00002 */  beq     $t6, $zero, .L80B3C4E8     
/* 00300 80B3C4E0 008FC021 */  addu    $t8, $a0, $t7              
/* 00304 80B3C4E4 8F031D8C */  lw      $v1, 0x1D8C($t8)           ## 00001D8C
.L80B3C4E8:
/* 00308 80B3C4E8 03E00008 */  jr      $ra                        
/* 0030C 80B3C4EC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000

glabel func_80969CA0
/* 001D0 80969CA0 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 001D4 80969CA4 00057880 */  sll     $t7, $a1,  2               
/* 001D8 80969CA8 008FC021 */  addu    $t8, $a0, $t7              
/* 001DC 80969CAC 11C00003 */  beq     $t6, $zero, .L80969CBC     
/* 001E0 80969CB0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001E4 80969CB4 03E00008 */  jr      $ra                        
/* 001E8 80969CB8 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
.L80969CBC:
/* 001EC 80969CBC 03E00008 */  jr      $ra                        
/* 001F0 80969CC0 00000000 */  nop

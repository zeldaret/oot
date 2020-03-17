glabel func_80B4ED94
/* 00404 80B4ED94 908E1D6C */  lbu     $t6, 0x1D6C($a0)           ## 00001D6C
/* 00408 80B4ED98 00057880 */  sll     $t7, $a1,  2               
/* 0040C 80B4ED9C 008FC021 */  addu    $t8, $a0, $t7              
/* 00410 80B4EDA0 11C00003 */  beq     $t6, $zero, .L80B4EDB0     
/* 00414 80B4EDA4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00418 80B4EDA8 03E00008 */  jr      $ra                        
/* 0041C 80B4EDAC 8F021D8C */  lw      $v0, 0x1D8C($t8)           ## 00001D8C
.L80B4EDB0:
/* 00420 80B4EDB0 03E00008 */  jr      $ra                        
/* 00424 80B4EDB4 00000000 */  nop



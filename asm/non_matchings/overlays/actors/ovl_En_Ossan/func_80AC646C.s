glabel func_80AC646C
/* 037CC 80AC646C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 037D0 80AC6470 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 037D4 80AC6474 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 037D8 80AC6478 0C2B18E1 */  jal     func_80AC6384              
/* 037DC 80AC647C E48402D0 */  swc1    $f4, 0x02D0($a0)           ## 000002D0
/* 037E0 80AC6480 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 037E4 80AC6484 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 037E8 80AC6488 03E00008 */  jr      $ra                        
/* 037EC 80AC648C 00000000 */  nop

glabel func_80B3FA08
/* 03828 80B3FA08 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0382C 80B3FA0C 240E0035 */  addiu   $t6, $zero, 0x0035         ## $t6 = 00000035
/* 03830 80B3FA10 AC8E0260 */  sw      $t6, 0x0260($a0)           ## 00000260
/* 03834 80B3FA14 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 03838 80B3FA18 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 0383C 80B3FA1C 85F81484 */  lh      $t8, 0x1484($t7)           ## 80161484
/* 03840 80B3FA20 271953FC */  addiu   $t9, $t8, 0x53FC           ## $t9 = 000053FC
/* 03844 80B3FA24 03E00008 */  jr      $ra                        
/* 03848 80B3FA28 A49902A4 */  sh      $t9, 0x02A4($a0)           ## 000002A4

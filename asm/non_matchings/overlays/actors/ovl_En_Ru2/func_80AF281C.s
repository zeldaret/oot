glabel func_80AF281C
/* 002CC 80AF281C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002D0 80AF2820 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002D4 80AF2824 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002D8 80AF2828 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002DC 80AF282C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002E0 80AF2830 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 002E4 80AF2834 0C2BC9EB */  jal     func_80AF27AC              
/* 002E8 80AF2838 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 002EC 80AF283C 10400007 */  beq     $v0, $zero, .L80AF285C     
/* 002F0 80AF2840 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002F4 80AF2844 97AE0022 */  lhu     $t6, 0x0022($sp)           
/* 002F8 80AF2848 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 002FC 80AF284C 51CF0004 */  beql    $t6, $t7, .L80AF2860       
/* 00300 80AF2850 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00304 80AF2854 10000002 */  beq     $zero, $zero, .L80AF2860   
/* 00308 80AF2858 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF285C:
/* 0030C 80AF285C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF2860:
/* 00310 80AF2860 03E00008 */  jr      $ra                        
/* 00314 80AF2864 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000



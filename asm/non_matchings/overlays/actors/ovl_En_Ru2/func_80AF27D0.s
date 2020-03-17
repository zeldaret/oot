glabel func_80AF27D0
/* 00280 80AF27D0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00284 80AF27D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00288 80AF27D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0028C 80AF27DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00290 80AF27E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00294 80AF27E4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00298 80AF27E8 0C2BC9EB */  jal     func_80AF27AC              
/* 0029C 80AF27EC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 002A0 80AF27F0 10400007 */  beq     $v0, $zero, .L80AF2810     
/* 002A4 80AF27F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002A8 80AF27F8 97AE0022 */  lhu     $t6, 0x0022($sp)           
/* 002AC 80AF27FC 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 002B0 80AF2800 55CF0004 */  bnel    $t6, $t7, .L80AF2814       
/* 002B4 80AF2804 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 002B8 80AF2808 10000002 */  beq     $zero, $zero, .L80AF2814   
/* 002BC 80AF280C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AF2810:
/* 002C0 80AF2810 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AF2814:
/* 002C4 80AF2814 03E00008 */  jr      $ra                        
/* 002C8 80AF2818 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000



glabel func_80AEDAE0
/* 02ED0 80AEDAE0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02ED4 80AEDAE4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02ED8 80AEDAE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02EDC 80AEDAEC 24A407C0 */  addiu   $a0, $a1, 0x07C0           ## $a0 = 000007C0
/* 02EE0 80AEDAF0 90C5007D */  lbu     $a1, 0x007D($a2)           ## 0000007D
/* 02EE4 80AEDAF4 0C00FAE1 */  jal     DynaPolyInfo_GetActor
              ## DynaPolyInfo_getActor
/* 02EE8 80AEDAF8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02EEC 80AEDAFC 10400005 */  beq     $v0, $zero, .L80AEDB14     
/* 02EF0 80AEDB00 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02EF4 80AEDB04 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 02EF8 80AEDB08 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02EFC 80AEDB0C 55C10005 */  bnel    $t6, $at, .L80AEDB24       
/* 02F00 80AEDB10 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEDB14:
/* 02F04 80AEDB14 94CF0088 */  lhu     $t7, 0x0088($a2)           ## 00000088
/* 02F08 80AEDB18 31F8FFE6 */  andi    $t8, $t7, 0xFFE6           ## $t8 = 00000000
/* 02F0C 80AEDB1C A4D80088 */  sh      $t8, 0x0088($a2)           ## 00000088
/* 02F10 80AEDB20 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEDB24:
/* 02F14 80AEDB24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02F18 80AEDB28 03E00008 */  jr      $ra                        
/* 02F1C 80AEDB2C 00000000 */  nop



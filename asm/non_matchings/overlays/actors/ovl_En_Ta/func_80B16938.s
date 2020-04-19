glabel func_80B16938
/* 02E98 80B16938 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02E9C 80B1693C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02EA0 80B16940 948E02E0 */  lhu     $t6, 0x02E0($a0)           ## 000002E0
/* 02EA4 80B16944 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 02EA8 80B16948 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 02EAC 80B1694C 31CF0010 */  andi    $t7, $t6, 0x0010           ## $t7 = 00000000
/* 02EB0 80B16950 55E0000C */  bnel    $t7, $zero, .L80B16984     
/* 02EB4 80B16954 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02EB8 80B16958 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02EBC 80B1695C AFA50018 */  sw      $a1, 0x0018($sp)           
/* 02EC0 80B16960 10400004 */  beq     $v0, $zero, .L80B16974     
/* 02EC4 80B16964 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 02EC8 80B16968 94B802E0 */  lhu     $t8, 0x02E0($a1)           ## 000002E0
/* 02ECC 80B1696C 37190010 */  ori     $t9, $t8, 0x0010           ## $t9 = 00000010
/* 02ED0 80B16970 A4B902E0 */  sh      $t9, 0x02E0($a1)           ## 000002E0
.L80B16974:
/* 02ED4 80B16974 94A802E0 */  lhu     $t0, 0x02E0($a1)           ## 000002E0
/* 02ED8 80B16978 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 02EDC 80B1697C A4A902E0 */  sh      $t1, 0x02E0($a1)           ## 000002E0
/* 02EE0 80B16980 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B16984:
/* 02EE4 80B16984 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02EE8 80B16988 03E00008 */  jr      $ra                        
/* 02EEC 80B1698C 00000000 */  nop

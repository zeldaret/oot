glabel func_80A323EC
/* 01A7C 80A323EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A80 80A323F0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A84 80A323F4 948E02AC */  lhu     $t6, 0x02AC($a0)           ## 000002AC
/* 01A88 80A323F8 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01A8C 80A323FC 24840198 */  addiu   $a0, $a0, 0x0198           ## $a0 = 00000198
/* 01A90 80A32400 31CF0004 */  andi    $t7, $t6, 0x0004           ## $t7 = 00000000
/* 01A94 80A32404 55E0000C */  bnel    $t7, $zero, .L80A32438     
/* 01A98 80A32408 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A9C 80A3240C 0C02927F */  jal     SkelAnime_Update
              
/* 01AA0 80A32410 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 01AA4 80A32414 10400004 */  beq     $v0, $zero, .L80A32428     
/* 01AA8 80A32418 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 01AAC 80A3241C 94B802AC */  lhu     $t8, 0x02AC($a1)           ## 000002AC
/* 01AB0 80A32420 37190004 */  ori     $t9, $t8, 0x0004           ## $t9 = 00000004
/* 01AB4 80A32424 A4B902AC */  sh      $t9, 0x02AC($a1)           ## 000002AC
.L80A32428:
/* 01AB8 80A32428 94A802AC */  lhu     $t0, 0x02AC($a1)           ## 000002AC
/* 01ABC 80A3242C 35090008 */  ori     $t1, $t0, 0x0008           ## $t1 = 00000008
/* 01AC0 80A32430 A4A902AC */  sh      $t1, 0x02AC($a1)           ## 000002AC
/* 01AC4 80A32434 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A32438:
/* 01AC8 80A32438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01ACC 80A3243C 03E00008 */  jr      $ra                        
/* 01AD0 80A32440 00000000 */  nop

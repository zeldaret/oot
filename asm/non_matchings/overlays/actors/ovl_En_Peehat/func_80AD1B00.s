glabel func_80AD1B00
/* 02660 80AD1B00 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02664 80AD1B04 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 02668 80AD1B08 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 0266C 80AD1B0C AFB0002C */  sw      $s0, 0x002C($sp)           
/* 02670 80AD1B10 848E02FC */  lh      $t6, 0x02FC($a0)           ## 000002FC
/* 02674 80AD1B14 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02678 80AD1B18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0267C 80AD1B1C 15C10011 */  bne     $t6, $at, .L80AD1B64       
/* 02680 80AD1B20 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02684 80AD1B24 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 02688 80AD1B28 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 0268C 80AD1B2C 240F0602 */  addiu   $t7, $zero, 0x0602         ## $t7 = 00000602
/* 02690 80AD1B30 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 02694 80AD1B34 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 02698 80AD1B38 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0269C 80AD1B3C AFAF0020 */  sw      $t7, 0x0020($sp)           
/* 026A0 80AD1B40 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 026A4 80AD1B44 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 026A8 80AD1B48 24A41C24 */  addiu   $a0, $a1, 0x1C24           ## $a0 = 00001C24
/* 026AC 80AD1B4C 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 026B0 80AD1B50 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 026B4 80AD1B54 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 026B8 80AD1B58 50400003 */  beql    $v0, $zero, .L80AD1B68     
/* 026BC 80AD1B5C 861802FC */  lh      $t8, 0x02FC($s0)           ## 000002FC
/* 026C0 80AD1B60 A44001F8 */  sh      $zero, 0x01F8($v0)         ## 000001F8
.L80AD1B64:
/* 026C4 80AD1B64 861802FC */  lh      $t8, 0x02FC($s0)           ## 000002FC
.L80AD1B68:
/* 026C8 80AD1B68 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 026CC 80AD1B6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 026D0 80AD1B70 2719FFFF */  addiu   $t9, $t8, 0xFFFF           ## $t9 = FFFFFFFF
/* 026D4 80AD1B74 A61902FC */  sh      $t9, 0x02FC($s0)           ## 000002FC
/* 026D8 80AD1B78 860802FC */  lh      $t0, 0x02FC($s0)           ## 000002FC
/* 026DC 80AD1B7C 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 026E0 80AD1B80 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 026E4 80AD1B84 55000010 */  bnel    $t0, $zero, .L80AD1BC8     
/* 026E8 80AD1B88 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 026EC 80AD1B8C 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 026F0 80AD1B90 AFA60038 */  sw      $a2, 0x0038($sp)           
/* 026F4 80AD1B94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 026F8 80AD1B98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 026FC 80AD1B9C 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 02700 80AD1BA0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 02704 80AD1BA4 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 02708 80AD1BA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0270C 80AD1BAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02710 80AD1BB0 8FA60038 */  lw      $a2, 0x0038($sp)           
/* 02714 80AD1BB4 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 02718 80AD1BB8 24070040 */  addiu   $a3, $zero, 0x0040         ## $a3 = 00000040
/* 0271C 80AD1BBC 0C00B55C */  jal     Actor_Kill
              
/* 02720 80AD1BC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02724 80AD1BC4 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80AD1BC8:
/* 02728 80AD1BC8 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 0272C 80AD1BCC 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 02730 80AD1BD0 03E00008 */  jr      $ra                        
/* 02734 80AD1BD4 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000



glabel func_809195A4
/* 03B94 809195A4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03B98 809195A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03B9C 809195AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03BA0 809195B0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03BA4 809195B4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03BA8 809195B8 0C02927F */  jal     SkelAnime_Update
              
/* 03BAC 809195BC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03BB0 809195C0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 03BB4 809195C4 3C053F00 */  lui     $a1, 0x3F00                ## $a1 = 3F000000
/* 03BB8 809195C8 0C01E123 */  jal     Math_ApproachZeroF
              
/* 03BBC 809195CC 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 03BC0 809195D0 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 03BC4 809195D4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 03BC8 809195D8 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 03BCC 809195DC 0C01E1EF */  jal     Math_ApproachS
              
/* 03BD0 809195E0 24070BB8 */  addiu   $a3, $zero, 0x0BB8         ## $a3 = 00000BB8
/* 03BD4 809195E4 860E01D2 */  lh      $t6, 0x01D2($s0)           ## 000001D2
/* 03BD8 809195E8 55C00004 */  bnel    $t6, $zero, .L809195FC     
/* 03BDC 809195EC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03BE0 809195F0 0C24592B */  jal     func_809164AC              
/* 03BE4 809195F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03BE8 809195F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809195FC:
/* 03BEC 809195FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03BF0 80919600 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03BF4 80919604 03E00008 */  jr      $ra                        
/* 03BF8 80919608 00000000 */  nop

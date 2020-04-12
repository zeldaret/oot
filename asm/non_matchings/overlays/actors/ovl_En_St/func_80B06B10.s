glabel func_80B06B10
/* 02280 80B06B10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02284 80B06B14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02288 80B06B18 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0228C 80B06B1C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 02290 80B06B20 848203D6 */  lh      $v0, 0x03D6($a0)           ## 000003D6
/* 02294 80B06B24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02298 80B06B28 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0229C 80B06B2C 14400003 */  bne     $v0, $zero, .L80B06B3C     
/* 022A0 80B06B30 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 022A4 80B06B34 10000003 */  beq     $zero, $zero, .L80B06B44   
/* 022A8 80B06B38 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80B06B3C:
/* 022AC 80B06B3C A60E03D6 */  sh      $t6, 0x03D6($s0)           ## 000003D6
/* 022B0 80B06B40 860303D6 */  lh      $v1, 0x03D6($s0)           ## 000003D6
.L80B06B44:
/* 022B4 80B06B44 10600006 */  beq     $v1, $zero, .L80B06B60     
/* 022B8 80B06B48 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 022BC 80B06B4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022C0 80B06B50 0C2C12D0 */  jal     func_80B04B40              
/* 022C4 80B06B54 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 022C8 80B06B58 10000007 */  beq     $zero, $zero, .L80B06B78   
/* 022CC 80B06B5C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B06B60:
/* 022D0 80B06B60 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 022D4 80B06B64 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 022D8 80B06B68 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 022DC 80B06B6C 0C00B55C */  jal     Actor_Kill
              
/* 022E0 80B06B70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 022E4 80B06B74 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B06B78:
/* 022E8 80B06B78 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 022EC 80B06B7C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 022F0 80B06B80 03E00008 */  jr      $ra                        
/* 022F4 80B06B84 00000000 */  nop

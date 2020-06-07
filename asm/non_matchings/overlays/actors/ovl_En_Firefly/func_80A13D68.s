glabel func_80A13D68
/* 00CF8 80A13D68 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00CFC 80A13D6C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D00 80A13D70 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D04 80A13D74 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D08 80A13D78 848201BA */  lh      $v0, 0x01BA($a0)           ## 000001BA
/* 00D0C 80A13D7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D10 80A13D80 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00D14 80A13D84 10400003 */  beq     $v0, $zero, .L80A13D94     
/* 00D18 80A13D88 3C0639B2 */  lui     $a2, 0x39B2                ## $a2 = 39B20000
/* 00D1C 80A13D8C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00D20 80A13D90 A48E01BA */  sh      $t6, 0x01BA($a0)           ## 000001BA
.L80A13D94:
/* 00D24 80A13D94 26040050 */  addiu   $a0, $s0, 0x0050           ## $a0 = 00000050
/* 00D28 80A13D98 0C01DE80 */  jal     Math_ApproxF
              
/* 00D2C 80A13D9C 34C64207 */  ori     $a2, $a2, 0x4207           ## $a2 = 39B24207
/* 00D30 80A13DA0 C6000050 */  lwc1    $f0, 0x0050($s0)           ## 00000050
/* 00D34 80A13DA4 860F01BA */  lh      $t7, 0x01BA($s0)           ## 000001BA
/* 00D38 80A13DA8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00D3C 80A13DAC E6000058 */  swc1    $f0, 0x0058($s0)           ## 00000058
/* 00D40 80A13DB0 15E00007 */  bne     $t7, $zero, .L80A13DD0     
/* 00D44 80A13DB4 E6000054 */  swc1    $f0, 0x0054($s0)           ## 00000054
/* 00D48 80A13DB8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D4C 80A13DBC 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 00D50 80A13DC0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00D54 80A13DC4 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 00D58 80A13DC8 0C00B55C */  jal     Actor_Kill
              
/* 00D5C 80A13DCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A13DD0:
/* 00D60 80A13DD0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D64 80A13DD4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00D68 80A13DD8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00D6C 80A13DDC 03E00008 */  jr      $ra                        
/* 00D70 80A13DE0 00000000 */  nop

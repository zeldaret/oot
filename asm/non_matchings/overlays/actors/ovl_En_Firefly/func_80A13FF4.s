glabel func_80A13FF4
/* 00F84 80A13FF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00F88 80A13FF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F8C 80A13FFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F90 80A14000 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F94 80A14004 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00F98 80A14008 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F9C 80A1400C 24840170 */  addiu   $a0, $a0, 0x0170           ## $a0 = 00000170
/* 00FA0 80A14010 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00FA4 80A14014 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00FA8 80A14018 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00FAC 80A1401C 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
/* 00FB0 80A14020 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 00FB4 80A14024 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00FB8 80A14028 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 00FBC 80A1402C 0C01DE80 */  jal     Math_ApproxF
              
/* 00FC0 80A14030 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00FC4 80A14034 3C063E19 */  lui     $a2, 0x3E19                ## $a2 = 3E190000
/* 00FC8 80A14038 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E19999A
/* 00FCC 80A1403C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00FD0 80A14040 0C01DE80 */  jal     Math_ApproxF
              
/* 00FD4 80A14044 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00FD8 80A14048 5040000B */  beql    $v0, $zero, .L80A14078     
/* 00FDC 80A1404C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FE0 80A14050 860201BA */  lh      $v0, 0x01BA($s0)           ## 000001BA
/* 00FE4 80A14054 10400003 */  beq     $v0, $zero, .L80A14064     
/* 00FE8 80A14058 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00FEC 80A1405C A60E01BA */  sh      $t6, 0x01BA($s0)           ## 000001BA
/* 00FF0 80A14060 860201BA */  lh      $v0, 0x01BA($s0)           ## 000001BA
.L80A14064:
/* 00FF4 80A14064 54400004 */  bnel    $v0, $zero, .L80A14078     
/* 00FF8 80A14068 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00FFC 80A1406C 0C284D43 */  jal     func_80A1350C              
/* 01000 80A14070 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01004 80A14074 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A14078:
/* 01008 80A14078 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0100C 80A1407C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01010 80A14080 03E00008 */  jr      $ra                        
/* 01014 80A14084 00000000 */  nop



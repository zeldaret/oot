glabel func_80A91A90
/* 00D70 80A91A90 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D74 80A91A94 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D78 80A91A98 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00D7C 80A91A9C AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00D80 80A91AA0 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00D84 80A91AA4 0C2A438A */  jal     func_80A90E28              
/* 00D88 80A91AA8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00D8C 80A91AAC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D90 80A91AB0 26240150 */  addiu   $a0, $s1, 0x0150           ## $a0 = 00000150
/* 00D94 80A91AB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D98 80A91AB8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D9C 80A91ABC 0C00B7D5 */  jal     func_8002DF54              
/* 00DA0 80A91AC0 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 00DA4 80A91AC4 0C042F6F */  jal     func_8010BDBC              
/* 00DA8 80A91AC8 260420D8 */  addiu   $a0, $s0, 0x20D8           ## $a0 = 000020D8
/* 00DAC 80A91ACC 862E0196 */  lh      $t6, 0x0196($s1)           ## 00000196
/* 00DB0 80A91AD0 55C2002A */  bnel    $t6, $v0, .L80A91B7C       
/* 00DB4 80A91AD4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DB8 80A91AD8 0C041AF2 */  jal     func_80106BC8              
/* 00DBC 80A91ADC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC0 80A91AE0 10400025 */  beq     $v0, $zero, .L80A91B78     
/* 00DC4 80A91AE4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00DC8 80A91AE8 922F0195 */  lbu     $t7, 0x0195($s1)           ## 00000195
/* 00DCC 80A91AEC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00DD0 80A91AF0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00DD4 80A91AF4 11E00006 */  beq     $t7, $zero, .L80A91B10     
/* 00DD8 80A91AF8 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00DDC 80A91AFC 94620EE6 */  lhu     $v0, 0x0EE6($v1)           ## 8015F546
/* 00DE0 80A91B00 30581000 */  andi    $t8, $v0, 0x1000           ## $t8 = 00000000
/* 00DE4 80A91B04 17000002 */  bne     $t8, $zero, .L80A91B10     
/* 00DE8 80A91B08 34591000 */  ori     $t9, $v0, 0x1000           ## $t9 = 00001000
/* 00DEC 80A91B0C A4790EE6 */  sh      $t9, 0x0EE6($v1)           ## 8015F546
.L80A91B10:
/* 00DF0 80A91B10 86220208 */  lh      $v0, 0x0208($s1)           ## 00000208
/* 00DF4 80A91B14 00024080 */  sll     $t0, $v0,  2               
/* 00DF8 80A91B18 02084821 */  addu    $t1, $s0, $t0              
/* 00DFC 80A91B1C 8D2A0790 */  lw      $t2, 0x0790($t1)           ## 00000790
/* 00E00 80A91B20 15400003 */  bne     $t2, $zero, .L80A91B30     
/* 00E04 80A91B24 00000000 */  nop
/* 00E08 80A91B28 A62B0208 */  sh      $t3, 0x0208($s1)           ## 00000208
/* 00E0C 80A91B2C 86220208 */  lh      $v0, 0x0208($s1)           ## 00000208
.L80A91B30:
/* 00E10 80A91B30 10410004 */  beq     $v0, $at, .L80A91B44       
/* 00E14 80A91B34 00026080 */  sll     $t4, $v0,  2               
/* 00E18 80A91B38 020C6821 */  addu    $t5, $s0, $t4              
/* 00E1C 80A91B3C 0C016C69 */  jal     func_8005B1A4              
/* 00E20 80A91B40 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
.L80A91B44:
/* 00E24 80A91B44 0C041B33 */  jal     func_80106CCC              
/* 00E28 80A91B48 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E2C 80A91B4C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00E30 80A91B50 00300821 */  addu    $at, $at, $s0              
/* 00E34 80A91B54 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00E38 80A91B58 A42E04C6 */  sh      $t6, 0x04C6($at)           ## 000104C6
/* 00E3C 80A91B5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E40 80A91B60 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00E44 80A91B64 0C00B7D5 */  jal     func_8002DF54              
/* 00E48 80A91B68 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00E4C 80A91B6C 3C0F80A9 */  lui     $t7, %hi(func_80A911F0)    ## $t7 = 80A90000
/* 00E50 80A91B70 25EF11F0 */  addiu   $t7, $t7, %lo(func_80A911F0) ## $t7 = 80A911F0
/* 00E54 80A91B74 AE2F014C */  sw      $t7, 0x014C($s1)           ## 0000014C
.L80A91B78:
/* 00E58 80A91B78 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A91B7C:
/* 00E5C 80A91B7C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00E60 80A91B80 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00E64 80A91B84 03E00008 */  jr      $ra                        
/* 00E68 80A91B88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000

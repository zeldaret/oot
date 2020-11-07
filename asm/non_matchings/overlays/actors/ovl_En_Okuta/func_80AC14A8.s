.late_rodata
glabel D_80AC290C
    .float 0.01

glabel D_80AC2910
 .word 0x3E6EE632
glabel D_80AC2914
    .float 0.01

glabel D_80AC2918
    .float 0.04

glabel D_80AC291C
    .float 0.8

glabel D_80AC2920
    .float 0.01

.text
glabel func_80AC14A8
/* 00E48 80AC14A8 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00E4C 80AC14AC AFB50054 */  sw      $s5, 0x0054($sp)           
/* 00E50 80AC14B0 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 00E54 80AC14B4 0080A825 */  or      $s5, $a0, $zero            ## $s5 = 00000000
/* 00E58 80AC14B8 AFBF005C */  sw      $ra, 0x005C($sp)           
/* 00E5C 80AC14BC AFB60058 */  sw      $s6, 0x0058($sp)           
/* 00E60 80AC14C0 2490014C */  addiu   $s0, $a0, 0x014C           ## $s0 = 0000014C
/* 00E64 80AC14C4 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00E68 80AC14C8 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00E6C 80AC14CC AFB3004C */  sw      $s3, 0x004C($sp)           
/* 00E70 80AC14D0 AFB20048 */  sw      $s2, 0x0048($sp)           
/* 00E74 80AC14D4 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 00E78 80AC14D8 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00E7C 80AC14DC F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00E80 80AC14E0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E84 80AC14E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00E88 80AC14E8 10400004 */  beq     $v0, $zero, .L80AC14FC     
/* 00E8C 80AC14EC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E90 80AC14F0 86AE0194 */  lh      $t6, 0x0194($s5)           ## 00000194
/* 00E94 80AC14F4 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00E98 80AC14F8 A6AF0194 */  sh      $t7, 0x0194($s5)           ## 00000194
.L80AC14FC:
/* 00E9C 80AC14FC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 00EA0 80AC1500 26A40028 */  addiu   $a0, $s5, 0x0028           ## $a0 = 00000028
/* 00EA4 80AC1504 8EA5000C */  lw      $a1, 0x000C($s5)           ## 0000000C
/* 00EA8 80AC1508 4406B000 */  mfc1    $a2, $f22                  
/* 00EAC 80AC150C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00EB0 80AC1510 3C0740A0 */  lui     $a3, 0x40A0                ## $a3 = 40A00000
/* 00EB4 80AC1514 86B80194 */  lh      $t8, 0x0194($s5)           ## 00000194
/* 00EB8 80AC1518 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00EBC 80AC151C 27A40070 */  addiu   $a0, $sp, 0x0070           ## $a0 = FFFFFFE8
/* 00EC0 80AC1520 17010016 */  bne     $t8, $at, .L80AC157C       
/* 00EC4 80AC1524 27A5007C */  addiu   $a1, $sp, 0x007C           ## $a1 = FFFFFFF4
/* 00EC8 80AC1528 C6A40024 */  lwc1    $f4, 0x0024($s5)           ## 00000024
/* 00ECC 80AC152C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00ED0 80AC1530 44814000 */  mtc1    $at, $f8                   ## $f8 = 40.00
/* 00ED4 80AC1534 E7A40070 */  swc1    $f4, 0x0070($sp)           
/* 00ED8 80AC1538 C6A60028 */  lwc1    $f6, 0x0028($s5)           ## 00000028
/* 00EDC 80AC153C 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00EE0 80AC1540 3C01BF00 */  lui     $at, 0xBF00                ## $at = BF000000
/* 00EE4 80AC1544 46083280 */  add.s   $f10, $f6, $f8             
/* 00EE8 80AC1548 44819000 */  mtc1    $at, $f18                  ## $f18 = -0.50
/* 00EEC 80AC154C 2406FFEC */  addiu   $a2, $zero, 0xFFEC         ## $a2 = FFFFFFEC
/* 00EF0 80AC1550 02C03825 */  or      $a3, $s6, $zero            ## $a3 = 00000000
/* 00EF4 80AC1554 E7AA0074 */  swc1    $f10, 0x0074($sp)          
/* 00EF8 80AC1558 C6B0002C */  lwc1    $f16, 0x002C($s5)          ## 0000002C
/* 00EFC 80AC155C E7B4007C */  swc1    $f20, 0x007C($sp)          
/* 00F00 80AC1560 E7B40084 */  swc1    $f20, 0x0084($sp)          
/* 00F04 80AC1564 E7B20080 */  swc1    $f18, 0x0080($sp)          
/* 00F08 80AC1568 0C2B024F */  jal     func_80AC093C              
/* 00F0C 80AC156C E7B00078 */  swc1    $f16, 0x0078($sp)          
/* 00F10 80AC1570 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00F14 80AC1574 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F18 80AC1578 240538C7 */  addiu   $a1, $zero, 0x38C7         ## $a1 = 000038C7
.L80AC157C:
/* 00F1C 80AC157C 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00F20 80AC1580 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00F24 80AC1584 0C0295B2 */  jal     func_800A56C8              
/* 00F28 80AC1588 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 00F2C 80AC158C 10400006 */  beq     $v0, $zero, .L80AC15A8     
/* 00F30 80AC1590 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00F34 80AC1594 0C2B0269 */  jal     func_80AC09A4              
/* 00F38 80AC1598 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00F3C 80AC159C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00F40 80AC15A0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F44 80AC15A4 240538C3 */  addiu   $a1, $zero, 0x38C3         ## $a1 = 000038C3
.L80AC15A8:
/* 00F48 80AC15A8 86A20194 */  lh      $v0, 0x0194($s5)           ## 00000194
/* 00F4C 80AC15AC 28410003 */  slti    $at, $v0, 0x0003           
/* 00F50 80AC15B0 50200013 */  beql    $at, $zero, .L80AC1600     
/* 00F54 80AC15B4 28410006 */  slti    $at, $v0, 0x0006           
/* 00F58 80AC15B8 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F5C 80AC15BC 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 00F60 80AC15C0 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.25
/* 00F64 80AC15C4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F68 80AC15C8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00F6C 80AC15CC 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 00F70 80AC15D0 3C0180AC */  lui     $at, %hi(D_80AC290C)       ## $at = 80AC0000
/* 00F74 80AC15D4 C424290C */  lwc1    $f4, %lo(D_80AC290C)($at)  
/* 00F78 80AC15D8 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00F7C 80AC15DC 46083282 */  mul.s   $f10, $f6, $f8             
/* 00F80 80AC15E0 46105480 */  add.s   $f18, $f10, $f16           
/* 00F84 80AC15E4 46049182 */  mul.s   $f6, $f18, $f4             
/* 00F88 80AC15E8 44053000 */  mfc1    $a1, $f6                   
/* 00F8C 80AC15EC 0C00B58B */  jal     Actor_SetScale
              
/* 00F90 80AC15F0 00000000 */  nop
/* 00F94 80AC15F4 10000066 */  beq     $zero, $zero, .L80AC1790   
/* 00F98 80AC15F8 8FBF005C */  lw      $ra, 0x005C($sp)           
/* 00F9C 80AC15FC 28410006 */  slti    $at, $v0, 0x0006           
.L80AC1600:
/* 00FA0 80AC1600 10200012 */  beq     $at, $zero, .L80AC164C     
/* 00FA4 80AC1604 2459FFFE */  addiu   $t9, $v0, 0xFFFE           ## $t9 = FFFFFFFE
/* 00FA8 80AC1608 44994000 */  mtc1    $t9, $f8                   ## $f8 = NaN
/* 00FAC 80AC160C 3C0180AC */  lui     $at, %hi(D_80AC2910)       ## $at = 80AC0000
/* 00FB0 80AC1610 C4302910 */  lwc1    $f16, %lo(D_80AC2910)($at) 
/* 00FB4 80AC1614 468042A0 */  cvt.s.w $f10, $f8                  
/* 00FB8 80AC1618 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00FBC 80AC161C 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00FC0 80AC1620 3C0180AC */  lui     $at, %hi(D_80AC2914)       ## $at = 80AC0000
/* 00FC4 80AC1624 C4282914 */  lwc1    $f8, %lo(D_80AC2914)($at)  
/* 00FC8 80AC1628 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 00FCC 80AC162C 46105482 */  mul.s   $f18, $f10, $f16           
/* 00FD0 80AC1630 46122181 */  sub.s   $f6, $f4, $f18             
/* 00FD4 80AC1634 46083282 */  mul.s   $f10, $f6, $f8             
/* 00FD8 80AC1638 44055000 */  mfc1    $a1, $f10                  
/* 00FDC 80AC163C 0C00B58B */  jal     Actor_SetScale
              
/* 00FE0 80AC1640 00000000 */  nop
/* 00FE4 80AC1644 10000052 */  beq     $zero, $zero, .L80AC1790   
/* 00FE8 80AC1648 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AC164C:
/* 00FEC 80AC164C 2841000B */  slti    $at, $v0, 0x000B           
/* 00FF0 80AC1650 10200013 */  beq     $at, $zero, .L80AC16A0     
/* 00FF4 80AC1654 26A40050 */  addiu   $a0, $s5, 0x0050           ## $a0 = 00000050
/* 00FF8 80AC1658 2448FFFB */  addiu   $t0, $v0, 0xFFFB           ## $t0 = FFFFFFFB
/* 00FFC 80AC165C 44888000 */  mtc1    $t0, $f16                  ## $f16 = NaN
/* 01000 80AC1660 3C0180AC */  lui     $at, %hi(D_80AC2918)       ## $at = 80AC0000
/* 01004 80AC1664 C4322918 */  lwc1    $f18, %lo(D_80AC2918)($at) 
/* 01008 80AC1668 46808120 */  cvt.s.w $f4, $f16                  
/* 0100C 80AC166C 3C0180AC */  lui     $at, %hi(D_80AC291C)       ## $at = 80AC0000
/* 01010 80AC1670 C428291C */  lwc1    $f8, %lo(D_80AC291C)($at)  
/* 01014 80AC1674 3C0180AC */  lui     $at, %hi(D_80AC2920)       ## $at = 80AC0000
/* 01018 80AC1678 C4302920 */  lwc1    $f16, %lo(D_80AC2920)($at) 
/* 0101C 80AC167C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 01020 80AC1680 46122182 */  mul.s   $f6, $f4, $f18             
/* 01024 80AC1684 46083280 */  add.s   $f10, $f6, $f8             
/* 01028 80AC1688 46105102 */  mul.s   $f4, $f10, $f16            
/* 0102C 80AC168C 44052000 */  mfc1    $a1, $f4                   
/* 01030 80AC1690 0C00B58B */  jal     Actor_SetScale
              
/* 01034 80AC1694 00000000 */  nop
/* 01038 80AC1698 1000003D */  beq     $zero, $zero, .L80AC1790   
/* 0103C 80AC169C 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AC16A0:
/* 01040 80AC16A0 4405A000 */  mfc1    $a1, $f20                  
/* 01044 80AC16A4 3C063A03 */  lui     $a2, 0x3A03                ## $a2 = 3A030000
/* 01048 80AC16A8 0C01DE80 */  jal     Math_ApproxF
              
/* 0104C 80AC16AC 34C6126F */  ori     $a2, $a2, 0x126F           ## $a2 = 3A03126F
/* 01050 80AC16B0 10400033 */  beq     $v0, $zero, .L80AC1780     
/* 01054 80AC16B4 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01058 80AC16B8 26B10024 */  addiu   $s1, $s5, 0x0024           ## $s1 = 00000024
/* 0105C 80AC16BC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 01060 80AC16C0 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 01064 80AC16C4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 01068 80AC16C8 240738C5 */  addiu   $a3, $zero, 0x38C5         ## $a3 = 000038C5
/* 0106C 80AC16CC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01070 80AC16D0 02A02825 */  or      $a1, $s5, $zero            ## $a1 = 00000000
/* 01074 80AC16D4 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000024
/* 01078 80AC16D8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 0107C 80AC16DC 24070070 */  addiu   $a3, $zero, 0x0070         ## $a3 = 00000070
/* 01080 80AC16E0 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01084 80AC16E4 3C1380AC */  lui     $s3, %hi(D_80AC28CC)       ## $s3 = 80AC0000
/* 01088 80AC16E8 3C1280AC */  lui     $s2, %hi(D_80AC28C8)       ## $s2 = 80AC0000
/* 0108C 80AC16EC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 7.00
/* 01090 80AC16F0 265228C8 */  addiu   $s2, $s2, %lo(D_80AC28C8)  ## $s2 = 80AC28C8
/* 01094 80AC16F4 267328CC */  addiu   $s3, $s3, %lo(D_80AC28CC)  ## $s3 = 80AC28CC
/* 01098 80AC16F8 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 0109C 80AC16FC 24140014 */  addiu   $s4, $zero, 0x0014         ## $s4 = 00000014
.L80AC1700:
/* 010A0 80AC1700 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010A4 80AC1704 00000000 */  nop
/* 010A8 80AC1708 46160481 */  sub.s   $f18, $f0, $f22            
/* 010AC 80AC170C 46149182 */  mul.s   $f6, $f18, $f20            
/* 010B0 80AC1710 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010B4 80AC1714 E7A6007C */  swc1    $f6, 0x007C($sp)           
/* 010B8 80AC1718 46140202 */  mul.s   $f8, $f0, $f20             
/* 010BC 80AC171C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010C0 80AC1720 E7A80080 */  swc1    $f8, 0x0080($sp)           
/* 010C4 80AC1724 46160281 */  sub.s   $f10, $f0, $f22            
/* 010C8 80AC1728 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 010CC 80AC172C 24050032 */  addiu   $a1, $zero, 0x0032         ## $a1 = 00000032
/* 010D0 80AC1730 46145402 */  mul.s   $f16, $f10, $f20           
/* 010D4 80AC1734 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 010D8 80AC1738 E7B00084 */  swc1    $f16, 0x0084($sp)          
/* 010DC 80AC173C 3C0780AC */  lui     $a3, %hi(D_80AC28BC)       ## $a3 = 80AC0000
/* 010E0 80AC1740 24090019 */  addiu   $t1, $zero, 0x0019         ## $t1 = 00000019
/* 010E4 80AC1744 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 010E8 80AC1748 24E728BC */  addiu   $a3, $a3, %lo(D_80AC28BC)  ## $a3 = 80AC28BC
/* 010EC 80AC174C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 010F0 80AC1750 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000024
/* 010F4 80AC1754 27A6007C */  addiu   $a2, $sp, 0x007C           ## $a2 = FFFFFFF4
/* 010F8 80AC1758 AFB20010 */  sw      $s2, 0x0010($sp)           
/* 010FC 80AC175C AFB30014 */  sw      $s3, 0x0014($sp)           
/* 01100 80AC1760 AFA20018 */  sw      $v0, 0x0018($sp)           
/* 01104 80AC1764 0C00A5A5 */  jal     EffectSsDtBubble_SpawnCustomColor              
/* 01108 80AC1768 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0110C 80AC176C 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 01110 80AC1770 1614FFE3 */  bne     $s0, $s4, .L80AC1700       
/* 01114 80AC1774 00000000 */  nop
/* 01118 80AC1778 0C00B55C */  jal     Actor_Kill
              
/* 0111C 80AC177C 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
.L80AC1780:
/* 01120 80AC1780 C6A00050 */  lwc1    $f0, 0x0050($s5)           ## 00000050
/* 01124 80AC1784 E6A00058 */  swc1    $f0, 0x0058($s5)           ## 00000058
/* 01128 80AC1788 E6A00054 */  swc1    $f0, 0x0054($s5)           ## 00000054
/* 0112C 80AC178C 8FBF005C */  lw      $ra, 0x005C($sp)           
.L80AC1790:
/* 01130 80AC1790 D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 01134 80AC1794 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 01138 80AC1798 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 0113C 80AC179C 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 01140 80AC17A0 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 01144 80AC17A4 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 01148 80AC17A8 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 0114C 80AC17AC 8FB50054 */  lw      $s5, 0x0054($sp)           
/* 01150 80AC17B0 8FB60058 */  lw      $s6, 0x0058($sp)           
/* 01154 80AC17B4 03E00008 */  jr      $ra                        
/* 01158 80AC17B8 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000

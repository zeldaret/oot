glabel func_80B4B8B4
/* 00D74 80B4B8B4 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 00D78 80B4B8B8 3C0F80B5 */  lui     $t7, %hi(D_80B4E67C)       ## $t7 = 80B50000
/* 00D7C 80B4B8BC AFB20030 */  sw      $s2, 0x0030($sp)           
/* 00D80 80B4B8C0 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00D84 80B4B8C4 25EFE67C */  addiu   $t7, $t7, %lo(D_80B4E67C)  ## $t7 = 80B4E67C
/* 00D88 80B4B8C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D8C 80B4B8CC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00D90 80B4B8D0 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00D94 80B4B8D4 AFB1002C */  sw      $s1, 0x002C($sp)           
/* 00D98 80B4B8D8 25E80024 */  addiu   $t0, $t7, 0x0024           ## $t0 = 80B4E6A0
/* 00D9C 80B4B8DC 27AE00B0 */  addiu   $t6, $sp, 0x00B0           ## $t6 = FFFFFFD8
.L80B4B8E0:
/* 00DA0 80B4B8E0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B4E67C
/* 00DA4 80B4B8E4 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80B4E688
/* 00DA8 80B4B8E8 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFE4
/* 00DAC 80B4B8EC ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFD8
/* 00DB0 80B4B8F0 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80B4E680
/* 00DB4 80B4B8F4 ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFDC
/* 00DB8 80B4B8F8 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80B4E684
/* 00DBC 80B4B8FC 15E8FFF8 */  bne     $t7, $t0, .L80B4B8E0       
/* 00DC0 80B4B900 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFE0
/* 00DC4 80B4B904 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B4E688
/* 00DC8 80B4B908 3C0A80B5 */  lui     $t2, %hi(D_80B4E6A4)       ## $t2 = 80B50000
/* 00DCC 80B4B90C 254AE6A4 */  addiu   $t2, $t2, %lo(D_80B4E6A4)  ## $t2 = 80B4E6A4
/* 00DD0 80B4B910 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 00DD4 80B4B914 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80B4E6A4
/* 00DD8 80B4B918 27A900A4 */  addiu   $t1, $sp, 0x00A4           ## $t1 = FFFFFFCC
/* 00DDC 80B4B91C 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80B4E6A8
/* 00DE0 80B4B920 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFCC
/* 00DE4 80B4B924 954C0008 */  lhu     $t4, 0x0008($t2)           ## 80B4E6AC
/* 00DE8 80B4B928 3C0880B5 */  lui     $t0, %hi(D_80B4E6B0)       ## $t0 = 80B50000
/* 00DEC 80B4B92C 2508E6B0 */  addiu   $t0, $t0, %lo(D_80B4E6B0)  ## $t0 = 80B4E6B0
/* 00DF0 80B4B930 AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFD0
/* 00DF4 80B4B934 A52C0008 */  sh      $t4, 0x0008($t1)           ## FFFFFFD4
/* 00DF8 80B4B938 8D0E0000 */  lw      $t6, 0x0000($t0)           ## 80B4E6B0
/* 00DFC 80B4B93C 27AD0098 */  addiu   $t5, $sp, 0x0098           ## $t5 = FFFFFFC0
/* 00E00 80B4B940 8D0F0004 */  lw      $t7, 0x0004($t0)           ## 80B4E6B4
/* 00E04 80B4B944 ADAE0000 */  sw      $t6, 0x0000($t5)           ## FFFFFFC0
/* 00E08 80B4B948 8D0E0008 */  lw      $t6, 0x0008($t0)           ## 80B4E6B8
/* 00E0C 80B4B94C 3C1980B5 */  lui     $t9, %hi(D_80B4E6BC)       ## $t9 = 80B50000
/* 00E10 80B4B950 2739E6BC */  addiu   $t9, $t9, %lo(D_80B4E6BC)  ## $t9 = 80B4E6BC
/* 00E14 80B4B954 ADAF0004 */  sw      $t7, 0x0004($t5)           ## FFFFFFC4
/* 00E18 80B4B958 ADAE0008 */  sw      $t6, 0x0008($t5)           ## FFFFFFC8
/* 00E1C 80B4B95C 8F2A0000 */  lw      $t2, 0x0000($t9)           ## 80B4E6BC
/* 00E20 80B4B960 27B8008C */  addiu   $t8, $sp, 0x008C           ## $t8 = FFFFFFB4
/* 00E24 80B4B964 8F290004 */  lw      $t1, 0x0004($t9)           ## 80B4E6C0
/* 00E28 80B4B968 AF0A0000 */  sw      $t2, 0x0000($t8)           ## FFFFFFB4
/* 00E2C 80B4B96C 8F2A0008 */  lw      $t2, 0x0008($t9)           ## 80B4E6C4
/* 00E30 80B4B970 3C0C80B5 */  lui     $t4, %hi(D_80B4E6C8)       ## $t4 = 80B50000
/* 00E34 80B4B974 258CE6C8 */  addiu   $t4, $t4, %lo(D_80B4E6C8)  ## $t4 = 80B4E6C8
/* 00E38 80B4B978 AF090004 */  sw      $t1, 0x0004($t8)           ## FFFFFFB8
/* 00E3C 80B4B97C AF0A0008 */  sw      $t2, 0x0008($t8)           ## FFFFFFBC
/* 00E40 80B4B980 8D880000 */  lw      $t0, 0x0000($t4)           ## 80B4E6C8
/* 00E44 80B4B984 27AB005C */  addiu   $t3, $sp, 0x005C           ## $t3 = FFFFFF84
/* 00E48 80B4B988 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80B4E6CC
/* 00E4C 80B4B98C AD680000 */  sw      $t0, 0x0000($t3)           ## FFFFFF84
/* 00E50 80B4B990 8D880008 */  lw      $t0, 0x0008($t4)           ## 80B4E6D0
/* 00E54 80B4B994 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00E58 80B4B998 AD6D0004 */  sw      $t5, 0x0004($t3)           ## FFFFFF88
/* 00E5C 80B4B99C AD680008 */  sw      $t0, 0x0008($t3)           ## FFFFFF8C
/* 00E60 80B4B9A0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E64 80B4B9A4 AFA40044 */  sw      $a0, 0x0044($sp)           
/* 00E68 80B4B9A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E6C 80B4B9AC 0C2D2E1D */  jal     func_80B4B874              
/* 00E70 80B4B9B0 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00E74 80B4B9B4 924F1D6C */  lbu     $t7, 0x1D6C($s2)           ## 00001D6C
/* 00E78 80B4B9B8 3C0E80B5 */  lui     $t6, %hi(func_80B4BBC4)    ## $t6 = 80B50000
/* 00E7C 80B4B9BC 25CEBBC4 */  addiu   $t6, $t6, %lo(func_80B4BBC4) ## $t6 = 80B4BBC4
/* 00E80 80B4B9C0 55E00004 */  bnel    $t7, $zero, .L80B4B9D4     
/* 00E84 80B4B9C4 8E511D8C */  lw      $s1, 0x1D8C($s2)           ## 00001D8C
/* 00E88 80B4B9C8 10000078 */  beq     $zero, $zero, .L80B4BBAC   
/* 00E8C 80B4B9CC AE0E0190 */  sw      $t6, 0x0190($s0)           ## 00000190
/* 00E90 80B4B9D0 8E511D8C */  lw      $s1, 0x1D8C($s2)           ## 00001D8C
.L80B4B9D4:
/* 00E94 80B4B9D4 12200075 */  beq     $s1, $zero, .L80B4BBAC     
/* 00E98 80B4B9D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00E9C 80B4B9DC 0C2D2DFD */  jal     func_80B4B7F4              
/* 00EA0 80B4B9E0 27A50074 */  addiu   $a1, $sp, 0x0074           ## $a1 = FFFFFF9C
/* 00EA4 80B4B9E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EA8 80B4B9E8 0C2D2E0D */  jal     func_80B4B834              
/* 00EAC 80B4B9EC 27A50068 */  addiu   $a1, $sp, 0x0068           ## $a1 = FFFFFF90
/* 00EB0 80B4B9F0 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 00EB4 80B4B9F4 27B80074 */  addiu   $t8, $sp, 0x0074           ## $t8 = FFFFFF9C
/* 00EB8 80B4B9F8 54400016 */  bnel    $v0, $zero, .L80B4BA54     
/* 00EBC 80B4B9FC 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
/* 00EC0 80B4BA00 8F090000 */  lw      $t1, 0x0000($t8)           ## FFFFFF9C
/* 00EC4 80B4BA04 27A30048 */  addiu   $v1, $sp, 0x0048           ## $v1 = FFFFFF70
/* 00EC8 80B4BA08 AC690000 */  sw      $t1, 0x0000($v1)           ## FFFFFF70
/* 00ECC 80B4BA0C 8F190004 */  lw      $t9, 0x0004($t8)           ## FFFFFFA0
/* 00ED0 80B4BA10 8C6B0000 */  lw      $t3, 0x0000($v1)           ## FFFFFF70
/* 00ED4 80B4BA14 AC790004 */  sw      $t9, 0x0004($v1)           ## FFFFFF74
/* 00ED8 80B4BA18 8F090008 */  lw      $t1, 0x0008($t8)           ## FFFFFFA4
/* 00EDC 80B4BA1C AC690008 */  sw      $t1, 0x0008($v1)           ## FFFFFF78
/* 00EE0 80B4BA20 AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 00EE4 80B4BA24 8C6A0004 */  lw      $t2, 0x0004($v1)           ## FFFFFF74
/* 00EE8 80B4BA28 860201E6 */  lh      $v0, 0x01E6($s0)           ## 000001E6
/* 00EEC 80B4BA2C AE0A000C */  sw      $t2, 0x000C($s0)           ## 0000000C
/* 00EF0 80B4BA30 8C6B0008 */  lw      $t3, 0x0008($v1)           ## FFFFFF78
/* 00EF4 80B4BA34 AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
/* 00EF8 80B4BA38 8C6D0000 */  lw      $t5, 0x0000($v1)           ## FFFFFF70
/* 00EFC 80B4BA3C AE0D0024 */  sw      $t5, 0x0024($s0)           ## 00000024
/* 00F00 80B4BA40 8C6C0004 */  lw      $t4, 0x0004($v1)           ## FFFFFF74
/* 00F04 80B4BA44 AE0C0028 */  sw      $t4, 0x0028($s0)           ## 00000028
/* 00F08 80B4BA48 8C6D0008 */  lw      $t5, 0x0008($v1)           ## FFFFFF78
/* 00F0C 80B4BA4C AE0D002C */  sw      $t5, 0x002C($s0)           ## 0000002C
/* 00F10 80B4BA50 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
.L80B4BA54:
/* 00F14 80B4BA54 10620017 */  beq     $v1, $v0, .L80B4BAB4       
/* 00F18 80B4BA58 00034080 */  sll     $t0, $v1,  2               
/* 00F1C 80B4BA5C 03A82021 */  addu    $a0, $sp, $t0              
/* 00F20 80B4BA60 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 00F24 80B4BA64 8C8400B0 */  lw      $a0, 0x00B0($a0)           ## 000000B0
/* 00F28 80B4BA68 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00F2C 80B4BA6C 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
/* 00F30 80B4BA70 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00F34 80B4BA74 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F38 80B4BA78 00037880 */  sll     $t7, $v1,  2               
/* 00F3C 80B4BA7C 03AF2821 */  addu    $a1, $sp, $t7              
/* 00F40 80B4BA80 8CA500B0 */  lw      $a1, 0x00B0($a1)           ## 000000B0
/* 00F44 80B4BA84 03A37021 */  addu    $t6, $sp, $v1              
/* 00F48 80B4BA88 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00F4C 80B4BA8C E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 00F50 80B4BA90 91CE00A4 */  lbu     $t6, 0x00A4($t6)           ## 000000A4
/* 00F54 80B4BA94 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00F58 80B4BA98 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F5C 80B4BA9C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 00F60 80B4BAA0 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00F64 80B4BAA4 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 00F68 80B4BAA8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00F6C 80B4BAAC 96380000 */  lhu     $t8, 0x0000($s1)           ## 00000000
/* 00F70 80B4BAB0 A61801E6 */  sh      $t8, 0x01E6($s0)           ## 000001E6
.L80B4BAB4:
/* 00F74 80B4BAB4 27B9005C */  addiu   $t9, $sp, 0x005C           ## $t9 = FFFFFF84
/* 00F78 80B4BAB8 8F2A0000 */  lw      $t2, 0x0000($t9)           ## FFFFFF84
/* 00F7C 80B4BABC AE0A005C */  sw      $t2, 0x005C($s0)           ## 0000005C
/* 00F80 80B4BAC0 8F290004 */  lw      $t1, 0x0004($t9)           ## FFFFFF88
/* 00F84 80B4BAC4 AE090060 */  sw      $t1, 0x0060($s0)           ## 00000060
/* 00F88 80B4BAC8 8F2A0008 */  lw      $t2, 0x0008($t9)           ## FFFFFF8C
/* 00F8C 80B4BACC AE0A0064 */  sw      $t2, 0x0064($s0)           ## 00000064
/* 00F90 80B4BAD0 964B1D74 */  lhu     $t3, 0x1D74($s2)           ## 00001D74
/* 00F94 80B4BAD4 96220004 */  lhu     $v0, 0x0004($s1)           ## 00000004
/* 00F98 80B4BAD8 0162082A */  slt     $at, $t3, $v0              
/* 00F9C 80B4BADC 50200020 */  beql    $at, $zero, .L80B4BB60     
/* 00FA0 80B4BAE0 8E0F0038 */  lw      $t7, 0x0038($s0)           ## 00000038
/* 00FA4 80B4BAE4 962C0002 */  lhu     $t4, 0x0002($s1)           ## 00000002
/* 00FA8 80B4BAE8 C7B00068 */  lwc1    $f16, 0x0068($sp)          
/* 00FAC 80B4BAEC C7B20074 */  lwc1    $f18, 0x0074($sp)          
/* 00FB0 80B4BAF0 004C6823 */  subu    $t5, $v0, $t4              
/* 00FB4 80B4BAF4 448D5000 */  mtc1    $t5, $f10                  ## $f10 = 0.00
/* 00FB8 80B4BAF8 46128101 */  sub.s   $f4, $f16, $f18            
/* 00FBC 80B4BAFC C6020070 */  lwc1    $f2, 0x0070($s0)           ## 00000070
/* 00FC0 80B4BB00 46805020 */  cvt.s.w $f0, $f10                  
/* 00FC4 80B4BB04 46002183 */  div.s   $f6, $f4, $f0              
/* 00FC8 80B4BB08 E606005C */  swc1    $f6, 0x005C($s0)           ## 0000005C
/* 00FCC 80B4BB0C C7AA0078 */  lwc1    $f10, 0x0078($sp)          
/* 00FD0 80B4BB10 C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 00FD4 80B4BB14 C606006C */  lwc1    $f6, 0x006C($s0)           ## 0000006C
/* 00FD8 80B4BB18 460A4401 */  sub.s   $f16, $f8, $f10            
/* 00FDC 80B4BB1C 46008483 */  div.s   $f18, $f16, $f0            
/* 00FE0 80B4BB20 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00FE4 80B4BB24 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 00FE8 80B4BB28 46062200 */  add.s   $f8, $f4, $f6              
/* 00FEC 80B4BB2C E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 00FF0 80B4BB30 C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 00FF4 80B4BB34 4602503C */  c.lt.s  $f10, $f2                  
/* 00FF8 80B4BB38 00000000 */  nop
/* 00FFC 80B4BB3C 45020003 */  bc1fl   .L80B4BB4C                 
/* 01000 80B4BB40 C7B00070 */  lwc1    $f16, 0x0070($sp)          
/* 01004 80B4BB44 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 01008 80B4BB48 C7B00070 */  lwc1    $f16, 0x0070($sp)          
.L80B4BB4C:
/* 0100C 80B4BB4C C7B2007C */  lwc1    $f18, 0x007C($sp)          
/* 01010 80B4BB50 46128101 */  sub.s   $f4, $f16, $f18            
/* 01014 80B4BB54 46002183 */  div.s   $f6, $f4, $f0              
/* 01018 80B4BB58 E6060064 */  swc1    $f6, 0x0064($s0)           ## 00000064
/* 0101C 80B4BB5C 8E0F0038 */  lw      $t7, 0x0038($s0)           ## 00000038
.L80B4BB60:
/* 01020 80B4BB60 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01024 80B4BB64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01028 80B4BB68 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 0102C 80B4BB6C 8E08003C */  lw      $t0, 0x003C($s0)           ## 0000003C
/* 01030 80B4BB70 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 01034 80B4BB74 26070206 */  addiu   $a3, $s0, 0x0206           ## $a3 = 00000206
/* 01038 80B4BB78 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0103C 80B4BB7C 8E0F0040 */  lw      $t7, 0x0040($s0)           ## 00000040
/* 01040 80B4BB80 0C00E0A4 */  jal     func_80038290              
/* 01044 80B4BB84 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 01048 80B4BB88 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 0104C 80B4BB8C 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 01050 80B4BB90 27A60098 */  addiu   $a2, $sp, 0x0098           ## $a2 = FFFFFFC0
/* 01054 80B4BB94 0C030136 */  jal     func_800C04D8              
/* 01058 80B4BB98 27A7008C */  addiu   $a3, $sp, 0x008C           ## $a3 = FFFFFFB4
/* 0105C 80B4BB9C 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 01060 80B4BBA0 860501E8 */  lh      $a1, 0x01E8($s0)           ## 000001E8
/* 01064 80B4BBA4 0C0301C1 */  jal     func_800C0704              
/* 01068 80B4BBA8 3C06428C */  lui     $a2, 0x428C                ## $a2 = 428C0000
.L80B4BBAC:
/* 0106C 80B4BBAC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01070 80B4BBB0 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01074 80B4BBB4 8FB1002C */  lw      $s1, 0x002C($sp)           
/* 01078 80B4BBB8 8FB20030 */  lw      $s2, 0x0030($sp)           
/* 0107C 80B4BBBC 03E00008 */  jr      $ra                        
/* 01080 80B4BBC0 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000



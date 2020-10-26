glabel func_80A75A38
/* 01728 80A75A38 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 0172C 80A75A3C AFB10064 */  sw      $s1, 0x0064($sp)           
/* 01730 80A75A40 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01734 80A75A44 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 01738 80A75A48 AFB40070 */  sw      $s4, 0x0070($sp)           
/* 0173C 80A75A4C 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01740 80A75A50 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 01744 80A75A54 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 01748 80A75A58 AFB00060 */  sw      $s0, 0x0060($sp)           
/* 0174C 80A75A5C F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 01750 80A75A60 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 01754 80A75A64 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 01758 80A75A68 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0175C 80A75A6C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01760 80A75A70 1040005D */  beq     $v0, $zero, .L80A75BE8     
/* 01764 80A75A74 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 01768 80A75A78 922E00AF */  lbu     $t6, 0x00AF($s1)           ## 000000AF
/* 0176C 80A75A7C 55C00064 */  bnel    $t6, $zero, .L80A75C10     
/* 01770 80A75A80 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 01774 80A75A84 922F02F9 */  lbu     $t7, 0x02F9($s1)           ## 000002F9
/* 01778 80A75A88 3C1880A8 */  lui     $t8, %hi(D_80A78464)       ## $t8 = 80A80000
/* 0177C 80A75A8C 27188464 */  addiu   $t8, $t8, %lo(D_80A78464)  ## $t8 = 80A78464
/* 01780 80A75A90 51E0005F */  beql    $t7, $zero, .L80A75C10     
/* 01784 80A75A94 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 01788 80A75A98 8F080000 */  lw      $t0, 0x0000($t8)           ## 80A78464
/* 0178C 80A75A9C 27B2007C */  addiu   $s2, $sp, 0x007C           ## $s2 = FFFFFFE4
/* 01790 80A75AA0 240C000C */  addiu   $t4, $zero, 0x000C         ## $t4 = 0000000C
/* 01794 80A75AA4 AE480000 */  sw      $t0, 0x0000($s2)           ## FFFFFFE4
/* 01798 80A75AA8 8F190004 */  lw      $t9, 0x0004($t8)           ## 80A78468
/* 0179C 80A75AAC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 017A0 80A75AB0 AE590004 */  sw      $t9, 0x0004($s2)           ## FFFFFFE8
/* 017A4 80A75AB4 8F080008 */  lw      $t0, 0x0008($t8)           ## 80A7846C
/* 017A8 80A75AB8 AE480008 */  sw      $t0, 0x0008($s2)           ## FFFFFFEC
/* 017AC 80A75ABC 922902F9 */  lbu     $t1, 0x02F9($s1)           ## 000002F9
/* 017B0 80A75AC0 252AFFFF */  addiu   $t2, $t1, 0xFFFF           ## $t2 = FFFFFFFF
/* 017B4 80A75AC4 314200FF */  andi    $v0, $t2, 0x00FF           ## $v0 = 000000FF
/* 017B8 80A75AC8 00025843 */  sra     $t3, $v0,  1               
/* 017BC 80A75ACC 018B8023 */  subu    $s0, $t4, $t3              
/* 017C0 80A75AD0 06000035 */  bltz    $s0, .L80A75BA8            
/* 017C4 80A75AD4 A22A02F9 */  sb      $t2, 0x02F9($s1)           ## 000002F9
/* 017C8 80A75AD8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 017CC 80A75ADC 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 017D0 80A75AE0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 017D4 80A75AE4 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 017D8 80A75AE8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 120.00
/* 017DC 80A75AEC 27B30088 */  addiu   $s3, $sp, 0x0088           ## $s3 = FFFFFFF0
.L80A75AF0:
/* 017E0 80A75AF0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 017E4 80A75AF4 4600A306 */  mov.s   $f12, $f20                 
/* 017E8 80A75AF8 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 017EC 80A75AFC 4600A306 */  mov.s   $f12, $f20                 
/* 017F0 80A75B00 46040180 */  add.s   $f6, $f0, $f4              
/* 017F4 80A75B04 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 017F8 80A75B08 E7A60088 */  swc1    $f6, 0x0088($sp)           
/* 017FC 80A75B0C C628002C */  lwc1    $f8, 0x002C($s1)           ## 0000002C
/* 01800 80A75B10 4600B306 */  mov.s   $f12, $f22                 
/* 01804 80A75B14 46080280 */  add.s   $f10, $f0, $f8             
/* 01808 80A75B18 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0180C 80A75B1C E7AA0090 */  swc1    $f10, 0x0090($sp)          
/* 01810 80A75B20 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 01814 80A75B24 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 01818 80A75B28 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0181C 80A75B2C 46188480 */  add.s   $f18, $f16, $f24           
/* 01820 80A75B30 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01824 80A75B34 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01828 80A75B38 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 0182C 80A75B3C 46120100 */  add.s   $f4, $f0, $f18             
/* 01830 80A75B40 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 01834 80A75B44 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01838 80A75B48 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 0183C 80A75B4C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01840 80A75B50 E7A4008C */  swc1    $f4, 0x008C($sp)           
/* 01844 80A75B54 AFAC003C */  sw      $t4, 0x003C($sp)           
/* 01848 80A75B58 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 0184C 80A75B5C AFA90034 */  sw      $t1, 0x0034($sp)           
/* 01850 80A75B60 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 01854 80A75B64 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 01858 80A75B68 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 0185C 80A75B6C AFAF001C */  sw      $t7, 0x001C($sp)           
/* 01860 80A75B70 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 01864 80A75B74 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01868 80A75B78 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0186C 80A75B7C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 01870 80A75B80 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01874 80A75B84 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01878 80A75B88 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFF0
/* 0187C 80A75B8C 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE4
/* 01880 80A75B90 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 01884 80A75B94 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE4
/* 01888 80A75B98 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = FFFFFFFF
/* 0188C 80A75B9C 0601FFD4 */  bgez    $s0, .L80A75AF0            
/* 01890 80A75BA0 00000000 */  nop
/* 01894 80A75BA4 922202F9 */  lbu     $v0, 0x02F9($s1)           ## 000002F9
.L80A75BA8:
/* 01898 80A75BA8 14400018 */  bne     $v0, $zero, .L80A75C0C     
/* 0189C 80A75BAC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 018A0 80A75BB0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 018A4 80A75BB4 26260024 */  addiu   $a2, $s1, 0x0024           ## $a2 = 00000024
/* 018A8 80A75BB8 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 018AC 80A75BBC 240700B0 */  addiu   $a3, $zero, 0x00B0         ## $a3 = 000000B0
/* 018B0 80A75BC0 86250302 */  lh      $a1, 0x0302($s1)           ## 00000302
/* 018B4 80A75BC4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 018B8 80A75BC8 10A10003 */  beq     $a1, $at, .L80A75BD8       
/* 018BC 80A75BCC 00000000 */  nop
/* 018C0 80A75BD0 0C00B2DD */  jal     Flags_SetSwitch
              
/* 018C4 80A75BD4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
.L80A75BD8:
/* 018C8 80A75BD8 0C00B55C */  jal     Actor_Kill
              
/* 018CC 80A75BDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018D0 80A75BE0 1000000B */  beq     $zero, $zero, .L80A75C10   
/* 018D4 80A75BE4 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80A75BE8:
/* 018D8 80A75BE8 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 018DC 80A75BEC C6280164 */  lwc1    $f8, 0x0164($s1)           ## 00000164
/* 018E0 80A75BF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 018E4 80A75BF4 46083032 */  c.eq.s  $f6, $f8                   
/* 018E8 80A75BF8 00000000 */  nop
/* 018EC 80A75BFC 45020004 */  bc1fl   .L80A75C10                 
/* 018F0 80A75C00 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 018F4 80A75C04 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 018F8 80A75C08 24053928 */  addiu   $a1, $zero, 0x3928         ## $a1 = 00003928
.L80A75C0C:
/* 018FC 80A75C0C 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80A75C10:
/* 01900 80A75C10 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 01904 80A75C14 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 01908 80A75C18 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0190C 80A75C1C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 01910 80A75C20 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 01914 80A75C24 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 01918 80A75C28 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 0191C 80A75C2C 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 01920 80A75C30 03E00008 */  jr      $ra                        
/* 01924 80A75C34 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000

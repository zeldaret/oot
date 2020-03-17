glabel func_80A0CCF0
/* 01630 80A0CCF0 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 01634 80A0CCF4 3C0F80A1 */  lui     $t7, %hi(D_80A0E088)       ## $t7 = 80A10000
/* 01638 80A0CCF8 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 0163C 80A0CCFC AFB70070 */  sw      $s7, 0x0070($sp)           
/* 01640 80A0CD00 AFB6006C */  sw      $s6, 0x006C($sp)           
/* 01644 80A0CD04 AFB50068 */  sw      $s5, 0x0068($sp)           
/* 01648 80A0CD08 AFB40064 */  sw      $s4, 0x0064($sp)           
/* 0164C 80A0CD0C AFB30060 */  sw      $s3, 0x0060($sp)           
/* 01650 80A0CD10 AFB2005C */  sw      $s2, 0x005C($sp)           
/* 01654 80A0CD14 AFB10058 */  sw      $s1, 0x0058($sp)           
/* 01658 80A0CD18 AFB00054 */  sw      $s0, 0x0054($sp)           
/* 0165C 80A0CD1C F7BE0048 */  sdc1    $f30, 0x0048($sp)          
/* 01660 80A0CD20 F7BC0040 */  sdc1    $f28, 0x0040($sp)          
/* 01664 80A0CD24 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 01668 80A0CD28 F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 0166C 80A0CD2C F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 01670 80A0CD30 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 01674 80A0CD34 AFA600D8 */  sw      $a2, 0x00D8($sp)           
/* 01678 80A0CD38 AFA700DC */  sw      $a3, 0x00DC($sp)           
/* 0167C 80A0CD3C 25EFE088 */  addiu   $t7, $t7, %lo(D_80A0E088)  ## $t7 = 80A0E088
/* 01680 80A0CD40 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0E088
/* 01684 80A0CD44 27AE00C0 */  addiu   $t6, $sp, 0x00C0           ## $t6 = FFFFFFF0
/* 01688 80A0CD48 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0E08C
/* 0168C 80A0CD4C ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 01690 80A0CD50 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0E090
/* 01694 80A0CD54 3C0980A1 */  lui     $t1, %hi(D_80A0E094)       ## $t1 = 80A10000
/* 01698 80A0CD58 2529E094 */  addiu   $t1, $t1, %lo(D_80A0E094)  ## $t1 = 80A0E094
/* 0169C 80A0CD5C ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 016A0 80A0CD60 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 016A4 80A0CD64 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80A0E094
/* 016A8 80A0CD68 27A800B4 */  addiu   $t0, $sp, 0x00B4           ## $t0 = FFFFFFE4
/* 016AC 80A0CD6C 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80A0E098
/* 016B0 80A0CD70 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 016B4 80A0CD74 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80A0E09C
/* 016B8 80A0CD78 3C0C80A1 */  lui     $t4, %hi(D_80A0E0A0)       ## $t4 = 80A10000
/* 016BC 80A0CD7C 258CE0A0 */  addiu   $t4, $t4, %lo(D_80A0E0A0)  ## $t4 = 80A0E0A0
/* 016C0 80A0CD80 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 016C4 80A0CD84 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 016C8 80A0CD88 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80A0E0A0
/* 016CC 80A0CD8C 27B400A8 */  addiu   $s4, $sp, 0x00A8           ## $s4 = FFFFFFD8
/* 016D0 80A0CD90 3C0F80A1 */  lui     $t7, %hi(D_80A0E0AC)       ## $t7 = 80A10000
/* 016D4 80A0CD94 AE8E0000 */  sw      $t6, 0x0000($s4)           ## FFFFFFD8
/* 016D8 80A0CD98 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80A0E0A4
/* 016DC 80A0CD9C 25EFE0AC */  addiu   $t7, $t7, %lo(D_80A0E0AC)  ## $t7 = 80A0E0AC
/* 016E0 80A0CDA0 27B2009C */  addiu   $s2, $sp, 0x009C           ## $s2 = FFFFFFCC
/* 016E4 80A0CDA4 AE8D0004 */  sw      $t5, 0x0004($s4)           ## FFFFFFDC
/* 016E8 80A0CDA8 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80A0E0A8
/* 016EC 80A0CDAC 3C0880A1 */  lui     $t0, %hi(D_80A0E0B8)       ## $t0 = 80A10000
/* 016F0 80A0CDB0 2508E0B8 */  addiu   $t0, $t0, %lo(D_80A0E0B8)  ## $t0 = 80A0E0B8
/* 016F4 80A0CDB4 AE8E0008 */  sw      $t6, 0x0008($s4)           ## FFFFFFE0
/* 016F8 80A0CDB8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A0E0AC
/* 016FC 80A0CDBC 27B60090 */  addiu   $s6, $sp, 0x0090           ## $s6 = FFFFFFC0
/* 01700 80A0CDC0 3C0B80A1 */  lui     $t3, %hi(D_80A0E0C4)       ## $t3 = 80A10000
/* 01704 80A0CDC4 AE590000 */  sw      $t9, 0x0000($s2)           ## FFFFFFCC
/* 01708 80A0CDC8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80A0E0B0
/* 0170C 80A0CDCC 256BE0C4 */  addiu   $t3, $t3, %lo(D_80A0E0C4)  ## $t3 = 80A0E0C4
/* 01710 80A0CDD0 27B70084 */  addiu   $s7, $sp, 0x0084           ## $s7 = FFFFFFB4
/* 01714 80A0CDD4 AE580004 */  sw      $t8, 0x0004($s2)           ## FFFFFFD0
/* 01718 80A0CDD8 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80A0E0B4
/* 0171C 80A0CDDC 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 01720 80A0CDE0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01724 80A0CDE4 AE590008 */  sw      $t9, 0x0008($s2)           ## FFFFFFD4
/* 01728 80A0CDE8 8D0A0000 */  lw      $t2, 0x0000($t0)           ## 80A0E0B8
/* 0172C 80A0CDEC 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 01730 80A0CDF0 AECA0000 */  sw      $t2, 0x0000($s6)           ## FFFFFFC0
/* 01734 80A0CDF4 8D090004 */  lw      $t1, 0x0004($t0)           ## 80A0E0BC
/* 01738 80A0CDF8 AEC90004 */  sw      $t1, 0x0004($s6)           ## FFFFFFC4
/* 0173C 80A0CDFC 8D0A0008 */  lw      $t2, 0x0008($t0)           ## 80A0E0C0
/* 01740 80A0CE00 AECA0008 */  sw      $t2, 0x0008($s6)           ## FFFFFFC8
/* 01744 80A0CE04 8D6D0000 */  lw      $t5, 0x0000($t3)           ## 80A0E0C4
/* 01748 80A0CE08 AEED0000 */  sw      $t5, 0x0000($s7)           ## FFFFFFB4
/* 0174C 80A0CE0C 8D6C0004 */  lw      $t4, 0x0004($t3)           ## 80A0E0C8
/* 01750 80A0CE10 AEEC0004 */  sw      $t4, 0x0004($s7)           ## FFFFFFB8
/* 01754 80A0CE14 8D6D0008 */  lw      $t5, 0x0008($t3)           ## 80A0E0CC
/* 01758 80A0CE18 14A10005 */  bne     $a1, $at, .L80A0CE30       
/* 0175C 80A0CE1C AEED0008 */  sw      $t5, 0x0008($s7)           ## FFFFFFBC
/* 01760 80A0CE20 8FB500E0 */  lw      $s5, 0x00E0($sp)           
/* 01764 80A0CE24 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFD8
/* 01768 80A0CE28 0C0346BD */  jal     Matrix_MultVec3f              
/* 0176C 80A0CE2C 26A504D0 */  addiu   $a1, $s5, 0x04D0           ## $a1 = 000004D0
.L80A0CE30:
/* 01770 80A0CE30 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 01774 80A0CE34 16610004 */  bne     $s3, $at, .L80A0CE48       
/* 01778 80A0CE38 8FB500E0 */  lw      $s5, 0x00E0($sp)           
/* 0177C 80A0CE3C 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFD8
/* 01780 80A0CE40 0C0346BD */  jal     Matrix_MultVec3f              
/* 01784 80A0CE44 26A50038 */  addiu   $a1, $s5, 0x0038           ## $a1 = 00000038
.L80A0CE48:
/* 01788 80A0CE48 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0178C 80A0CE4C 1261001B */  beq     $s3, $at, .L80A0CEBC       
/* 01790 80A0CE50 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01794 80A0CE54 12610019 */  beq     $s3, $at, .L80A0CEBC       
/* 01798 80A0CE58 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0179C 80A0CE5C 12610017 */  beq     $s3, $at, .L80A0CEBC       
/* 017A0 80A0CE60 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 017A4 80A0CE64 12610015 */  beq     $s3, $at, .L80A0CEBC       
/* 017A8 80A0CE68 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 017AC 80A0CE6C 12610013 */  beq     $s3, $at, .L80A0CEBC       
/* 017B0 80A0CE70 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 017B4 80A0CE74 12610011 */  beq     $s3, $at, .L80A0CEBC       
/* 017B8 80A0CE78 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 017BC 80A0CE7C 1261000F */  beq     $s3, $at, .L80A0CEBC       
/* 017C0 80A0CE80 24010012 */  addiu   $at, $zero, 0x0012         ## $at = 00000012
/* 017C4 80A0CE84 1261000D */  beq     $s3, $at, .L80A0CEBC       
/* 017C8 80A0CE88 24010014 */  addiu   $at, $zero, 0x0014         ## $at = 00000014
/* 017CC 80A0CE8C 1261000B */  beq     $s3, $at, .L80A0CEBC       
/* 017D0 80A0CE90 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 017D4 80A0CE94 12610009 */  beq     $s3, $at, .L80A0CEBC       
/* 017D8 80A0CE98 24010017 */  addiu   $at, $zero, 0x0017         ## $at = 00000017
/* 017DC 80A0CE9C 12610007 */  beq     $s3, $at, .L80A0CEBC       
/* 017E0 80A0CEA0 24010018 */  addiu   $at, $zero, 0x0018         ## $at = 00000018
/* 017E4 80A0CEA4 12610005 */  beq     $s3, $at, .L80A0CEBC       
/* 017E8 80A0CEA8 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 017EC 80A0CEAC 12610003 */  beq     $s3, $at, .L80A0CEBC       
/* 017F0 80A0CEB0 2401001A */  addiu   $at, $zero, 0x001A         ## $at = 0000001A
/* 017F4 80A0CEB4 56610046 */  bnel    $s3, $at, .L80A0CFD0       
/* 017F8 80A0CEB8 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L80A0CEBC:
/* 017FC 80A0CEBC 8E0E009C */  lw      $t6, 0x009C($s0)           ## 0000009C
/* 01800 80A0CEC0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 01804 80A0CEC4 3C0180A1 */  lui     $at, %hi(D_80A0E1C8)       ## $at = 80A10000
/* 01808 80A0CEC8 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 0180C 80A0CECC 51E00040 */  beql    $t7, $zero, .L80A0CFD0     
/* 01810 80A0CED0 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 01814 80A0CED4 C43EE1C8 */  lwc1    $f30, %lo(D_80A0E1C8)($at) 
/* 01818 80A0CED8 3C0180A1 */  lui     $at, %hi(D_80A0E1CC)       ## $at = 80A10000
/* 0181C 80A0CEDC C43CE1CC */  lwc1    $f28, %lo(D_80A0E1CC)($at) 
/* 01820 80A0CEE0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 01824 80A0CEE4 4481D000 */  mtc1    $at, $f26                  ## $f26 = 40.00
/* 01828 80A0CEE8 3C0180A1 */  lui     $at, %hi(D_80A0E1D0)       ## $at = 80A10000
/* 0182C 80A0CEEC C438E1D0 */  lwc1    $f24, %lo(D_80A0E1D0)($at) 
/* 01830 80A0CEF0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01834 80A0CEF4 4481B000 */  mtc1    $at, $f22                  ## $f22 = 20.00
/* 01838 80A0CEF8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0183C 80A0CEFC 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 01840 80A0CF00 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 01844 80A0CF04 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFD8
.L80A0CF08:
/* 01848 80A0CF08 0C0346BD */  jal     Matrix_MultVec3f              
/* 0184C 80A0CF0C 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFCC
/* 01850 80A0CF10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01854 80A0CF14 00000000 */  nop
/* 01858 80A0CF18 46140181 */  sub.s   $f6, $f0, $f20             
/* 0185C 80A0CF1C C7A4009C */  lwc1    $f4, 0x009C($sp)           
/* 01860 80A0CF20 46163202 */  mul.s   $f8, $f6, $f22             
/* 01864 80A0CF24 46082280 */  add.s   $f10, $f4, $f8             
/* 01868 80A0CF28 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0186C 80A0CF2C E7AA009C */  swc1    $f10, 0x009C($sp)          
/* 01870 80A0CF30 46140481 */  sub.s   $f18, $f0, $f20            
/* 01874 80A0CF34 C7B000A0 */  lwc1    $f16, 0x00A0($sp)          
/* 01878 80A0CF38 461A9182 */  mul.s   $f6, $f18, $f26            
/* 0187C 80A0CF3C 46068100 */  add.s   $f4, $f16, $f6             
/* 01880 80A0CF40 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01884 80A0CF44 E7A400A0 */  swc1    $f4, 0x00A0($sp)           
/* 01888 80A0CF48 46140281 */  sub.s   $f10, $f0, $f20            
/* 0188C 80A0CF4C C7A800A4 */  lwc1    $f8, 0x00A4($sp)           
/* 01890 80A0CF50 46165482 */  mul.s   $f18, $f10, $f22           
/* 01894 80A0CF54 46124400 */  add.s   $f16, $f8, $f18            
/* 01898 80A0CF58 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0189C 80A0CF5C E7B000A4 */  swc1    $f16, 0x00A4($sp)          
/* 018A0 80A0CF60 46140181 */  sub.s   $f6, $f0, $f20             
/* 018A4 80A0CF64 46183102 */  mul.s   $f4, $f6, $f24             
/* 018A8 80A0CF68 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 018AC 80A0CF6C E7A40090 */  swc1    $f4, 0x0090($sp)           
/* 018B0 80A0CF70 46140281 */  sub.s   $f10, $f0, $f20            
/* 018B4 80A0CF74 461C5202 */  mul.s   $f8, $f10, $f28            
/* 018B8 80A0CF78 461E4480 */  add.s   $f18, $f8, $f30            
/* 018BC 80A0CF7C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 018C0 80A0CF80 E7B20094 */  swc1    $f18, 0x0094($sp)          
/* 018C4 80A0CF84 46140401 */  sub.s   $f16, $f0, $f20            
/* 018C8 80A0CF88 3C0180A1 */  lui     $at, %hi(D_80A0E1D4)       ## $at = 80A10000
/* 018CC 80A0CF8C C424E1D4 */  lwc1    $f4, %lo(D_80A0E1D4)($at)  
/* 018D0 80A0CF90 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 018D4 80A0CF94 46188182 */  mul.s   $f6, $f16, $f24            
/* 018D8 80A0CF98 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00000000
/* 018DC 80A0CF9C 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 018E0 80A0CFA0 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFCC
/* 018E4 80A0CFA4 02E03825 */  or      $a3, $s7, $zero            ## $a3 = FFFFFFB4
/* 018E8 80A0CFA8 AFB60010 */  sw      $s6, 0x0010($sp)           
/* 018EC 80A0CFAC AFA00014 */  sw      $zero, 0x0014($sp)         
/* 018F0 80A0CFB0 E7A60098 */  swc1    $f6, 0x0098($sp)           
/* 018F4 80A0CFB4 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 018F8 80A0CFB8 0C283503 */  jal     func_80A0D40C              
/* 018FC 80A0CFBC E7AA001C */  swc1    $f10, 0x001C($sp)          
/* 01900 80A0CFC0 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 01904 80A0CFC4 5611FFD0 */  bnel    $s0, $s1, .L80A0CF08       
/* 01908 80A0CFC8 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFD8
/* 0190C 80A0CFCC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
.L80A0CFD0:
/* 01910 80A0CFD0 0C018A29 */  jal     func_800628A4              
/* 01914 80A0CFD4 26A50194 */  addiu   $a1, $s5, 0x0194           ## $a1 = 00000194
/* 01918 80A0CFD8 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 0191C 80A0CFDC D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01920 80A0CFE0 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 01924 80A0CFE4 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 01928 80A0CFE8 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 0192C 80A0CFEC D7BC0040 */  ldc1    $f28, 0x0040($sp)          
/* 01930 80A0CFF0 D7BE0048 */  ldc1    $f30, 0x0048($sp)          
/* 01934 80A0CFF4 8FB00054 */  lw      $s0, 0x0054($sp)           
/* 01938 80A0CFF8 8FB10058 */  lw      $s1, 0x0058($sp)           
/* 0193C 80A0CFFC 8FB2005C */  lw      $s2, 0x005C($sp)           
/* 01940 80A0D000 8FB30060 */  lw      $s3, 0x0060($sp)           
/* 01944 80A0D004 8FB40064 */  lw      $s4, 0x0064($sp)           
/* 01948 80A0D008 8FB50068 */  lw      $s5, 0x0068($sp)           
/* 0194C 80A0D00C 8FB6006C */  lw      $s6, 0x006C($sp)           
/* 01950 80A0D010 8FB70070 */  lw      $s7, 0x0070($sp)           
/* 01954 80A0D014 03E00008 */  jr      $ra                        
/* 01958 80A0D018 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000



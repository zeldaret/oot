.late_rodata
glabel D_80B33B1C
 .word 0x3DA0D97C
glabel D_80B33B20
 .word 0x3EAAA64C
glabel D_80B33B24
    .float 0.1

.text
glabel func_80B328E8
/* 00658 80B328E8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0065C 80B328EC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00660 80B328F0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00664 80B328F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00668 80B328F8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 0066C 80B328FC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00670 80B32900 0C02927F */  jal     SkelAnime_Update
              
/* 00674 80B32904 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00678 80B32908 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0067C 80B3290C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00680 80B32910 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00684 80B32914 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 00688 80B32918 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 0068C 80B3291C 0C0295B2 */  jal     SkelAnime_StopAtFrame              
/* 00690 80B32920 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00694 80B32924 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 00698 80B32928 C6040164 */  lwc1    $f4, 0x0164($s0)           ## 00000164
/* 0069C 80B3292C 2604027C */  addiu   $a0, $s0, 0x027C           ## $a0 = 0000027C
/* 006A0 80B32930 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 006A4 80B32934 E7A40030 */  swc1    $f4, 0x0030($sp)           
/* 006A8 80B32938 0C01DE80 */  jal     Math_ApproxF
              
/* 006AC 80B3293C 8E050280 */  lw      $a1, 0x0280($s0)           ## 00000280
/* 006B0 80B32940 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 006B4 80B32944 44814000 */  mtc1    $at, $f8                   ## $f8 = 5.00
/* 006B8 80B32948 C7A60030 */  lwc1    $f6, 0x0030($sp)           
/* 006BC 80B3294C 3C0180B3 */  lui     $at, %hi(D_80B33B1C)       ## $at = 80B30000
/* 006C0 80B32950 C4303B1C */  lwc1    $f16, %lo(D_80B33B1C)($at) 
/* 006C4 80B32954 46083281 */  sub.s   $f10, $f6, $f8             
/* 006C8 80B32958 46105302 */  mul.s   $f12, $f10, $f16           
/* 006CC 80B3295C 0C041184 */  jal     cosf
              
/* 006D0 80B32960 00000000 */  nop
/* 006D4 80B32964 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 006D8 80B32968 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 006DC 80B3296C C612027C */  lwc1    $f18, 0x027C($s0)          ## 0000027C
/* 006E0 80B32970 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 006E4 80B32974 46040182 */  mul.s   $f6, $f0, $f4              
/* 006E8 80B32978 44815000 */  mtc1    $at, $f10                  ## $f10 = 45.00
/* 006EC 80B3297C 3C053FA6 */  lui     $a1, 0x3FA6                ## $a1 = 3FA60000
/* 006F0 80B32980 34A56666 */  ori     $a1, $a1, 0x6666           ## $a1 = 3FA66666
/* 006F4 80B32984 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 006F8 80B32988 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 006FC 80B3298C 46069201 */  sub.s   $f8, $f18, $f6             
/* 00700 80B32990 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00704 80B32994 C7B00030 */  lwc1    $f16, 0x0030($sp)          
/* 00708 80B32998 460A803E */  c.le.s  $f16, $f10                 
/* 0070C 80B3299C 00000000 */  nop
/* 00710 80B329A0 45000008 */  bc1f    .L80B329C4                 
/* 00714 80B329A4 00000000 */  nop
/* 00718 80B329A8 3C063CF5 */  lui     $a2, 0x3CF5                ## $a2 = 3CF50000
/* 0071C 80B329AC 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3CF5C28F
/* 00720 80B329B0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00724 80B329B4 0C01DE80 */  jal     Math_ApproxF
              
/* 00728 80B329B8 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 0072C 80B329BC 10000004 */  beq     $zero, $zero, .L80B329D0   
/* 00730 80B329C0 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
.L80B329C4:
/* 00734 80B329C4 0C01DE80 */  jal     Math_ApproxF
              
/* 00738 80B329C8 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 0000C28F
/* 0073C 80B329CC 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
.L80B329D0:
/* 00740 80B329D0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00744 80B329D4 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00748 80B329D8 31CF0008 */  andi    $t7, $t6, 0x0008           ## $t7 = 00000000
/* 0074C 80B329DC 11E00005 */  beq     $t7, $zero, .L80B329F4     
/* 00750 80B329E0 00000000 */  nop
/* 00754 80B329E4 8618007E */  lh      $t8, 0x007E($s0)           ## 0000007E
/* 00758 80B329E8 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 0075C 80B329EC A6190194 */  sh      $t9, 0x0194($s0)           ## 00000194
/* 00760 80B329F0 A6180196 */  sh      $t8, 0x0196($s0)           ## 00000196
.L80B329F4:
/* 00764 80B329F4 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00768 80B329F8 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 0076C 80B329FC 50400029 */  beql    $v0, $zero, .L80B32AA4     
/* 00770 80B32A00 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
/* 00774 80B32A04 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
/* 00778 80B32A08 24042000 */  addiu   $a0, $zero, 0x2000         ## $a0 = 00002000
/* 0077C 80B32A0C 10400003 */  beq     $v0, $zero, .L80B32A1C     
/* 00780 80B32A10 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00784 80B32A14 A6080194 */  sh      $t0, 0x0194($s0)           ## 00000194
/* 00788 80B32A18 86020194 */  lh      $v0, 0x0194($s0)           ## 00000194
.L80B32A1C:
/* 0078C 80B32A1C 54400021 */  bnel    $v0, $zero, .L80B32AA4     
/* 00790 80B32A20 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
/* 00794 80B32A24 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00798 80B32A28 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 0079C 80B32A2C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007A0 80B32A30 A7A20026 */  sh      $v0, 0x0026($sp)           
/* 007A4 80B32A34 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 007A8 80B32A38 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 007AC 80B32A3C 87A90026 */  lh      $t1, 0x0026($sp)           
/* 007B0 80B32A40 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 007B4 80B32A44 4604003C */  c.lt.s  $f0, $f4                   
/* 007B8 80B32A48 00000000 */  nop
/* 007BC 80B32A4C 45000003 */  bc1f    .L80B32A5C                 
/* 007C0 80B32A50 00000000 */  nop
/* 007C4 80B32A54 10000001 */  beq     $zero, $zero, .L80B32A5C   
/* 007C8 80B32A58 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80B32A5C:
/* 007CC 80B32A5C 00490019 */  multu   $v0, $t1                   
/* 007D0 80B32A60 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 007D4 80B32A64 240D001E */  addiu   $t5, $zero, 0x001E         ## $t5 = 0000001E
/* 007D8 80B32A68 A60D0194 */  sh      $t5, 0x0194($s0)           ## 00000194
/* 007DC 80B32A6C 00005012 */  mflo    $t2                        
/* 007E0 80B32A70 014B6021 */  addu    $t4, $t2, $t3              
/* 007E4 80B32A74 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 007E8 80B32A78 A60C0196 */  sh      $t4, 0x0196($s0)           ## 00000196
/* 007EC 80B32A7C 3C0180B3 */  lui     $at, %hi(D_80B33B20)       ## $at = 80B30000
/* 007F0 80B32A80 C4323B20 */  lwc1    $f18, %lo(D_80B33B20)($at) 
/* 007F4 80B32A84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007F8 80B32A88 4612003C */  c.lt.s  $f0, $f18                  
/* 007FC 80B32A8C 00000000 */  nop
/* 00800 80B32A90 45020004 */  bc1fl   .L80B32AA4                 
/* 00804 80B32A94 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
/* 00808 80B32A98 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0080C 80B32A9C 240539A3 */  addiu   $a1, $zero, 0x39A3         ## $a1 = 000039A3
/* 00810 80B32AA0 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
.L80B32AA4:
/* 00814 80B32AA4 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00818 80B32AA8 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 0081C 80B32AAC 4606103C */  c.lt.s  $f2, $f6                   
/* 00820 80B32AB0 00000000 */  nop
/* 00824 80B32AB4 45020018 */  bc1fl   .L80B32B18                 
/* 00828 80B32AB8 8DCF1C44 */  lw      $t7, 0x1C44($t6)           ## 00001C44
/* 0082C 80B32ABC C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 00830 80B32AC0 4608103C */  c.lt.s  $f2, $f8                   
/* 00834 80B32AC4 00000000 */  nop
/* 00838 80B32AC8 45000005 */  bc1f    .L80B32AE0                 
/* 0083C 80B32ACC 00000000 */  nop
/* 00840 80B32AD0 0C2CC90D */  jal     func_80B32434              
/* 00844 80B32AD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00848 80B32AD8 10000050 */  beq     $zero, $zero, .L80B32C1C   
/* 0084C 80B32ADC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B32AE0:
/* 00850 80B32AE0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00854 80B32AE4 E6020028 */  swc1    $f2, 0x0028($s0)           ## 00000028
/* 00858 80B32AE8 C6020080 */  lwc1    $f2, 0x0080($s0)           ## 00000080
/* 0085C 80B32AEC C60A000C */  lwc1    $f10, 0x000C($s0)          ## 0000000C
/* 00860 80B32AF0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00864 80B32AF4 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00868 80B32AF8 46025401 */  sub.s   $f16, $f10, $f2            
/* 0086C 80B32AFC 46048482 */  mul.s   $f18, $f16, $f4            
/* 00870 80B32B00 00000000 */  nop
/* 00874 80B32B04 46120182 */  mul.s   $f6, $f0, $f18             
/* 00878 80B32B08 46023200 */  add.s   $f8, $f6, $f2              
/* 0087C 80B32B0C 10000042 */  beq     $zero, $zero, .L80B32C18   
/* 00880 80B32B10 E6080280 */  swc1    $f8, 0x0280($s0)           ## 00000280
/* 00884 80B32B14 8DCF1C44 */  lw      $t7, 0x1C44($t6)           ## 00001C44
.L80B32B18:
/* 00888 80B32B18 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 0088C 80B32B1C AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00890 80B32B20 96180088 */  lhu     $t8, 0x0088($s0)           ## 00000088
/* 00894 80B32B24 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00898 80B32B28 1320000E */  beq     $t9, $zero, .L80B32B64     
/* 0089C 80B32B2C 00000000 */  nop
/* 008A0 80B32B30 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008A4 80B32B34 00000000 */  nop
/* 008A8 80B32B38 C602000C */  lwc1    $f2, 0x000C($s0)           ## 0000000C
/* 008AC 80B32B3C C60A0080 */  lwc1    $f10, 0x0080($s0)          ## 00000080
/* 008B0 80B32B40 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 008B4 80B32B44 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 008B8 80B32B48 460A1401 */  sub.s   $f16, $f2, $f10            
/* 008BC 80B32B4C 46048482 */  mul.s   $f18, $f16, $f4            
/* 008C0 80B32B50 00000000 */  nop
/* 008C4 80B32B54 46120182 */  mul.s   $f6, $f0, $f18             
/* 008C8 80B32B58 46061201 */  sub.s   $f8, $f2, $f6              
/* 008CC 80B32B5C 10000013 */  beq     $zero, $zero, .L80B32BAC   
/* 008D0 80B32B60 E6080280 */  swc1    $f8, 0x0280($s0)           ## 00000280
.L80B32B64:
/* 008D4 80B32B64 51000012 */  beql    $t0, $zero, .L80B32BB0     
/* 008D8 80B32B68 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 008DC 80B32B6C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008E0 80B32B70 00000000 */  nop
/* 008E4 80B32B74 3C0180B3 */  lui     $at, %hi(D_80B33B24)       ## $at = 80B30000
/* 008E8 80B32B78 C42A3B24 */  lwc1    $f10, %lo(D_80B33B24)($at) 
/* 008EC 80B32B7C 460A003C */  c.lt.s  $f0, $f10                  
/* 008F0 80B32B80 00000000 */  nop
/* 008F4 80B32B84 4502000A */  bc1fl   .L80B32BB0                 
/* 008F8 80B32B88 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 008FC 80B32B8C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00900 80B32B90 00000000 */  nop
/* 00904 80B32B94 C6020080 */  lwc1    $f2, 0x0080($s0)           ## 00000080
/* 00908 80B32B98 C610000C */  lwc1    $f16, 0x000C($s0)          ## 0000000C
/* 0090C 80B32B9C 46028101 */  sub.s   $f4, $f16, $f2             
/* 00910 80B32BA0 46040482 */  mul.s   $f18, $f0, $f4             
/* 00914 80B32BA4 46029180 */  add.s   $f6, $f18, $f2             
/* 00918 80B32BA8 E6060280 */  swc1    $f6, 0x0280($s0)           ## 00000280
.L80B32BAC:
/* 0091C 80B32BAC 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
.L80B32BB0:
/* 00920 80B32BB0 44815000 */  mtc1    $at, $f10                  ## $f10 = 400.00
/* 00924 80B32BB4 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00928 80B32BB8 460A403C */  c.lt.s  $f8, $f10                  
/* 0092C 80B32BBC 00000000 */  nop
/* 00930 80B32BC0 45020016 */  bc1fl   .L80B32C1C                 
/* 00934 80B32BC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00938 80B32BC8 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 0093C 80B32BCC 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 00940 80B32BD0 44818000 */  mtc1    $at, $f16                  ## $f16 = 250.00
/* 00944 80B32BD4 46000005 */  abs.s   $f0, $f0                   
/* 00948 80B32BD8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0094C 80B32BDC 4610003C */  c.lt.s  $f0, $f16                  
/* 00950 80B32BE0 00000000 */  nop
/* 00954 80B32BE4 4502000D */  bc1fl   .L80B32C1C                 
/* 00958 80B32BE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0095C 80B32BEC C612000C */  lwc1    $f18, 0x000C($s0)          ## 0000000C
/* 00960 80B32BF0 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 00964 80B32BF4 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 00968 80B32BF8 46069200 */  add.s   $f8, $f18, $f6             
/* 0096C 80B32BFC C5240028 */  lwc1    $f4, 0x0028($t1)           ## 00000028
/* 00970 80B32C00 4608203C */  c.lt.s  $f4, $f8                   
/* 00974 80B32C04 00000000 */  nop
/* 00978 80B32C08 45020004 */  bc1fl   .L80B32C1C                 
/* 0097C 80B32C0C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00980 80B32C10 0C2CC942 */  jal     func_80B32508              
/* 00984 80B32C14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B32C18:
/* 00988 80B32C18 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B32C1C:
/* 0098C 80B32C1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00990 80B32C20 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00994 80B32C24 03E00008 */  jr      $ra                        
/* 00998 80B32C28 00000000 */  nop

glabel func_80AB5FA0
/* 00820 80AB5FA0 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00824 80AB5FA4 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00828 80AB5FA8 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 0082C 80AB5FAC AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00830 80AB5FB0 848E025C */  lh      $t6, 0x025C($a0)           ## 0000025C
/* 00834 80AB5FB4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00838 80AB5FB8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0083C 80AB5FBC 55C0004C */  bnel    $t6, $zero, .L80AB60F0     
/* 00840 80AB5FC0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00844 80AB5FC4 848F0296 */  lh      $t7, 0x0296($a0)           ## 00000296
/* 00848 80AB5FC8 29E10007 */  slti    $at, $t7, 0x0007           
/* 0084C 80AB5FCC 50200048 */  beql    $at, $zero, .L80AB60F0     
/* 00850 80AB5FD0 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00854 80AB5FD4 C4A400EC */  lwc1    $f4, 0x00EC($a1)           ## 000000EC
/* 00858 80AB5FD8 C4A600E0 */  lwc1    $f6, 0x00E0($a1)           ## 000000E0
/* 0085C 80AB5FDC 46062201 */  sub.s   $f8, $f4, $f6              
/* 00860 80AB5FE0 E7A80054 */  swc1    $f8, 0x0054($sp)           
/* 00864 80AB5FE4 C4B000E4 */  lwc1    $f16, 0x00E4($a1)          ## 000000E4
/* 00868 80AB5FE8 C4AA00F0 */  lwc1    $f10, 0x00F0($a1)          ## 000000F0
/* 0086C 80AB5FEC 46105481 */  sub.s   $f18, $f10, $f16           
/* 00870 80AB5FF0 E7B20050 */  swc1    $f18, 0x0050($sp)          
/* 00874 80AB5FF4 C4A600E8 */  lwc1    $f6, 0x00E8($a1)           ## 000000E8
/* 00878 80AB5FF8 C4A400F4 */  lwc1    $f4, 0x00F4($a1)           ## 000000F4
/* 0087C 80AB5FFC 46062201 */  sub.s   $f8, $f4, $f6              
/* 00880 80AB6000 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00884 80AB6004 E7A8004C */  swc1    $f8, 0x004C($sp)           
/* 00888 80AB6008 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0088C 80AB600C 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00890 80AB6010 C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 00894 80AB6014 C60600E0 */  lwc1    $f6, 0x00E0($s0)           ## 000000E0
/* 00898 80AB6018 460A0401 */  sub.s   $f16, $f0, $f10            
/* 0089C 80AB601C 3C0180AC */  lui     $at, %hi(D_80AB8AD0)       ## $at = 80AC0000
/* 008A0 80AB6020 C42C8AD0 */  lwc1    $f12, %lo(D_80AB8AD0)($at) 
/* 008A4 80AB6024 46128102 */  mul.s   $f4, $f16, $f18            
/* 008A8 80AB6028 46062200 */  add.s   $f8, $f4, $f6              
/* 008AC 80AB602C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 008B0 80AB6030 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 008B4 80AB6034 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 008B8 80AB6038 44818000 */  mtc1    $at, $f16                  ## $f16 = 50.00
/* 008BC 80AB603C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 008C0 80AB6040 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 008C4 80AB6044 C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 008C8 80AB6048 C60A00E4 */  lwc1    $f10, 0x00E4($s0)          ## 000000E4
/* 008CC 80AB604C 46062202 */  mul.s   $f8, $f4, $f6              
/* 008D0 80AB6050 46105480 */  add.s   $f18, $f10, $f16           
/* 008D4 80AB6054 46089280 */  add.s   $f10, $f18, $f8            
/* 008D8 80AB6058 460A0400 */  add.s   $f16, $f0, $f10            
/* 008DC 80AB605C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 008E0 80AB6060 E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 008E4 80AB6064 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 008E8 80AB6068 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 008EC 80AB606C C7B2004C */  lwc1    $f18, 0x004C($sp)          
/* 008F0 80AB6070 C60A00E8 */  lwc1    $f10, 0x00E8($s0)          ## 000000E8
/* 008F4 80AB6074 46040181 */  sub.s   $f6, $f0, $f4              
/* 008F8 80AB6078 C7A40044 */  lwc1    $f4, 0x0044($sp)           
/* 008FC 80AB607C C7B00040 */  lwc1    $f16, 0x0040($sp)          
/* 00900 80AB6080 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00904 80AB6084 46123202 */  mul.s   $f8, $f6, $f18             
/* 00908 80AB6088 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0090C 80AB608C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00910 80AB6090 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00914 80AB6094 26041C24 */  addiu   $a0, $s0, 0x1C24           ## $a0 = 00001C24
/* 00918 80AB6098 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0091C 80AB609C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00920 80AB60A0 460A4080 */  add.s   $f2, $f8, $f10             
/* 00924 80AB60A4 24070144 */  addiu   $a3, $zero, 0x0144         ## $a3 = 00000144
/* 00928 80AB60A8 E7A40014 */  swc1    $f4, 0x0014($sp)           
/* 0092C 80AB60AC E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 00930 80AB60B0 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00934 80AB60B4 E7A20018 */  swc1    $f2, 0x0018($sp)           
/* 00938 80AB60B8 10400007 */  beq     $v0, $zero, .L80AB60D8     
/* 0093C 80AB60BC 3C0480AC */  lui     $a0, %hi(D_80AB87D8)       ## $a0 = 80AC0000
/* 00940 80AB60C0 86380296 */  lh      $t8, 0x0296($s1)           ## 00000296
/* 00944 80AB60C4 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00948 80AB60C8 A628025C */  sh      $t0, 0x025C($s1)           ## 0000025C
/* 0094C 80AB60CC 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00950 80AB60D0 10000006 */  beq     $zero, $zero, .L80AB60EC   
/* 00954 80AB60D4 A6390296 */  sh      $t9, 0x0296($s1)           ## 00000296
.L80AB60D8:
/* 00958 80AB60D8 0C00084C */  jal     osSyncPrintf
              
/* 0095C 80AB60DC 248487D8 */  addiu   $a0, $a0, %lo(D_80AB87D8)  ## $a0 = 80AB87D8
/* 00960 80AB60E0 3C0480AC */  lui     $a0, %hi(D_80AB87DC)       ## $a0 = 80AC0000
/* 00964 80AB60E4 0C00084C */  jal     osSyncPrintf
              
/* 00968 80AB60E8 248487DC */  addiu   $a0, $a0, %lo(D_80AB87DC)  ## $a0 = 80AB87DC
.L80AB60EC:
/* 0096C 80AB60EC 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80AB60F0:
/* 00970 80AB60F0 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 00974 80AB60F4 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00978 80AB60F8 03E00008 */  jr      $ra                        
/* 0097C 80AB60FC 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000



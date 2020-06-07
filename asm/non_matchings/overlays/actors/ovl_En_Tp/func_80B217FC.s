glabel func_80B217FC
/* 00A1C 80B217FC 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A20 80B21800 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A24 80B21804 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A28 80B21808 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00A2C 80B2180C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A30 80B21810 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A34 80B21814 AC80014C */  sw      $zero, 0x014C($a0)         ## 0000014C
/* 00A38 80B21818 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A3C 80B2181C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 0.50
/* 00A40 80B21820 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A44 80B21824 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 00A48 80B21828 46140101 */  sub.s   $f4, $f0, $f20             
/* 00A4C 80B2182C C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 00A50 80B21830 46062202 */  mul.s   $f8, $f4, $f6              
/* 00A54 80B21834 46085400 */  add.s   $f16, $f10, $f8            
/* 00A58 80B21838 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A5C 80B2183C E6100024 */  swc1    $f16, 0x0024($s0)          ## 00000024
/* 00A60 80B21840 46140481 */  sub.s   $f18, $f0, $f20            
/* 00A64 80B21844 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A68 80B21848 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00A6C 80B2184C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00A70 80B21850 46049182 */  mul.s   $f6, $f18, $f4             
/* 00A74 80B21854 46065200 */  add.s   $f8, $f10, $f6             
/* 00A78 80B21858 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A7C 80B2185C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00A80 80B21860 46140401 */  sub.s   $f16, $f0, $f20            
/* 00A84 80B21864 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00A88 80B21868 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00A8C 80B2186C C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00A90 80B21870 46128102 */  mul.s   $f4, $f16, $f18            
/* 00A94 80B21874 46045180 */  add.s   $f6, $f10, $f4             
/* 00A98 80B21878 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A9C 80B2187C E606002C */  swc1    $f6, 0x002C($s0)           ## 0000002C
/* 00AA0 80B21880 46140201 */  sub.s   $f8, $f0, $f20             
/* 00AA4 80B21884 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00AA8 80B21888 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 00AAC 80B2188C 00000000 */  nop
/* 00AB0 80B21890 46104482 */  mul.s   $f18, $f8, $f16            
/* 00AB4 80B21894 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AB8 80B21898 E612005C */  swc1    $f18, 0x005C($s0)          ## 0000005C
/* 00ABC 80B2189C 46140281 */  sub.s   $f10, $f0, $f20            
/* 00AC0 80B218A0 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00AC4 80B218A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.50
/* 00AC8 80B218A8 00000000 */  nop
/* 00ACC 80B218AC 46045182 */  mul.s   $f6, $f10, $f4             
/* 00AD0 80B218B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00AD4 80B218B4 E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00AD8 80B218B8 46140201 */  sub.s   $f8, $f0, $f20             
/* 00ADC 80B218BC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00AE0 80B218C0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.50
/* 00AE4 80B218C4 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00AE8 80B218C8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00AEC 80B218CC 46104482 */  mul.s   $f18, $f8, $f16            
/* 00AF0 80B218D0 3C0580B2 */  lui     $a1, %hi(func_80B21900)    ## $a1 = 80B20000
/* 00AF4 80B218D4 01C17824 */  and     $t7, $t6, $at              
/* 00AF8 80B218D8 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00AFC 80B218DC 24A51900 */  addiu   $a1, $a1, %lo(func_80B21900) ## $a1 = 80B21900
/* 00B00 80B218E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B04 80B218E4 0C2C8378 */  jal     func_80B20DE0              
/* 00B08 80B218E8 E6120064 */  swc1    $f18, 0x0064($s0)          ## 00000064
/* 00B0C 80B218EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B10 80B218F0 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00B14 80B218F4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00B18 80B218F8 03E00008 */  jr      $ra                        
/* 00B1C 80B218FC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000

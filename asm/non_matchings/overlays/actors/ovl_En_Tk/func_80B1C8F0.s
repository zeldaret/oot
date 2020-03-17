glabel func_80B1C8F0
/* 00FF0 80B1C8F0 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00FF4 80B1C8F4 3C0F80B2 */  lui     $t7, %hi(D_80B1D548)       ## $t7 = 80B20000
/* 00FF8 80B1C8F8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00FFC 80B1C8FC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01000 80B1C900 25EFD548 */  addiu   $t7, $t7, %lo(D_80B1D548)  ## $t7 = 80B1D548
/* 01004 80B1C904 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B1D548
/* 01008 80B1C908 27AE0044 */  addiu   $t6, $sp, 0x0044           ## $t6 = FFFFFFF4
/* 0100C 80B1C90C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B1D54C
/* 01010 80B1C910 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF4
/* 01014 80B1C914 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B1D550
/* 01018 80B1C918 3C0980B2 */  lui     $t1, %hi(D_80B1D554)       ## $t1 = 80B20000
/* 0101C 80B1C91C 2529D554 */  addiu   $t1, $t1, %lo(D_80B1D554)  ## $t1 = 80B1D554
/* 01020 80B1C920 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF8
/* 01024 80B1C924 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFFC
/* 01028 80B1C928 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B1D554
/* 0102C 80B1C92C 27A80038 */  addiu   $t0, $sp, 0x0038           ## $t0 = FFFFFFE8
/* 01030 80B1C930 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B1D558
/* 01034 80B1C934 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE8
/* 01038 80B1C938 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B1D55C
/* 0103C 80B1C93C 3C0D80B2 */  lui     $t5, %hi(D_80B1D560)       ## $t5 = 80B20000
/* 01040 80B1C940 25ADD560 */  addiu   $t5, $t5, %lo(D_80B1D560)  ## $t5 = 80B1D560
/* 01044 80B1C944 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFEC
/* 01048 80B1C948 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFF0
/* 0104C 80B1C94C 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B1D560
/* 01050 80B1C950 27AC002C */  addiu   $t4, $sp, 0x002C           ## $t4 = FFFFFFDC
/* 01054 80B1C954 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B1D564
/* 01058 80B1C958 AD8F0000 */  sw      $t7, 0x0000($t4)           ## FFFFFFDC
/* 0105C 80B1C95C 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B1D568
/* 01060 80B1C960 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 01064 80B1C964 AD8E0004 */  sw      $t6, 0x0004($t4)           ## FFFFFFE0
/* 01068 80B1C968 AD8F0008 */  sw      $t7, 0x0008($t4)           ## FFFFFFE4
/* 0106C 80B1C96C C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 01070 80B1C970 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 01074 80B1C974 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01078 80B1C978 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 0107C 80B1C97C 4600203E */  c.le.s  $f4, $f0                   
/* 01080 80B1C980 00000000 */  nop
/* 01084 80B1C984 45020032 */  bc1fl   .L80B1CA50                 
/* 01088 80B1C988 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0108C 80B1C98C 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 01090 80B1C990 00000000 */  nop
/* 01094 80B1C994 4606003C */  c.lt.s  $f0, $f6                   
/* 01098 80B1C998 00000000 */  nop
/* 0109C 80B1C99C 4502002C */  bc1fl   .L80B1CA50                 
/* 010A0 80B1C9A0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 010A4 80B1C9A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010A8 80B1C9A8 00000000 */  nop
/* 010AC 80B1C9AC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 010B0 80B1C9B0 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 010B4 80B1C9B4 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 010B8 80B1C9B8 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 010BC 80B1C9BC 46080281 */  sub.s   $f10, $f0, $f8             
/* 010C0 80B1C9C0 C6040304 */  lwc1    $f4, 0x0304($s0)           ## 00000304
/* 010C4 80B1C9C4 46105482 */  mul.s   $f18, $f10, $f16           
/* 010C8 80B1C9C8 46049180 */  add.s   $f6, $f18, $f4             
/* 010CC 80B1C9CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010D0 80B1C9D0 E7A60044 */  swc1    $f6, 0x0044($sp)           
/* 010D4 80B1C9D4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 010D8 80B1C9D8 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 010DC 80B1C9DC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 010E0 80B1C9E0 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 010E4 80B1C9E4 46080281 */  sub.s   $f10, $f0, $f8             
/* 010E8 80B1C9E8 C6040308 */  lwc1    $f4, 0x0308($s0)           ## 00000308
/* 010EC 80B1C9EC 46105482 */  mul.s   $f18, $f10, $f16           
/* 010F0 80B1C9F0 46049180 */  add.s   $f6, $f18, $f4             
/* 010F4 80B1C9F4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 010F8 80B1C9F8 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 010FC 80B1C9FC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01100 80B1CA00 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01104 80B1CA04 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 01108 80B1CA08 44818000 */  mtc1    $at, $f16                  ## $f16 = 12.00
/* 0110C 80B1CA0C 46080281 */  sub.s   $f10, $f0, $f8             
/* 01110 80B1CA10 C604030C */  lwc1    $f4, 0x030C($s0)           ## 0000030C
/* 01114 80B1CA14 3C0180B2 */  lui     $at, %hi(D_80B1D680)       ## $at = 80B20000
/* 01118 80B1CA18 C428D680 */  lwc1    $f8, %lo(D_80B1D680)($at)  
/* 0111C 80B1CA1C 46105482 */  mul.s   $f18, $f10, $f16           
/* 01120 80B1CA20 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 01124 80B1CA24 3C073E4C */  lui     $a3, 0x3E4C                ## $a3 = 3E4C0000
/* 01128 80B1CA28 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 3E4CCCCD
/* 0112C 80B1CA2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01130 80B1CA30 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFF4
/* 01134 80B1CA34 2406000C */  addiu   $a2, $zero, 0x000C         ## $a2 = 0000000C
/* 01138 80B1CA38 46049180 */  add.s   $f6, $f18, $f4             
/* 0113C 80B1CA3C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01140 80B1CA40 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01144 80B1CA44 0C2C6F77 */  jal     func_80B1BDDC              
/* 01148 80B1CA48 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 0114C 80B1CA4C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B1CA50:
/* 01150 80B1CA50 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01154 80B1CA54 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 01158 80B1CA58 03E00008 */  jr      $ra                        
/* 0115C 80B1CA5C 00000000 */  nop



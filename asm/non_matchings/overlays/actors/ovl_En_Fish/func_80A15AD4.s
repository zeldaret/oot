glabel func_80A15AD4
/* 00854 80A15AD4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00858 80A15AD8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0085C 80A15ADC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00860 80A15AE0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00864 80A15AE4 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 00868 80A15AE8 E4800070 */  swc1    $f0, 0x0070($a0)           ## 00000070
/* 0086C 80A15AEC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00870 80A15AF0 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00874 80A15AF4 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00878 80A15AF8 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 0087C 80A15AFC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00880 80A15B00 A4820248 */  sh      $v0, 0x0248($a0)           ## 00000248
/* 00884 80A15B04 0C2854AB */  jal     func_80A152AC              
/* 00888 80A15B08 AC800250 */  sw      $zero, 0x0250($a0)         ## 00000250
/* 0088C 80A15B0C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00890 80A15B10 3C0E80A1 */  lui     $t6, %hi(func_80A15B2C)    ## $t6 = 80A10000
/* 00894 80A15B14 25CE5B2C */  addiu   $t6, $t6, %lo(func_80A15B2C) ## $t6 = 80A15B2C
/* 00898 80A15B18 ACCE0244 */  sw      $t6, 0x0244($a2)           ## 00000244
/* 0089C 80A15B1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 008A0 80A15B20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 008A4 80A15B24 03E00008 */  jr      $ra                        
/* 008A8 80A15B28 00000000 */  nop

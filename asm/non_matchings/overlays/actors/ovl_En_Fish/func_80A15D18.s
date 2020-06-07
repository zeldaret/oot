glabel func_80A15D18
/* 00A98 80A15D18 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00A9C 80A15D1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA0 80A15D20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AA4 80A15D24 E480006C */  swc1    $f0, 0x006C($a0)           ## 0000006C
/* 00AA8 80A15D28 E4800070 */  swc1    $f0, 0x0070($a0)           ## 00000070
/* 00AAC 80A15D2C 0C2854AB */  jal     func_80A152AC              
/* 00AB0 80A15D30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AB4 80A15D34 2404000A */  addiu   $a0, $zero, 0x000A         ## $a0 = 0000000A
/* 00AB8 80A15D38 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00ABC 80A15D3C 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00AC0 80A15D40 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00AC4 80A15D44 3C0E80A1 */  lui     $t6, %hi(func_80A15D68)    ## $t6 = 80A10000
/* 00AC8 80A15D48 25CE5D68 */  addiu   $t6, $t6, %lo(func_80A15D68) ## $t6 = 80A15D68
/* 00ACC 80A15D4C A4C20248 */  sh      $v0, 0x0248($a2)           ## 00000248
/* 00AD0 80A15D50 ACC00250 */  sw      $zero, 0x0250($a2)         ## 00000250
/* 00AD4 80A15D54 ACCE0244 */  sw      $t6, 0x0244($a2)           ## 00000244
/* 00AD8 80A15D58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ADC 80A15D5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AE0 80A15D60 03E00008 */  jr      $ra                        
/* 00AE4 80A15D64 00000000 */  nop

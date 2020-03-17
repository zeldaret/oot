glabel func_80A02A20
/* 00DF0 80A02A20 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00DF4 80A02A24 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00DF8 80A02A28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00DFC 80A02A2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E00 80A02A30 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E04 80A02A34 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E08 80A02A38 848402AC */  lh      $a0, 0x02AC($a0)           ## 000002AC
/* 00E0C 80A02A3C C60402B8 */  lwc1    $f4, 0x02B8($s0)           ## 000002B8
/* 00E10 80A02A40 860402AA */  lh      $a0, 0x02AA($s0)           ## 000002AA
/* 00E14 80A02A44 46040182 */  mul.s   $f6, $f0, $f4              
/* 00E18 80A02A48 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00E1C 80A02A4C E606028C */  swc1    $f6, 0x028C($s0)           ## 0000028C
/* 00E20 80A02A50 C60802B4 */  lwc1    $f8, 0x02B4($s0)           ## 000002B4
/* 00E24 80A02A54 860402AC */  lh      $a0, 0x02AC($s0)           ## 000002AC
/* 00E28 80A02A58 46080282 */  mul.s   $f10, $f0, $f8             
/* 00E2C 80A02A5C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00E30 80A02A60 E60A0290 */  swc1    $f10, 0x0290($s0)          ## 00000290
/* 00E34 80A02A64 C61002B8 */  lwc1    $f16, 0x02B8($s0)          ## 000002B8
/* 00E38 80A02A68 860E02AC */  lh      $t6, 0x02AC($s0)           ## 000002AC
/* 00E3C 80A02A6C 860F02B0 */  lh      $t7, 0x02B0($s0)           ## 000002B0
/* 00E40 80A02A70 46100482 */  mul.s   $f18, $f0, $f16            
/* 00E44 80A02A74 861902AA */  lh      $t9, 0x02AA($s0)           ## 000002AA
/* 00E48 80A02A78 860802AE */  lh      $t0, 0x02AE($s0)           ## 000002AE
/* 00E4C 80A02A7C 01CFC021 */  addu    $t8, $t6, $t7              
/* 00E50 80A02A80 A61802AC */  sh      $t8, 0x02AC($s0)           ## 000002AC
/* 00E54 80A02A84 03284821 */  addu    $t1, $t9, $t0              
/* 00E58 80A02A88 A60902AA */  sh      $t1, 0x02AA($s0)           ## 000002AA
/* 00E5C 80A02A8C E6120294 */  swc1    $f18, 0x0294($s0)          ## 00000294
/* 00E60 80A02A90 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E64 80A02A94 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E68 80A02A98 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E6C 80A02A9C 03E00008 */  jr      $ra                        
/* 00E70 80A02AA0 00000000 */  nop



glabel func_80A02AA4
/* 00E74 80A02AA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E78 80A02AA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E7C 80A02AAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E80 80A02AB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E84 80A02AB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00E88 80A02AB8 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00E8C 80A02ABC 848402AA */  lh      $a0, 0x02AA($a0)           ## 000002AA
/* 00E90 80A02AC0 C60402B4 */  lwc1    $f4, 0x02B4($s0)           ## 000002B4
/* 00E94 80A02AC4 C60802B8 */  lwc1    $f8, 0x02B8($s0)           ## 000002B8
/* 00E98 80A02AC8 46040182 */  mul.s   $f6, $f0, $f4              
/* 00E9C 80A02ACC 46083280 */  add.s   $f10, $f6, $f8             
/* 00EA0 80A02AD0 E7AA0024 */  swc1    $f10, 0x0024($sp)          
/* 00EA4 80A02AD4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00EA8 80A02AD8 860402AC */  lh      $a0, 0x02AC($s0)           ## 000002AC
/* 00EAC 80A02ADC C7B00024 */  lwc1    $f16, 0x0024($sp)          
/* 00EB0 80A02AE0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00EB4 80A02AE4 860402AC */  lh      $a0, 0x02AC($s0)           ## 000002AC
/* 00EB8 80A02AE8 46100482 */  mul.s   $f18, $f0, $f16            
/* 00EBC 80A02AEC E6040290 */  swc1    $f4, 0x0290($s0)           ## 00000290
/* 00EC0 80A02AF0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00EC4 80A02AF4 E612028C */  swc1    $f18, 0x028C($s0)          ## 0000028C
/* 00EC8 80A02AF8 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 00ECC 80A02AFC 860E02AC */  lh      $t6, 0x02AC($s0)           ## 000002AC
/* 00ED0 80A02B00 860F02B0 */  lh      $t7, 0x02B0($s0)           ## 000002B0
/* 00ED4 80A02B04 46060202 */  mul.s   $f8, $f0, $f6              
/* 00ED8 80A02B08 861902AA */  lh      $t9, 0x02AA($s0)           ## 000002AA
/* 00EDC 80A02B0C 860802AE */  lh      $t0, 0x02AE($s0)           ## 000002AE
/* 00EE0 80A02B10 01CFC021 */  addu    $t8, $t6, $t7              
/* 00EE4 80A02B14 A61802AC */  sh      $t8, 0x02AC($s0)           ## 000002AC
/* 00EE8 80A02B18 03284821 */  addu    $t1, $t9, $t0              
/* 00EEC 80A02B1C A60902AA */  sh      $t1, 0x02AA($s0)           ## 000002AA
/* 00EF0 80A02B20 E6080294 */  swc1    $f8, 0x0294($s0)           ## 00000294
/* 00EF4 80A02B24 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EF8 80A02B28 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EFC 80A02B2C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F00 80A02B30 03E00008 */  jr      $ra                        
/* 00F04 80A02B34 00000000 */  nop



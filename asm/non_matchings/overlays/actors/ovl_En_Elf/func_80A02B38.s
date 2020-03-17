glabel func_80A02B38
/* 00F08 80A02B38 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F0C 80A02B3C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F10 80A02B40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F14 80A02B44 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00F18 80A02B48 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F1C 80A02B4C AFAE0024 */  sw      $t6, 0x0024($sp)           
/* 00F20 80A02B50 848402AC */  lh      $a0, 0x02AC($a0)           ## 000002AC
/* 00F24 80A02B54 0004C040 */  sll     $t8, $a0,  1               
/* 00F28 80A02B58 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F2C 80A02B5C A61802AA */  sh      $t8, 0x02AA($s0)           ## 000002AA
/* 00F30 80A02B60 C60402B8 */  lwc1    $f4, 0x02B8($s0)           ## 000002B8
/* 00F34 80A02B64 860402AA */  lh      $a0, 0x02AA($s0)           ## 000002AA
/* 00F38 80A02B68 46040182 */  mul.s   $f6, $f0, $f4              
/* 00F3C 80A02B6C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F40 80A02B70 E606028C */  swc1    $f6, 0x028C($s0)           ## 0000028C
/* 00F44 80A02B74 C60802B4 */  lwc1    $f8, 0x02B4($s0)           ## 000002B4
/* 00F48 80A02B78 46080282 */  mul.s   $f10, $f0, $f8             
/* 00F4C 80A02B7C E60A0290 */  swc1    $f10, 0x0290($s0)          ## 00000290
/* 00F50 80A02B80 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 00F54 80A02B84 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00F58 80A02B88 872400B6 */  lh      $a0, 0x00B6($t9)           ## 000000B6
/* 00F5C 80A02B8C C612028C */  lwc1    $f18, 0x028C($s0)          ## 0000028C
/* 00F60 80A02B90 46000407 */  neg.s   $f16, $f0                  
/* 00F64 80A02B94 46128102 */  mul.s   $f4, $f16, $f18            
/* 00F68 80A02B98 E6040294 */  swc1    $f4, 0x0294($s0)           ## 00000294
/* 00F6C 80A02B9C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00F70 80A02BA0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00F74 80A02BA4 850400B6 */  lh      $a0, 0x00B6($t0)           ## 000000B6
/* 00F78 80A02BA8 C606028C */  lwc1    $f6, 0x028C($s0)           ## 0000028C
/* 00F7C 80A02BAC 860902AC */  lh      $t1, 0x02AC($s0)           ## 000002AC
/* 00F80 80A02BB0 860A02B0 */  lh      $t2, 0x02B0($s0)           ## 000002B0
/* 00F84 80A02BB4 46060202 */  mul.s   $f8, $f0, $f6              
/* 00F88 80A02BB8 012A5821 */  addu    $t3, $t1, $t2              
/* 00F8C 80A02BBC A60B02AC */  sh      $t3, 0x02AC($s0)           ## 000002AC
/* 00F90 80A02BC0 E608028C */  swc1    $f8, 0x028C($s0)           ## 0000028C
/* 00F94 80A02BC4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F98 80A02BC8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F9C 80A02BCC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FA0 80A02BD0 03E00008 */  jr      $ra                        
/* 00FA4 80A02BD4 00000000 */  nop



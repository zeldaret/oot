glabel func_80B8F59C
/* 00B1C 80B8F59C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B20 80B8F5A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B24 80B8F5A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B28 80B8F5A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B2C 80B8F5AC 860601C6 */  lh      $a2, 0x01C6($s0)           ## 000001C6
/* 00B30 80B8F5B0 860501C4 */  lh      $a1, 0x01C4($s0)           ## 000001C4
/* 00B34 80B8F5B4 0C01DE5F */  jal     Math_ApproxS
              
/* 00B38 80B8F5B8 248401C2 */  addiu   $a0, $a0, 0x01C2           ## $a0 = 000001C2
/* 00B3C 80B8F5BC 260401C8 */  addiu   $a0, $s0, 0x01C8           ## $a0 = 000001C8
/* 00B40 80B8F5C0 860501CA */  lh      $a1, 0x01CA($s0)           ## 000001CA
/* 00B44 80B8F5C4 0C01DE5F */  jal     Math_ApproxS
              
/* 00B48 80B8F5C8 860601CC */  lh      $a2, 0x01CC($s0)           ## 000001CC
/* 00B4C 80B8F5CC 860E01CE */  lh      $t6, 0x01CE($s0)           ## 000001CE
/* 00B50 80B8F5D0 860F01C8 */  lh      $t7, 0x01C8($s0)           ## 000001C8
/* 00B54 80B8F5D4 01CFC021 */  addu    $t8, $t6, $t7              
/* 00B58 80B8F5D8 A61801CE */  sh      $t8, 0x01CE($s0)           ## 000001CE
/* 00B5C 80B8F5DC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B60 80B8F5E0 860401CE */  lh      $a0, 0x01CE($s0)           ## 000001CE
/* 00B64 80B8F5E4 861901C2 */  lh      $t9, 0x01C2($s0)           ## 000001C2
/* 00B68 80B8F5E8 3C0180B9 */  lui     $at, %hi(D_80B91028)       ## $at = 80B90000
/* 00B6C 80B8F5EC C4241028 */  lwc1    $f4, %lo(D_80B91028)($at)  
/* 00B70 80B8F5F0 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 00B74 80B8F5F4 00000000 */  nop
/* 00B78 80B8F5F8 46803220 */  cvt.s.w $f8, $f6                   
/* 00B7C 80B8F5FC 46080282 */  mul.s   $f10, $f0, $f8             
/* 00B80 80B8F600 460A2401 */  sub.s   $f16, $f4, $f10            
/* 00B84 80B8F604 4600848D */  trunc.w.s $f18, $f16                 
/* 00B88 80B8F608 44099000 */  mfc1    $t1, $f18                  
/* 00B8C 80B8F60C 00000000 */  nop
/* 00B90 80B8F610 A60901D0 */  sh      $t1, 0x01D0($s0)           ## 000001D0
/* 00B94 80B8F614 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B98 80B8F618 860401D0 */  lh      $a0, 0x01D0($s0)           ## 000001D0
/* 00B9C 80B8F61C 3C0180B9 */  lui     $at, %hi(D_80B9102C)       ## $at = 80B90000
/* 00BA0 80B8F620 C426102C */  lwc1    $f6, %lo(D_80B9102C)($at)  
/* 00BA4 80B8F624 860401D0 */  lh      $a0, 0x01D0($s0)           ## 000001D0
/* 00BA8 80B8F628 46060202 */  mul.s   $f8, $f0, $f6              
/* 00BAC 80B8F62C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00BB0 80B8F630 E6080054 */  swc1    $f8, 0x0054($s0)           ## 00000054
/* 00BB4 80B8F634 3C0180B9 */  lui     $at, %hi(D_80B91030)       ## $at = 80B90000
/* 00BB8 80B8F638 C4241030 */  lwc1    $f4, %lo(D_80B91030)($at)  
/* 00BBC 80B8F63C 46040082 */  mul.s   $f2, $f0, $f4              
/* 00BC0 80B8F640 E6020058 */  swc1    $f2, 0x0058($s0)           ## 00000058
/* 00BC4 80B8F644 E6020050 */  swc1    $f2, 0x0050($s0)           ## 00000050
/* 00BC8 80B8F648 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BCC 80B8F64C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00BD0 80B8F650 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00BD4 80B8F654 03E00008 */  jr      $ra                        
/* 00BD8 80B8F658 00000000 */  nop



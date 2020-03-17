glabel func_8086C9F0
/* 00D50 8086C9F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D54 8086C9F4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D58 8086C9F8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D5C 8086C9FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D60 8086CA00 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 00D64 8086CA04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D68 8086CA08 24840028 */  addiu   $a0, $a0, 0x0028           ## $a0 = 00000028
/* 00D6C 8086CA0C 15C00010 */  bne     $t6, $zero, .L8086CA50     
/* 00D70 8086CA10 3C014296 */  lui     $at, 0x4296                ## $at = 42960000
/* 00D74 8086CA14 8E05000C */  lw      $a1, 0x000C($s0)           ## 0000000C
/* 00D78 8086CA18 0C01DE80 */  jal     Math_ApproxF
              
/* 00D7C 8086CA1C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00D80 8086CA20 10400006 */  beq     $v0, $zero, .L8086CA3C     
/* 00D84 8086CA24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00D88 8086CA28 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 00D8C 8086CA2C 92050168 */  lbu     $a1, 0x0168($s0)           ## 00000168
/* 00D90 8086CA30 3C0F8087 */  lui     $t7, %hi(func_8086C9A8)    ## $t7 = 80870000
/* 00D94 8086CA34 25EFC9A8 */  addiu   $t7, $t7, %lo(func_8086C9A8) ## $t7 = 8086C9A8
/* 00D98 8086CA38 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L8086CA3C:
/* 00D9C 8086CA3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DA0 8086CA40 0C00BE52 */  jal     func_8002F948              
/* 00DA4 8086CA44 2405205E */  addiu   $a1, $zero, 0x205E         ## $a1 = 0000205E
/* 00DA8 8086CA48 10000011 */  beq     $zero, $zero, .L8086CA90   
/* 00DAC 8086CA4C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L8086CA50:
/* 00DB0 8086CA50 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00DB4 8086CA54 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
/* 00DB8 8086CA58 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00DBC 8086CA5C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00DC0 8086CA60 46062200 */  add.s   $f8, $f4, $f6              
/* 00DC4 8086CA64 44054000 */  mfc1    $a1, $f8                   
/* 00DC8 8086CA68 0C01DE80 */  jal     Math_ApproxF
              
/* 00DCC 8086CA6C 00000000 */  nop
/* 00DD0 8086CA70 10400004 */  beq     $v0, $zero, .L8086CA84     
/* 00DD4 8086CA74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DD8 8086CA78 3C188087 */  lui     $t8, %hi(func_8086CABC)    ## $t8 = 80870000
/* 00DDC 8086CA7C 2718CABC */  addiu   $t8, $t8, %lo(func_8086CABC) ## $t8 = 8086CABC
/* 00DE0 8086CA80 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
.L8086CA84:
/* 00DE4 8086CA84 0C00BE52 */  jal     func_8002F948              
/* 00DE8 8086CA88 2405205E */  addiu   $a1, $zero, 0x205E         ## $a1 = 0000205E
/* 00DEC 8086CA8C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
.L8086CA90:
/* 00DF0 8086CA90 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00DF4 8086CA94 4600540D */  trunc.w.s $f16, $f10                 
/* 00DF8 8086CA98 8D2A07C0 */  lw      $t2, 0x07C0($t1)           ## 000007C0
/* 00DFC 8086CA9C 44088000 */  mfc1    $t0, $f16                  
/* 00E00 8086CAA0 8D4B0028 */  lw      $t3, 0x0028($t2)           ## 00000028
/* 00E04 8086CAA4 A5680072 */  sh      $t0, 0x0072($t3)           ## 00000072
/* 00E08 8086CAA8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E0C 8086CAAC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00E10 8086CAB0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00E14 8086CAB4 03E00008 */  jr      $ra                        
/* 00E18 8086CAB8 00000000 */  nop



glabel func_809F4CB4
/* 019F4 809F4CB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019F8 809F4CB8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 019FC 809F4CBC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01A00 809F4CC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01A04 809F4CC4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01A08 809F4CC8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01A0C 809F4CCC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01A10 809F4CD0 860E025A */  lh      $t6, 0x025A($s0)           ## 0000025A
/* 01A14 809F4CD4 55C00010 */  bnel    $t6, $zero, .L809F4D18     
/* 01A18 809F4CD8 86090264 */  lh      $t1, 0x0264($s0)           ## 00000264
/* 01A1C 809F4CDC 860F0274 */  lh      $t7, 0x0274($s0)           ## 00000274
/* 01A20 809F4CE0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01A24 809F4CE4 3C08809F */  lui     $t0, %hi(func_809F5478)    ## $t0 = 809F0000
/* 01A28 809F4CE8 15E10007 */  bne     $t7, $at, .L809F4D08       
/* 01A2C 809F4CEC 25085478 */  addiu   $t0, $t0, %lo(func_809F5478) ## $t0 = 809F5478
/* 01A30 809F4CF0 3C19809F */  lui     $t9, %hi(func_809F4E18)    ## $t9 = 809F0000
/* 01A34 809F4CF4 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01A38 809F4CF8 27394E18 */  addiu   $t9, $t9, %lo(func_809F4E18) ## $t9 = 809F4E18
/* 01A3C 809F4CFC A6180274 */  sh      $t8, 0x0274($s0)           ## 00000274
/* 01A40 809F4D00 10000040 */  beq     $zero, $zero, .L809F4E04   
/* 01A44 809F4D04 AE190214 */  sw      $t9, 0x0214($s0)           ## 00000214
.L809F4D08:
/* 01A48 809F4D08 A6000274 */  sh      $zero, 0x0274($s0)         ## 00000274
/* 01A4C 809F4D0C 1000003D */  beq     $zero, $zero, .L809F4E04   
/* 01A50 809F4D10 AE080214 */  sw      $t0, 0x0214($s0)           ## 00000214
/* 01A54 809F4D14 86090264 */  lh      $t1, 0x0264($s0)           ## 00000264
.L809F4D18:
/* 01A58 809F4D18 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01A5C 809F4D1C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 01A60 809F4D20 1120001B */  beq     $t1, $zero, .L809F4D90     
/* 01A64 809F4D24 24071388 */  addiu   $a3, $zero, 0x1388         ## $a3 = 00001388
/* 01A68 809F4D28 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 01A6C 809F4D2C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01A70 809F4D30 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01A74 809F4D34 860A0264 */  lh      $t2, 0x0264($s0)           ## 00000264
/* 01A78 809F4D38 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01A7C 809F4D3C 15410031 */  bne     $t2, $at, .L809F4E04       
/* 01A80 809F4D40 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01A84 809F4D44 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 01A88 809F4D48 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01A8C 809F4D4C 00000000 */  nop
/* 01A90 809F4D50 4600010D */  trunc.w.s $f4, $f0                   
/* 01A94 809F4D54 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01A98 809F4D58 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 01A9C 809F4D5C 86190272 */  lh      $t9, 0x0272($s0)           ## 00000272
/* 01AA0 809F4D60 440C2000 */  mfc1    $t4, $f4                   
/* 01AA4 809F4D64 00194023 */  subu    $t0, $zero, $t9            
/* 01AA8 809F4D68 000C6C00 */  sll     $t5, $t4, 16               
/* 01AAC 809F4D6C 000D7403 */  sra     $t6, $t5, 16               
/* 01AB0 809F4D70 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 01AB4 809F4D74 A6080272 */  sh      $t0, 0x0272($s0)           ## 00000272
/* 01AB8 809F4D78 46803220 */  cvt.s.w $f8, $f6                   
/* 01ABC 809F4D7C 460A4400 */  add.s   $f16, $f8, $f10            
/* 01AC0 809F4D80 4600848D */  trunc.w.s $f18, $f16                 
/* 01AC4 809F4D84 44189000 */  mfc1    $t8, $f18                  
/* 01AC8 809F4D88 1000001E */  beq     $zero, $zero, .L809F4E04   
/* 01ACC 809F4D8C A618025C */  sh      $t8, 0x025C($s0)           ## 0000025C
.L809F4D90:
/* 01AD0 809F4D90 8602025C */  lh      $v0, 0x025C($s0)           ## 0000025C
/* 01AD4 809F4D94 5040001C */  beql    $v0, $zero, .L809F4E08     
/* 01AD8 809F4D98 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01ADC 809F4D9C 860A0272 */  lh      $t2, 0x0272($s0)           ## 00000272
/* 01AE0 809F4DA0 860900B6 */  lh      $t1, 0x00B6($s0)           ## 000000B6
/* 01AE4 809F4DA4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01AE8 809F4DA8 000A5AC0 */  sll     $t3, $t2, 11               
/* 01AEC 809F4DAC 012B6021 */  addu    $t4, $t1, $t3              
/* 01AF0 809F4DB0 14410014 */  bne     $v0, $at, .L809F4E04       
/* 01AF4 809F4DB4 A60C00B6 */  sh      $t4, 0x00B6($s0)           ## 000000B6
/* 01AF8 809F4DB8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01AFC 809F4DBC 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 01B00 809F4DC0 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01B04 809F4DC4 00000000 */  nop
/* 01B08 809F4DC8 4600010D */  trunc.w.s $f4, $f0                   
/* 01B0C 809F4DCC 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01B10 809F4DD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 01B14 809F4DD4 440E2000 */  mfc1    $t6, $f4                   
/* 01B18 809F4DD8 00000000 */  nop
/* 01B1C 809F4DDC 000E7C00 */  sll     $t7, $t6, 16               
/* 01B20 809F4DE0 000FC403 */  sra     $t8, $t7, 16               
/* 01B24 809F4DE4 44983000 */  mtc1    $t8, $f6                   ## $f6 = 0.00
/* 01B28 809F4DE8 00000000 */  nop
/* 01B2C 809F4DEC 46803220 */  cvt.s.w $f8, $f6                   
/* 01B30 809F4DF0 460A4400 */  add.s   $f16, $f8, $f10            
/* 01B34 809F4DF4 4600848D */  trunc.w.s $f18, $f16                 
/* 01B38 809F4DF8 44089000 */  mfc1    $t0, $f18                  
/* 01B3C 809F4DFC 00000000 */  nop
/* 01B40 809F4E00 A6080264 */  sh      $t0, 0x0264($s0)           ## 00000264
.L809F4E04:
/* 01B44 809F4E04 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809F4E08:
/* 01B48 809F4E08 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01B4C 809F4E0C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01B50 809F4E10 03E00008 */  jr      $ra                        
/* 01B54 809F4E14 00000000 */  nop

glabel func_80AD4CA4
/* 011A4 80AD4CA4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 011A8 80AD4CA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 011AC 80AD4CAC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 011B0 80AD4CB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 011B4 80AD4CB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 011B8 80AD4CB8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 011BC 80AD4CBC 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 011C0 80AD4CC0 86030196 */  lh      $v1, 0x0196($s0)           ## 00000196
/* 011C4 80AD4CC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011C8 80AD4CC8 3C0580AD */  lui     $a1, %hi(D_80AD7104)       ## $a1 = 80AD0000
/* 011CC 80AD4CCC 10600002 */  beq     $v1, $zero, .L80AD4CD8     
/* 011D0 80AD4CD0 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 011D4 80AD4CD4 A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
.L80AD4CD8:
/* 011D8 80AD4CD8 0C00B6EC */  jal     func_8002DBB0              
/* 011DC 80AD4CDC 24A57104 */  addiu   $a1, $a1, %lo(D_80AD7104)  ## $a1 = 80AD7104
/* 011E0 80AD4CE0 3C0180AD */  lui     $at, %hi(D_80AD7254)       ## $at = 80AD0000
/* 011E4 80AD4CE4 C4247254 */  lwc1    $f4, %lo(D_80AD7254)($at)  
/* 011E8 80AD4CE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 011EC 80AD4CEC 3C0580AD */  lui     $a1, %hi(D_80AD7104)       ## $a1 = 80AD0000
/* 011F0 80AD4CF0 4600203C */  c.lt.s  $f4, $f0                   
/* 011F4 80AD4CF4 00004025 */  or      $t0, $zero, $zero          ## $t0 = 00000000
/* 011F8 80AD4CF8 45020015 */  bc1fl   .L80AD4D50                 
/* 011FC 80AD4CFC 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
/* 01200 80AD4D00 0C00B6B0 */  jal     func_8002DAC0              
/* 01204 80AD4D04 24A57104 */  addiu   $a1, $a1, %lo(D_80AD7104)  ## $a1 = 80AD7104
/* 01208 80AD4D08 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
/* 0120C 80AD4D0C 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 01210 80AD4D10 00627823 */  subu    $t7, $v1, $v0              
/* 01214 80AD4D14 01E1C021 */  addu    $t8, $t7, $at              
/* 01218 80AD4D18 0018CC00 */  sll     $t9, $t8, 16               
/* 0121C 80AD4D1C 00194C03 */  sra     $t1, $t9, 16               
/* 01220 80AD4D20 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 01224 80AD4D24 3C0180AD */  lui     $at, %hi(D_80AD7258)       ## $at = 80AD0000
/* 01228 80AD4D28 C42A7258 */  lwc1    $f10, %lo(D_80AD7258)($at) 
/* 0122C 80AD4D2C 46803220 */  cvt.s.w $f8, $f6                   
/* 01230 80AD4D30 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01234 80AD4D34 4600848D */  trunc.w.s $f18, $f16                 
/* 01238 80AD4D38 44089000 */  mfc1    $t0, $f18                  
/* 0123C 80AD4D3C 00000000 */  nop
/* 01240 80AD4D40 00084400 */  sll     $t0, $t0, 16               
/* 01244 80AD4D44 10000002 */  beq     $zero, $zero, .L80AD4D50   
/* 01248 80AD4D48 00084403 */  sra     $t0, $t0, 16               
/* 0124C 80AD4D4C 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
.L80AD4D50:
/* 01250 80AD4D50 00682823 */  subu    $a1, $v1, $t0              
/* 01254 80AD4D54 00052C00 */  sll     $a1, $a1, 16               
/* 01258 80AD4D58 00052C03 */  sra     $a1, $a1, 16               
/* 0125C 80AD4D5C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01260 80AD4D60 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 01264 80AD4D64 0C01E1EF */  jal     Math_SmoothScaleMaxS
              
/* 01268 80AD4D68 24070400 */  addiu   $a3, $zero, 0x0400         ## $a3 = 00000400
/* 0126C 80AD4D6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01270 80AD4D70 0C2B5155 */  jal     func_80AD4554              
/* 01274 80AD4D74 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01278 80AD4D78 86040196 */  lh      $a0, 0x0196($s0)           ## 00000196
/* 0127C 80AD4D7C 860B00B6 */  lh      $t3, 0x00B6($s0)           ## 000000B6
/* 01280 80AD4D80 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 01284 80AD4D84 000422C0 */  sll     $a0, $a0, 11               
/* 01288 80AD4D88 00042400 */  sll     $a0, $a0, 16               
/* 0128C 80AD4D8C 01616021 */  addu    $t4, $t3, $at              
/* 01290 80AD4D90 A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 01294 80AD4D94 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01298 80AD4D98 00042403 */  sra     $a0, $a0, 16               
/* 0129C 80AD4D9C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 012A0 80AD4DA0 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 012A4 80AD4DA4 00000000 */  nop
/* 012A8 80AD4DA8 46040182 */  mul.s   $f6, $f0, $f4              
/* 012AC 80AD4DAC E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 012B0 80AD4DB0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 012B4 80AD4DB4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 012B8 80AD4DB8 C7AA0024 */  lwc1    $f10, 0x0024($sp)          
/* 012BC 80AD4DBC C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 012C0 80AD4DC0 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 012C4 80AD4DC4 46005402 */  mul.s   $f16, $f10, $f0            
/* 012C8 80AD4DC8 46104481 */  sub.s   $f18, $f8, $f16            
/* 012CC 80AD4DCC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 012D0 80AD4DD0 E6120024 */  swc1    $f18, 0x0024($s0)          ## 00000024
/* 012D4 80AD4DD4 C7A60024 */  lwc1    $f6, 0x0024($sp)           
/* 012D8 80AD4DD8 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 012DC 80AD4DDC 860D0196 */  lh      $t5, 0x0196($s0)           ## 00000196
/* 012E0 80AD4DE0 46003282 */  mul.s   $f10, $f6, $f0             
/* 012E4 80AD4DE4 3C0180AD */  lui     $at, %hi(D_80AD725C)       ## $at = 80AD0000
/* 012E8 80AD4DE8 460A2200 */  add.s   $f8, $f4, $f10             
/* 012EC 80AD4DEC 11A00008 */  beq     $t5, $zero, .L80AD4E10     
/* 012F0 80AD4DF0 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 012F4 80AD4DF4 C430725C */  lwc1    $f16, %lo(D_80AD725C)($at) 
/* 012F8 80AD4DF8 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 012FC 80AD4DFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01300 80AD4E00 4612803C */  c.lt.s  $f16, $f18                 
/* 01304 80AD4E04 00000000 */  nop
/* 01308 80AD4E08 45000005 */  bc1f    .L80AD4E20                 
/* 0130C 80AD4E0C 00000000 */  nop
.L80AD4E10:
/* 01310 80AD4E10 0C2B5064 */  jal     func_80AD4190              
/* 01314 80AD4E14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01318 80AD4E18 10000004 */  beq     $zero, $zero, .L80AD4E2C   
/* 0131C 80AD4E1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD4E20:
/* 01320 80AD4E20 0C2B511C */  jal     func_80AD4470              
/* 01324 80AD4E24 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01328 80AD4E28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD4E2C:
/* 0132C 80AD4E2C 0C00BE5D */  jal     func_8002F974              
/* 01330 80AD4E30 24053072 */  addiu   $a1, $zero, 0x3072         ## $a1 = 00003072
/* 01334 80AD4E34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01338 80AD4E38 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0133C 80AD4E3C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01340 80AD4E40 03E00008 */  jr      $ra                        
/* 01344 80AD4E44 00000000 */  nop



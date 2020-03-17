glabel EnIceHono_Update
/* 00C38 80A73C28 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00C3C 80A73C2C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00C40 80A73C30 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00C44 80A73C34 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 00C48 80A73C38 84820152 */  lh      $v0, 0x0152($a0)           ## 00000152
/* 00C4C 80A73C3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C50 80A73C40 24051048 */  addiu   $a1, $zero, 0x1048         ## $a1 = 00001048
/* 00C54 80A73C44 18400002 */  blez    $v0, .L80A73C50            
/* 00C58 80A73C48 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00C5C 80A73C4C A48E0152 */  sh      $t6, 0x0152($a0)           ## 00000152
.L80A73C50:
/* 00C60 80A73C50 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00C64 80A73C54 54400005 */  bnel    $v0, $zero, .L80A73C6C     
/* 00C68 80A73C58 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00C6C 80A73C5C 0C00BE3C */  jal     func_8002F8F0              
/* 00C70 80A73C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C74 80A73C64 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00C78 80A73C68 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
.L80A73C6C:
/* 00C7C 80A73C6C 50410004 */  beql    $v0, $at, .L80A73C80       
/* 00C80 80A73C70 86190156 */  lh      $t9, 0x0156($s0)           ## 00000156
/* 00C84 80A73C74 5440005B */  bnel    $v0, $zero, .L80A73DE4     
/* 00C88 80A73C78 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
/* 00C8C 80A73C7C 86190156 */  lh      $t9, 0x0156($s0)           ## 00000156
.L80A73C80:
/* 00C90 80A73C80 860F0154 */  lh      $t7, 0x0154($s0)           ## 00000154
/* 00C94 80A73C84 27284000 */  addiu   $t0, $t9, 0x4000           ## $t0 = 00004000
/* 00C98 80A73C88 A6080156 */  sh      $t0, 0x0156($s0)           ## 00000156
/* 00C9C 80A73C8C 25F81111 */  addiu   $t8, $t7, 0x1111           ## $t8 = 00001111
/* 00CA0 80A73C90 A6180154 */  sh      $t8, 0x0154($s0)           ## 00000154
/* 00CA4 80A73C94 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00CA8 80A73C98 86040156 */  lh      $a0, 0x0156($s0)           ## 00000156
/* 00CAC 80A73C9C E7A00030 */  swc1    $f0, 0x0030($sp)           
/* 00CB0 80A73CA0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00CB4 80A73CA4 86040154 */  lh      $a0, 0x0154($s0)           ## 00000154
/* 00CB8 80A73CA8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CBC 80A73CAC E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 00CC0 80A73CB0 3C013E00 */  lui     $at, 0x3E00                ## $at = 3E000000
/* 00CC4 80A73CB4 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.12
/* 00CC8 80A73CB8 C7A40034 */  lwc1    $f4, 0x0034($sp)           
/* 00CCC 80A73CBC 3C0180A7 */  lui     $at, %hi(D_80A74160)       ## $at = 80A70000
/* 00CD0 80A73CC0 C4304160 */  lwc1    $f16, %lo(D_80A74160)($at) 
/* 00CD4 80A73CC4 46062202 */  mul.s   $f8, $f4, $f6              
/* 00CD8 80A73CC8 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 00CDC 80A73CCC 3C0180A7 */  lui     $at, %hi(D_80A74164)       ## $at = 80A70000
/* 00CE0 80A73CD0 C4264164 */  lwc1    $f6, %lo(D_80A74164)($at)  
/* 00CE4 80A73CD4 46105482 */  mul.s   $f18, $f10, $f16           
/* 00CE8 80A73CD8 3C0180A7 */  lui     $at, %hi(D_80A74168)       ## $at = 80A70000
/* 00CEC 80A73CDC 3C0480A7 */  lui     $a0, %hi(D_80A740BC)       ## $a0 = 80A70000
/* 00CF0 80A73CE0 46060282 */  mul.s   $f10, $f0, $f6             
/* 00CF4 80A73CE4 46124100 */  add.s   $f4, $f8, $f18             
/* 00CF8 80A73CE8 C4284168 */  lwc1    $f8, %lo(D_80A74168)($at)  
/* 00CFC 80A73CEC 3C0180A7 */  lui     $at, %hi(D_80A7416C)       ## $at = 80A70000
/* 00D00 80A73CF0 C432416C */  lwc1    $f18, %lo(D_80A7416C)($at) 
/* 00D04 80A73CF4 46045400 */  add.s   $f16, $f10, $f4            
/* 00D08 80A73CF8 3C0180A7 */  lui     $at, %hi(D_80A74170)       ## $at = 80A70000
/* 00D0C 80A73CFC 46088080 */  add.s   $f2, $f16, $f8             
/* 00D10 80A73D00 4602903C */  c.lt.s  $f18, $f2                  
/* 00D14 80A73D04 46001306 */  mov.s   $f12, $f2                  
/* 00D18 80A73D08 45030007 */  bc1tl   .L80A73D28                 
/* 00D1C 80A73D0C 460062A1 */  cvt.d.s $f10, $f12                 
/* 00D20 80A73D10 C4264170 */  lwc1    $f6, %lo(D_80A74170)($at)  
/* 00D24 80A73D14 4606103C */  c.lt.s  $f2, $f6                   
/* 00D28 80A73D18 00000000 */  nop
/* 00D2C 80A73D1C 45020009 */  bc1fl   .L80A73D44                 
/* 00D30 80A73D20 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00D34 80A73D24 460062A1 */  cvt.d.s $f10, $f12                 
.L80A73D28:
/* 00D38 80A73D28 248440BC */  addiu   $a0, $a0, %lo(D_80A740BC)  ## $a0 = 80A740BC
/* 00D3C 80A73D2C 44075000 */  mfc1    $a3, $f10                  
/* 00D40 80A73D30 44065800 */  mfc1    $a2, $f11                  
/* 00D44 80A73D34 0C00084C */  jal     osSyncPrintf
              
/* 00D48 80A73D38 E7AC003C */  swc1    $f12, 0x003C($sp)          
/* 00D4C 80A73D3C C7AC003C */  lwc1    $f12, 0x003C($sp)          
/* 00D50 80A73D40 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
.L80A73D44:
/* 00D54 80A73D44 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00D58 80A73D48 3C01431B */  lui     $at, 0x431B                ## $at = 431B0000
/* 00D5C 80A73D4C 4600240D */  trunc.w.s $f16, $f4                  
/* 00D60 80A73D50 44812000 */  mtc1    $at, $f4                   ## $f4 = 155.00
/* 00D64 80A73D54 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00D68 80A73D58 4600448D */  trunc.w.s $f18, $f8                  
/* 00D6C 80A73D5C 44058000 */  mfc1    $a1, $f16                  
/* 00D70 80A73D60 460C2402 */  mul.s   $f16, $f4, $f12            
/* 00D74 80A73D64 3C014352 */  lui     $at, 0x4352                ## $at = 43520000
/* 00D78 80A73D68 44069000 */  mfc1    $a2, $f18                  
/* 00D7C 80A73D6C 44819000 */  mtc1    $at, $f18                  ## $f18 = 210.00
/* 00D80 80A73D70 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00D84 80A73D74 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 00D88 80A73D78 4600328D */  trunc.w.s $f10, $f6                  
/* 00D8C 80A73D7C 460C9182 */  mul.s   $f6, $f18, $f12            
/* 00D90 80A73D80 00063400 */  sll     $a2, $a2, 16               
/* 00D94 80A73D84 00063403 */  sra     $a2, $a2, 16               
/* 00D98 80A73D88 44075000 */  mfc1    $a3, $f10                  
/* 00D9C 80A73D8C 24C6000A */  addiu   $a2, $a2, 0x000A           ## $a2 = 0000000A
/* 00DA0 80A73D90 00063400 */  sll     $a2, $a2, 16               
/* 00DA4 80A73D94 4600820D */  trunc.w.s $f8, $f16                  
/* 00DA8 80A73D98 460C2402 */  mul.s   $f16, $f4, $f12            
/* 00DAC 80A73D9C 24080578 */  addiu   $t0, $zero, 0x0578         ## $t0 = 00000578
/* 00DB0 80A73DA0 00052C00 */  sll     $a1, $a1, 16               
/* 00DB4 80A73DA4 440D4000 */  mfc1    $t5, $f8                   
/* 00DB8 80A73DA8 00073C00 */  sll     $a3, $a3, 16               
/* 00DBC 80A73DAC 00073C03 */  sra     $a3, $a3, 16               
/* 00DC0 80A73DB0 4600328D */  trunc.w.s $f10, $f6                  
/* 00DC4 80A73DB4 00052C03 */  sra     $a1, $a1, 16               
/* 00DC8 80A73DB8 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00DCC 80A73DBC 4600820D */  trunc.w.s $f8, $f16                  
/* 00DD0 80A73DC0 440F5000 */  mfc1    $t7, $f10                  
/* 00DD4 80A73DC4 00063403 */  sra     $a2, $a2, 16               
/* 00DD8 80A73DC8 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 00DDC 80A73DCC 44194000 */  mfc1    $t9, $f8                   
/* 00DE0 80A73DD0 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00DE4 80A73DD4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00DE8 80A73DD8 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 00DEC 80A73DDC AFB90018 */  sw      $t9, 0x0018($sp)           
/* 00DF0 80A73DE0 8E02014C */  lw      $v0, 0x014C($s0)           ## 0000014C
.L80A73DE4:
/* 00DF4 80A73DE4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DF8 80A73DE8 50400004 */  beql    $v0, $zero, .L80A73DFC     
/* 00DFC 80A73DEC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00E00 80A73DF0 0040F809 */  jalr    $ra, $v0                   
/* 00E04 80A73DF4 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 00E08 80A73DF8 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A73DFC:
/* 00E0C 80A73DFC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00E10 80A73E00 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 00E14 80A73E04 03E00008 */  jr      $ra                        
/* 00E18 80A73E08 00000000 */  nop



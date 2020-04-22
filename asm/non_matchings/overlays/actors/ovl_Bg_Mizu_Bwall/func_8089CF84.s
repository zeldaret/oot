glabel func_8089CF84
/* 00B04 8089CF84 27BDFE90 */  addiu   $sp, $sp, 0xFE90           ## $sp = FFFFFE90
/* 00B08 8089CF88 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 00B0C 8089CF8C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00B10 8089CF90 AFBF007C */  sw      $ra, 0x007C($sp)           
/* 00B14 8089CF94 AFB60078 */  sw      $s6, 0x0078($sp)           
/* 00B18 8089CF98 AFB50074 */  sw      $s5, 0x0074($sp)           
/* 00B1C 8089CF9C AFB40070 */  sw      $s4, 0x0070($sp)           
/* 00B20 8089CFA0 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 00B24 8089CFA4 AFB10064 */  sw      $s1, 0x0064($sp)           
/* 00B28 8089CFA8 AFB00060 */  sw      $s0, 0x0060($sp)           
/* 00B2C 8089CFAC F7BE0058 */  sdc1    $f30, 0x0058($sp)          
/* 00B30 8089CFB0 F7BC0050 */  sdc1    $f28, 0x0050($sp)          
/* 00B34 8089CFB4 F7BA0048 */  sdc1    $f26, 0x0048($sp)          
/* 00B38 8089CFB8 F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 00B3C 8089CFBC F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 00B40 8089CFC0 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 00B44 8089CFC4 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00B48 8089CFC8 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00B4C 8089CFCC 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 00B50 8089CFD0 46000706 */  mov.s   $f28, $f0                  
/* 00B54 8089CFD4 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00B58 8089CFD8 864400B6 */  lh      $a0, 0x00B6($s2)           ## 000000B6
/* 00B5C 8089CFDC 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00B60 8089CFE0 4481D000 */  mtc1    $at, $f26                  ## $f26 = 120.00
/* 00B64 8089CFE4 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00B68 8089CFE8 4481C000 */  mtc1    $at, $f24                  ## $f24 = 40.00
/* 00B6C 8089CFEC 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00B70 8089CFF0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 80.00
/* 00B74 8089CFF4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00B78 8089CFF8 46000786 */  mov.s   $f30, $f0                  
/* 00B7C 8089CFFC 27B00090 */  addiu   $s0, $sp, 0x0090           ## $s0 = FFFFFF20
/* 00B80 8089D000 27B50144 */  addiu   $s5, $sp, 0x0144           ## $s5 = FFFFFFD4
/* 00B84 8089D004 24140003 */  addiu   $s4, $zero, 0x0003         ## $s4 = 00000003
/* 00B88 8089D008 24130002 */  addiu   $s3, $zero, 0x0002         ## $s3 = 00000002
/* 00B8C 8089D00C 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
/* 00B90 8089D010 9642001C */  lhu     $v0, 0x001C($s2)           ## 0000001C
.L8089D014:
/* 00B94 8089D014 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00B98 8089D018 10400009 */  beq     $v0, $zero, .L8089D040     
/* 00B9C 8089D01C 00000000 */  nop
/* 00BA0 8089D020 10510014 */  beq     $v0, $s1, .L8089D074       
/* 00BA4 8089D024 00000000 */  nop
/* 00BA8 8089D028 10530021 */  beq     $v0, $s3, .L8089D0B0       
/* 00BAC 8089D02C 00000000 */  nop
/* 00BB0 8089D030 1054001F */  beq     $v0, $s4, .L8089D0B0       
/* 00BB4 8089D034 00000000 */  nop
/* 00BB8 8089D038 1000001D */  beq     $zero, $zero, .L8089D0B0   
/* 00BBC 8089D03C 00000000 */  nop
.L8089D040:
/* 00BC0 8089D040 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BC4 8089D044 00000000 */  nop
/* 00BC8 8089D048 46160102 */  mul.s   $f4, $f0, $f22             
/* 00BCC 8089D04C 46182181 */  sub.s   $f6, $f4, $f24             
/* 00BD0 8089D050 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BD4 8089D054 E6060000 */  swc1    $f6, 0x0000($s0)           ## FFFFFF20
/* 00BD8 8089D058 46140202 */  mul.s   $f8, $f0, $f20             
/* 00BDC 8089D05C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BE0 8089D060 E6080004 */  swc1    $f8, 0x0004($s0)           ## FFFFFF24
/* 00BE4 8089D064 46160282 */  mul.s   $f10, $f0, $f22            
/* 00BE8 8089D068 46185401 */  sub.s   $f16, $f10, $f24           
/* 00BEC 8089D06C 1000001E */  beq     $zero, $zero, .L8089D0E8   
/* 00BF0 8089D070 E6100008 */  swc1    $f16, 0x0008($s0)          ## FFFFFF28
.L8089D074:
/* 00BF4 8089D074 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00BF8 8089D078 00000000 */  nop
/* 00BFC 8089D07C 46140482 */  mul.s   $f18, $f0, $f20            
/* 00C00 8089D080 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C04 8089D084 E6120000 */  swc1    $f18, 0x0000($s0)          ## FFFFFF20
/* 00C08 8089D088 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00C0C 8089D08C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00C10 8089D090 00000000 */  nop
/* 00C14 8089D094 46040182 */  mul.s   $f6, $f0, $f4              
/* 00C18 8089D098 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C1C 8089D09C E6060004 */  swc1    $f6, 0x0004($s0)           ## FFFFFF24
/* 00C20 8089D0A0 46160202 */  mul.s   $f8, $f0, $f22             
/* 00C24 8089D0A4 46184281 */  sub.s   $f10, $f8, $f24            
/* 00C28 8089D0A8 1000000F */  beq     $zero, $zero, .L8089D0E8   
/* 00C2C 8089D0AC E60A0008 */  swc1    $f10, 0x0008($s0)          ## FFFFFF28
.L8089D0B0:
/* 00C30 8089D0B0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C34 8089D0B4 00000000 */  nop
/* 00C38 8089D0B8 461A0402 */  mul.s   $f16, $f0, $f26            
/* 00C3C 8089D0BC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00C40 8089D0C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 60.00
/* 00C44 8089D0C4 00000000 */  nop
/* 00C48 8089D0C8 46128101 */  sub.s   $f4, $f16, $f18            
/* 00C4C 8089D0CC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C50 8089D0D0 E6040000 */  swc1    $f4, 0x0000($s0)           ## FFFFFF20
/* 00C54 8089D0D4 461A0182 */  mul.s   $f6, $f0, $f26             
/* 00C58 8089D0D8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C5C 8089D0DC E6060004 */  swc1    $f6, 0x0004($s0)           ## FFFFFF24
/* 00C60 8089D0E0 46140202 */  mul.s   $f8, $f0, $f20             
/* 00C64 8089D0E4 E6080008 */  swc1    $f8, 0x0008($s0)           ## FFFFFF28
.L8089D0E8:
/* 00C68 8089D0E8 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF2C
/* 00C6C 8089D0EC 0215082B */  sltu    $at, $s0, $s5              
/* 00C70 8089D0F0 5420FFC8 */  bnel    $at, $zero, .L8089D014     
/* 00C74 8089D0F4 9642001C */  lhu     $v0, 0x001C($s2)           ## 0000001C
/* 00C78 8089D0F8 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 00C7C 8089D0FC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 240.00
/* 00C80 8089D100 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00C84 8089D104 4481B000 */  mtc1    $at, $f22                  ## $f22 = 50.00
/* 00C88 8089D108 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00C8C 8089D10C 4481A000 */  mtc1    $at, $f20                  ## $f20 = 120.00
/* 00C90 8089D110 26510024 */  addiu   $s1, $s2, 0x0024           ## $s1 = 00000024
/* 00C94 8089D114 27B00090 */  addiu   $s0, $sp, 0x0090           ## $s0 = FFFFFF20
/* 00C98 8089D118 26D51C24 */  addiu   $s5, $s6, 0x1C24           ## $s5 = 00001C24
/* 00C9C 8089D11C 27B40144 */  addiu   $s4, $sp, 0x0144           ## $s4 = FFFFFFD4
/* 00CA0 8089D120 27B30154 */  addiu   $s3, $sp, 0x0154           ## $s3 = FFFFFFE4
/* 00CA4 8089D124 C6020008 */  lwc1    $f2, 0x0008($s0)           ## FFFFFF28
.L8089D128:
/* 00CA8 8089D128 C6000000 */  lwc1    $f0, 0x0000($s0)           ## FFFFFF20
/* 00CAC 8089D12C C62A0000 */  lwc1    $f10, 0x0000($s1)          ## 00000024
/* 00CB0 8089D130 461C1402 */  mul.s   $f16, $f2, $f28            
/* 00CB4 8089D134 46105480 */  add.s   $f18, $f10, $f16           
/* 00CB8 8089D138 461E0102 */  mul.s   $f4, $f0, $f30             
/* 00CBC 8089D13C 46049180 */  add.s   $f6, $f18, $f4             
/* 00CC0 8089D140 461E1102 */  mul.s   $f4, $f2, $f30             
/* 00CC4 8089D144 E7A60154 */  swc1    $f6, 0x0154($sp)           
/* 00CC8 8089D148 C62A0004 */  lwc1    $f10, 0x0004($s1)          ## 00000028
/* 00CCC 8089D14C C6080004 */  lwc1    $f8, 0x0004($s0)           ## FFFFFF24
/* 00CD0 8089D150 460A4400 */  add.s   $f16, $f8, $f10            
/* 00CD4 8089D154 461C0202 */  mul.s   $f8, $f0, $f28             
/* 00CD8 8089D158 E7B00158 */  swc1    $f16, 0x0158($sp)          
/* 00CDC 8089D15C C6320008 */  lwc1    $f18, 0x0008($s1)          ## 0000002C
/* 00CE0 8089D160 46049180 */  add.s   $f6, $f18, $f4             
/* 00CE4 8089D164 46083281 */  sub.s   $f10, $f6, $f8             
/* 00CE8 8089D168 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00CEC 8089D16C E7AA015C */  swc1    $f10, 0x015C($sp)          
/* 00CF0 8089D170 46140402 */  mul.s   $f16, $f0, $f20            
/* 00CF4 8089D174 4600848D */  trunc.w.s $f18, $f16                 
/* 00CF8 8089D178 44129000 */  mfc1    $s2, $f18                  
/* 00CFC 8089D17C 00000000 */  nop
/* 00D00 8089D180 00129400 */  sll     $s2, $s2, 16               
/* 00D04 8089D184 00129403 */  sra     $s2, $s2, 16               
/* 00D08 8089D188 26520014 */  addiu   $s2, $s2, 0x0014           ## $s2 = 00000014
/* 00D0C 8089D18C 00129400 */  sll     $s2, $s2, 16               
/* 00D10 8089D190 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00D14 8089D194 00129403 */  sra     $s2, $s2, 16               
/* 00D18 8089D198 46180102 */  mul.s   $f4, $f0, $f24             
/* 00D1C 8089D19C 4406B000 */  mfc1    $a2, $f22                  
/* 00D20 8089D1A0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00D24 8089D1A4 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE4
/* 00D28 8089D1A8 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 00D2C 8089D1AC AFB20010 */  sw      $s2, 0x0010($sp)           
/* 00D30 8089D1B0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00D34 8089D1B4 4600218D */  trunc.w.s $f6, $f4                   
/* 00D38 8089D1B8 44183000 */  mfc1    $t8, $f6                   
/* 00D3C 8089D1BC 00000000 */  nop
/* 00D40 8089D1C0 0018CC00 */  sll     $t9, $t8, 16               
/* 00D44 8089D1C4 00194403 */  sra     $t0, $t9, 16               
/* 00D48 8089D1C8 25090014 */  addiu   $t1, $t0, 0x0014           ## $t1 = 00000014
/* 00D4C 8089D1CC 0C00CD20 */  jal     func_80033480              
/* 00D50 8089D1D0 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00D54 8089D1D4 C7A80158 */  lwc1    $f8, 0x0158($sp)           
/* 00D58 8089D1D8 C7AA015C */  lwc1    $f10, 0x015C($sp)          
/* 00D5C 8089D1DC 240A000B */  addiu   $t2, $zero, 0x000B         ## $t2 = 0000000B
/* 00D60 8089D1E0 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 00D64 8089D1E4 02A02025 */  or      $a0, $s5, $zero            ## $a0 = 00001C24
/* 00D68 8089D1E8 02C02825 */  or      $a1, $s6, $zero            ## $a1 = 00000000
/* 00D6C 8089D1EC 24060039 */  addiu   $a2, $zero, 0x0039         ## $a2 = 00000039
/* 00D70 8089D1F0 8FA70154 */  lw      $a3, 0x0154($sp)           
/* 00D74 8089D1F4 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00D78 8089D1F8 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00D7C 8089D1FC AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00D80 8089D200 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00D84 8089D204 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00D88 8089D208 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00D8C 8089D20C 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = FFFFFF2C
/* 00D90 8089D210 5614FFC5 */  bnel    $s0, $s4, .L8089D128       
/* 00D94 8089D214 C6020008 */  lwc1    $f2, 0x0008($s0)           ## FFFFFF34
/* 00D98 8089D218 8FBF007C */  lw      $ra, 0x007C($sp)           
/* 00D9C 8089D21C D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 00DA0 8089D220 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 00DA4 8089D224 D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 00DA8 8089D228 D7BA0048 */  ldc1    $f26, 0x0048($sp)          
/* 00DAC 8089D22C D7BC0050 */  ldc1    $f28, 0x0050($sp)          
/* 00DB0 8089D230 D7BE0058 */  ldc1    $f30, 0x0058($sp)          
/* 00DB4 8089D234 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 00DB8 8089D238 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 00DBC 8089D23C 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 00DC0 8089D240 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 00DC4 8089D244 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 00DC8 8089D248 8FB50074 */  lw      $s5, 0x0074($sp)           
/* 00DCC 8089D24C 8FB60078 */  lw      $s6, 0x0078($sp)           
/* 00DD0 8089D250 03E00008 */  jr      $ra                        
/* 00DD4 8089D254 27BD0170 */  addiu   $sp, $sp, 0x0170           ## $sp = 00000000

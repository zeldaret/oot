glabel func_80A13A08
/* 00998 80A13A08 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0099C 80A13A0C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 009A0 80A13A10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009A4 80A13A14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 009A8 80A13A18 24840170 */  addiu   $a0, $a0, 0x0170           ## $a0 = 00000170
/* 009AC 80A13A1C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 009B0 80A13A20 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009B4 80A13A24 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 009B8 80A13A28 860301BA */  lh      $v1, 0x01BA($s0)           ## 000001BA
/* 009BC 80A13A2C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 009C0 80A13A30 10600002 */  beq     $v1, $zero, .L80A13A3C     
/* 009C4 80A13A34 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 009C8 80A13A38 A60E01BA */  sh      $t6, 0x01BA($s0)           ## 000001BA
.L80A13A3C:
/* 009CC 80A13A3C 0C0295B2 */  jal     func_800A56C8              
/* 009D0 80A13A40 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 009D4 80A13A44 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009D8 80A13A48 AFA2003C */  sw      $v0, 0x003C($sp)           
/* 009DC 80A13A4C 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 009E0 80A13A50 44811000 */  mtc1    $at, $f2                   ## $f2 = 1.50
/* 009E4 80A13A54 920F01B9 */  lbu     $t7, 0x01B9($s0)           ## 000001B9
/* 009E8 80A13A58 46020102 */  mul.s   $f4, $f0, $f2              
/* 009EC 80A13A5C 46022180 */  add.s   $f6, $f4, $f2              
/* 009F0 80A13A60 15E0000E */  bne     $t7, $zero, .L80A13A9C     
/* 009F4 80A13A64 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 009F8 80A13A68 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 009FC 80A13A6C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00A00 80A13A70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A04 80A13A74 5301000A */  beql    $t8, $at, .L80A13AA0       
/* 00A08 80A13A78 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 00A0C 80A13A7C 0C284DE7 */  jal     func_80A1379C              
/* 00A10 80A13A80 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00A14 80A13A84 14400063 */  bne     $v0, $zero, .L80A13C14     
/* 00A18 80A13A88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A1C 80A13A8C 0C284E2E */  jal     func_80A138B8              
/* 00A20 80A13A90 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 00A24 80A13A94 54400060 */  bnel    $v0, $zero, .L80A13C18     
/* 00A28 80A13A98 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
.L80A13A9C:
/* 00A2C 80A13A9C 8FB9003C */  lw      $t9, 0x003C($sp)           
.L80A13AA0:
/* 00A30 80A13AA0 53200049 */  beql    $t9, $zero, .L80A13BC8     
/* 00A34 80A13AA4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00A38 80A13AA8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A3C 80A13AAC 00000000 */  nop
/* 00A40 80A13AB0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A44 80A13AB4 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00A48 80A13AB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A4C 80A13ABC 3C0180A1 */  lui     $at, %hi(D_80A15040)       ## $at = 80A10000
/* 00A50 80A13AC0 4608003C */  c.lt.s  $f0, $f8                   
/* 00A54 80A13AC4 00000000 */  nop
/* 00A58 80A13AC8 4500000A */  bc1f    .L80A13AF4                 
/* 00A5C 80A13ACC 00000000 */  nop
/* 00A60 80A13AD0 0C00B6B0 */  jal     func_8002DAC0              
/* 00A64 80A13AD4 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00A68 80A13AD8 00022C00 */  sll     $a1, $v0, 16               
/* 00A6C 80A13ADC 00052C03 */  sra     $a1, $a1, 16               
/* 00A70 80A13AE0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00A74 80A13AE4 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00A78 80A13AE8 24060300 */  addiu   $a2, $zero, 0x0300         ## $a2 = 00000300
/* 00A7C 80A13AEC 10000014 */  beq     $zero, $zero, .L80A13B40   
/* 00A80 80A13AF0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
.L80A13AF4:
/* 00A84 80A13AF4 C42A5040 */  lwc1    $f10, %lo(D_80A15040)($at) 
/* 00A88 80A13AF8 3C0144C0 */  lui     $at, 0x44C0                ## $at = 44C00000
/* 00A8C 80A13AFC 460A003C */  c.lt.s  $f0, $f10                  
/* 00A90 80A13B00 00000000 */  nop
/* 00A94 80A13B04 4502000E */  bc1fl   .L80A13B40                 
/* 00A98 80A13B08 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00A9C 80A13B0C 44816000 */  mtc1    $at, $f12                  ## $f12 = 20.00
/* 00AA0 80A13B10 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00AA4 80A13B14 00000000 */  nop
/* 00AA8 80A13B18 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00AAC 80A13B1C 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 00AB0 80A13B20 00000000 */  nop
/* 00AB4 80A13B24 468084A0 */  cvt.s.w $f18, $f16                 
/* 00AB8 80A13B28 46009100 */  add.s   $f4, $f18, $f0             
/* 00ABC 80A13B2C 4600218D */  trunc.w.s $f6, $f4                   
/* 00AC0 80A13B30 440A3000 */  mfc1    $t2, $f6                   
/* 00AC4 80A13B34 00000000 */  nop
/* 00AC8 80A13B38 A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 00ACC 80A13B3C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
.L80A13B40:
/* 00AD0 80A13B40 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00AD4 80A13B44 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 00AD8 80A13B48 C6000028 */  lwc1    $f0, 0x0028($s0)           ## 00000028
/* 00ADC 80A13B4C 240B0954 */  addiu   $t3, $zero, 0x0954         ## $t3 = 00000954
/* 00AE0 80A13B50 460A4400 */  add.s   $f16, $f8, $f10            
/* 00AE4 80A13B54 4610003C */  c.lt.s  $f0, $f16                  
/* 00AE8 80A13B58 00000000 */  nop
/* 00AEC 80A13B5C 45020004 */  bc1fl   .L80A13B70                 
/* 00AF0 80A13B60 C6120310 */  lwc1    $f18, 0x0310($s0)          ## 00000310
/* 00AF4 80A13B64 10000027 */  beq     $zero, $zero, .L80A13C04   
/* 00AF8 80A13B68 A60B01BC */  sh      $t3, 0x01BC($s0)           ## 000001BC
/* 00AFC 80A13B6C C6120310 */  lwc1    $f18, 0x0310($s0)          ## 00000310
.L80A13B70:
/* 00B00 80A13B70 240C2154 */  addiu   $t4, $zero, 0x2154         ## $t4 = 00002154
/* 00B04 80A13B74 4600903C */  c.lt.s  $f18, $f0                  
/* 00B08 80A13B78 00000000 */  nop
/* 00B0C 80A13B7C 45000003 */  bc1f    .L80A13B8C                 
/* 00B10 80A13B80 00000000 */  nop
/* 00B14 80A13B84 1000001F */  beq     $zero, $zero, .L80A13C04   
/* 00B18 80A13B88 A60C01BC */  sh      $t4, 0x01BC($s0)           ## 000001BC
.L80A13B8C:
/* 00B1C 80A13B8C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00B20 80A13B90 00000000 */  nop
/* 00B24 80A13B94 3C0180A1 */  lui     $at, %hi(D_80A15044)       ## $at = 80A10000
/* 00B28 80A13B98 C4245044 */  lwc1    $f4, %lo(D_80A15044)($at)  
/* 00B2C 80A13B9C 240D0954 */  addiu   $t5, $zero, 0x0954         ## $t5 = 00000954
/* 00B30 80A13BA0 240E2154 */  addiu   $t6, $zero, 0x2154         ## $t6 = 00002154
/* 00B34 80A13BA4 4600203C */  c.lt.s  $f4, $f0                   
/* 00B38 80A13BA8 00000000 */  nop
/* 00B3C 80A13BAC 45000003 */  bc1f    .L80A13BBC                 
/* 00B40 80A13BB0 00000000 */  nop
/* 00B44 80A13BB4 10000013 */  beq     $zero, $zero, .L80A13C04   
/* 00B48 80A13BB8 A60D01BC */  sh      $t5, 0x01BC($s0)           ## 000001BC
.L80A13BBC:
/* 00B4C 80A13BBC 10000011 */  beq     $zero, $zero, .L80A13C04   
/* 00B50 80A13BC0 A60E01BC */  sh      $t6, 0x01BC($s0)           ## 000001BC
/* 00B54 80A13BC4 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80A13BC8:
/* 00B58 80A13BC8 24180954 */  addiu   $t8, $zero, 0x0954         ## $t8 = 00000954
/* 00B5C 80A13BCC 304F0001 */  andi    $t7, $v0, 0x0001           ## $t7 = 00000000
/* 00B60 80A13BD0 11E00003 */  beq     $t7, $zero, .L80A13BE0     
/* 00B64 80A13BD4 30590010 */  andi    $t9, $v0, 0x0010           ## $t9 = 00000000
/* 00B68 80A13BD8 1000000A */  beq     $zero, $zero, .L80A13C04   
/* 00B6C 80A13BDC A61801BC */  sh      $t8, 0x01BC($s0)           ## 000001BC
.L80A13BE0:
/* 00B70 80A13BE0 17200007 */  bne     $t9, $zero, .L80A13C00     
/* 00B74 80A13BE4 24082154 */  addiu   $t0, $zero, 0x2154         ## $t0 = 00002154
/* 00B78 80A13BE8 C6060310 */  lwc1    $f6, 0x0310($s0)           ## 00000310
/* 00B7C 80A13BEC C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00B80 80A13BF0 4608303C */  c.lt.s  $f6, $f8                   
/* 00B84 80A13BF4 00000000 */  nop
/* 00B88 80A13BF8 45020003 */  bc1fl   .L80A13C08                 
/* 00B8C 80A13BFC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
.L80A13C00:
/* 00B90 80A13C00 A60801BC */  sh      $t0, 0x01BC($s0)           ## 000001BC
.L80A13C04:
/* 00B94 80A13C04 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
.L80A13C08:
/* 00B98 80A13C08 860501BC */  lh      $a1, 0x01BC($s0)           ## 000001BC
/* 00B9C 80A13C0C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00BA0 80A13C10 24060100 */  addiu   $a2, $zero, 0x0100         ## $a2 = 00000100
.L80A13C14:
/* 00BA4 80A13C14 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
.L80A13C18:
/* 00BA8 80A13C18 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00BAC 80A13C1C 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00BB0 80A13C20 312A0008 */  andi    $t2, $t1, 0x0008           ## $t2 = 00000000
/* 00BB4 80A13C24 11400005 */  beq     $t2, $zero, .L80A13C3C     
/* 00BB8 80A13C28 24070C00 */  addiu   $a3, $zero, 0x0C00         ## $a3 = 00000C00
/* 00BBC 80A13C2C 8605007E */  lh      $a1, 0x007E($s0)           ## 0000007E
/* 00BC0 80A13C30 240B0300 */  addiu   $t3, $zero, 0x0300         ## $t3 = 00000300
/* 00BC4 80A13C34 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00BC8 80A13C38 AFAB0010 */  sw      $t3, 0x0010($sp)           
.L80A13C3C:
/* 00BCC 80A13C3C 860C01BA */  lh      $t4, 0x01BA($s0)           ## 000001BA
/* 00BD0 80A13C40 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00BD4 80A13C44 55800010 */  bnel    $t4, $zero, .L80A13C88     
/* 00BD8 80A13C48 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BDC 80A13C4C C60A0090 */  lwc1    $f10, 0x0090($s0)          ## 00000090
/* 00BE0 80A13C50 44818000 */  mtc1    $at, $f16                  ## $f16 = 200.00
/* 00BE4 80A13C54 00000000 */  nop
/* 00BE8 80A13C58 4610503C */  c.lt.s  $f10, $f16                 
/* 00BEC 80A13C5C 00000000 */  nop
/* 00BF0 80A13C60 45020009 */  bc1fl   .L80A13C88                 
/* 00BF4 80A13C64 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BF8 80A13C68 0C023C20 */  jal     func_8008F080              
/* 00BFC 80A13C6C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00C00 80A13C70 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C04 80A13C74 50410004 */  beql    $v0, $at, .L80A13C88       
/* 00C08 80A13C78 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C0C 80A13C7C 0C284D27 */  jal     func_80A1349C              
/* 00C10 80A13C80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 80A13C84 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A13C88:
/* 00C18 80A13C88 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00C1C 80A13C8C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00C20 80A13C90 03E00008 */  jr      $ra                        
/* 00C24 80A13C94 00000000 */  nop



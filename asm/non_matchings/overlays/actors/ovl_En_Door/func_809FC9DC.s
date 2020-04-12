.late_rodata
glabel D_809FCF30
    .float 0.15

.text
glabel func_809FC9DC
/* 0080C 809FC9DC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00810 809FC9E0 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00814 809FC9E4 AFB40050 */  sw      $s4, 0x0050($sp)           
/* 00818 809FC9E8 AFB3004C */  sw      $s3, 0x004C($sp)           
/* 0081C 809FC9EC AFB20048 */  sw      $s2, 0x0048($sp)           
/* 00820 809FC9F0 AFB10044 */  sw      $s1, 0x0044($sp)           
/* 00824 809FC9F4 AFB00040 */  sw      $s0, 0x0040($sp)           
/* 00828 809FC9F8 F7BA0038 */  sdc1    $f26, 0x0038($sp)          
/* 0082C 809FC9FC F7B80030 */  sdc1    $f24, 0x0030($sp)          
/* 00830 809FCA00 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 00834 809FCA04 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 00838 809FCA08 84830196 */  lh      $v1, 0x0196($a0)           ## 00000196
/* 0083C 809FCA0C 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00840 809FCA10 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 00844 809FCA14 14600003 */  bne     $v1, $zero, .L809FCA24     
/* 00848 809FCA18 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 0084C 809FCA1C 10000003 */  beq     $zero, $zero, .L809FCA2C   
/* 00850 809FCA20 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FCA24:
/* 00854 809FCA24 A68E0196 */  sh      $t6, 0x0196($s4)           ## 00000196
/* 00858 809FCA28 86820196 */  lh      $v0, 0x0196($s4)           ## 00000196
.L809FCA2C:
/* 0085C 809FCA2C 1440006E */  bne     $v0, $zero, .L809FCBE8     
/* 00860 809FCA30 2690014C */  addiu   $s0, $s4, 0x014C           ## $s0 = 0000014C
/* 00864 809FCA34 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00868 809FCA38 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 0086C 809FCA3C 10400005 */  beq     $v0, $zero, .L809FCA54     
/* 00870 809FCA40 3C0F80A0 */  lui     $t7, %hi(func_809FC5D0)    ## $t7 = 80A00000
/* 00874 809FCA44 25EFC5D0 */  addiu   $t7, $t7, %lo(func_809FC5D0) ## $t7 = 809FC5D0
/* 00878 809FCA48 AE8F01D4 */  sw      $t7, 0x01D4($s4)           ## 000001D4
/* 0087C 809FCA4C 10000066 */  beq     $zero, $zero, .L809FCBE8   
/* 00880 809FCA50 A2800191 */  sb      $zero, 0x0191($s4)         ## 00000191
.L809FCA54:
/* 00884 809FCA54 92980190 */  lbu     $t8, 0x0190($s4)           ## 00000190
/* 00888 809FCA58 3C1980A0 */  lui     $t9, %hi(D_809FCEDC)       ## $t9 = 80A00000
/* 0088C 809FCA5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0000014C
/* 00890 809FCA60 0338C821 */  addu    $t9, $t9, $t8              
/* 00894 809FCA64 9339CEDC */  lbu     $t9, %lo(D_809FCEDC)($t9)  
/* 00898 809FCA68 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 0089C 809FCA6C 44992000 */  mtc1    $t9, $f4                   ## $f4 = -0.00
/* 008A0 809FCA70 07210004 */  bgez    $t9, .L809FCA84            
/* 008A4 809FCA74 46802120 */  cvt.s.w $f4, $f4                   
/* 008A8 809FCA78 44813000 */  mtc1    $at, $f6                   ## $f6 = 4294967296.00
/* 008AC 809FCA7C 00000000 */  nop
/* 008B0 809FCA80 46062100 */  add.s   $f4, $f4, $f6              
.L809FCA84:
/* 008B4 809FCA84 44052000 */  mfc1    $a1, $f4                   
/* 008B8 809FCA88 0C0295B2 */  jal     func_800A56C8              
/* 008BC 809FCA8C 00000000 */  nop
/* 008C0 809FCA90 10400037 */  beq     $v0, $zero, .L809FCB70     
/* 008C4 809FCA94 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 008C8 809FCA98 866200A4 */  lh      $v0, 0x00A4($s3)           ## 000000A4
/* 008CC 809FCA9C 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 008D0 809FCAA0 10410005 */  beq     $v0, $at, .L809FCAB8       
/* 008D4 809FCAA4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 008D8 809FCAA8 10410003 */  beq     $v0, $at, .L809FCAB8       
/* 008DC 809FCAAC 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 008E0 809FCAB0 54410004 */  bnel    $v0, $at, .L809FCAC4       
/* 008E4 809FCAB4 24025802 */  addiu   $v0, $zero, 0x5802         ## $v0 = 00005802
.L809FCAB8:
/* 008E8 809FCAB8 10000002 */  beq     $zero, $zero, .L809FCAC4   
/* 008EC 809FCABC 240228DB */  addiu   $v0, $zero, 0x28DB         ## $v0 = 000028DB
/* 008F0 809FCAC0 24025802 */  addiu   $v0, $zero, 0x5802         ## $v0 = 00005802
.L809FCAC4:
/* 008F4 809FCAC4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008F8 809FCAC8 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00005802
/* 008FC 809FCACC 3C013FC0 */  lui     $at, 0x3FC0                ## $at = 3FC00000
/* 00900 809FCAD0 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.50
/* 00904 809FCAD4 C6880168 */  lwc1    $f8, 0x0168($s4)           ## 00000168
/* 00908 809FCAD8 460A403C */  c.lt.s  $f8, $f10                  
/* 0090C 809FCADC 00000000 */  nop
/* 00910 809FCAE0 45020042 */  bc1fl   .L809FCBEC                 
/* 00914 809FCAE4 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00918 809FCAE8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0091C 809FCAEC 00000000 */  nop
/* 00920 809FCAF0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00924 809FCAF4 44818000 */  mtc1    $at, $f16                  ## $f16 = 30.00
/* 00928 809FCAF8 3C0180A0 */  lui     $at, %hi(D_809FCF30)       ## $at = 80A00000
/* 0092C 809FCAFC 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00930 809FCB00 46100482 */  mul.s   $f18, $f0, $f16            
/* 00934 809FCB04 4600910D */  trunc.w.s $f4, $f18                  
/* 00938 809FCB08 44022000 */  mfc1    $v0, $f4                   
/* 0093C 809FCB0C 00000000 */  nop
/* 00940 809FCB10 24510032 */  addiu   $s1, $v0, 0x0032           ## $s1 = 00000032
/* 00944 809FCB14 5A200035 */  blezl   $s1, .L809FCBEC            
/* 00948 809FCB18 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 0094C 809FCB1C C43ACF30 */  lwc1    $f26, %lo(D_809FCF30)($at) 
/* 00950 809FCB20 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00954 809FCB24 4481C000 */  mtc1    $at, $f24                  ## $f24 = 50.00
/* 00958 809FCB28 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0095C 809FCB2C 4481B000 */  mtc1    $at, $f22                  ## $f22 = 100.00
/* 00960 809FCB30 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00964 809FCB34 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 00968 809FCB38 26920024 */  addiu   $s2, $s4, 0x0024           ## $s2 = 00000024
/* 0096C 809FCB3C 4406A000 */  mfc1    $a2, $f20                  
.L809FCB40:
/* 00970 809FCB40 4407B000 */  mfc1    $a3, $f22                  
/* 00974 809FCB44 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00978 809FCB48 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000024
/* 0097C 809FCB4C E7B80010 */  swc1    $f24, 0x0010($sp)          
/* 00980 809FCB50 0C00A4F9 */  jal     func_800293E4              
/* 00984 809FCB54 E7BA0014 */  swc1    $f26, 0x0014($sp)          
/* 00988 809FCB58 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 0098C 809FCB5C 0211082A */  slt     $at, $s0, $s1              
/* 00990 809FCB60 5420FFF7 */  bnel    $at, $zero, .L809FCB40     
/* 00994 809FCB64 4406A000 */  mfc1    $a2, $f20                  
/* 00998 809FCB68 10000020 */  beq     $zero, $zero, .L809FCBEC   
/* 0099C 809FCB6C 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L809FCB70:
/* 009A0 809FCB70 92890190 */  lbu     $t1, 0x0190($s4)           ## 00000190
/* 009A4 809FCB74 3C0A80A0 */  lui     $t2, %hi(D_809FCEE0)       ## $t2 = 80A00000
/* 009A8 809FCB78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000001
/* 009AC 809FCB7C 01495021 */  addu    $t2, $t2, $t1              
/* 009B0 809FCB80 914ACEE0 */  lbu     $t2, %lo(D_809FCEE0)($t2)  
/* 009B4 809FCB84 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 009B8 809FCB88 448A3000 */  mtc1    $t2, $f6                   ## $f6 = -0.00
/* 009BC 809FCB8C 05410004 */  bgez    $t2, .L809FCBA0            
/* 009C0 809FCB90 468031A0 */  cvt.s.w $f6, $f6                   
/* 009C4 809FCB94 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 009C8 809FCB98 00000000 */  nop
/* 009CC 809FCB9C 46083180 */  add.s   $f6, $f6, $f8              
.L809FCBA0:
/* 009D0 809FCBA0 44053000 */  mfc1    $a1, $f6                   
/* 009D4 809FCBA4 0C0295B2 */  jal     func_800A56C8              
/* 009D8 809FCBA8 00000000 */  nop
/* 009DC 809FCBAC 1040000E */  beq     $v0, $zero, .L809FCBE8     
/* 009E0 809FCBB0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 009E4 809FCBB4 866200A4 */  lh      $v0, 0x00A4($s3)           ## 000000A4
/* 009E8 809FCBB8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 009EC 809FCBBC 10410005 */  beq     $v0, $at, .L809FCBD4       
/* 009F0 809FCBC0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 009F4 809FCBC4 10410003 */  beq     $v0, $at, .L809FCBD4       
/* 009F8 809FCBC8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 009FC 809FCBCC 54410004 */  bnel    $v0, $at, .L809FCBE0       
/* 00A00 809FCBD0 24022801 */  addiu   $v0, $zero, 0x2801         ## $v0 = 00002801
.L809FCBD4:
/* 00A04 809FCBD4 10000002 */  beq     $zero, $zero, .L809FCBE0   
/* 00A08 809FCBD8 240228DC */  addiu   $v0, $zero, 0x28DC         ## $v0 = 000028DC
/* 00A0C 809FCBDC 24022801 */  addiu   $v0, $zero, 0x2801         ## $v0 = 00002801
.L809FCBE0:
/* 00A10 809FCBE0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A14 809FCBE4 3045FFFF */  andi    $a1, $v0, 0xFFFF           ## $a1 = 00002801
.L809FCBE8:
/* 00A18 809FCBE8 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L809FCBEC:
/* 00A1C 809FCBEC D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00A20 809FCBF0 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00A24 809FCBF4 D7B80030 */  ldc1    $f24, 0x0030($sp)          
/* 00A28 809FCBF8 D7BA0038 */  ldc1    $f26, 0x0038($sp)          
/* 00A2C 809FCBFC 8FB00040 */  lw      $s0, 0x0040($sp)           
/* 00A30 809FCC00 8FB10044 */  lw      $s1, 0x0044($sp)           
/* 00A34 809FCC04 8FB20048 */  lw      $s2, 0x0048($sp)           
/* 00A38 809FCC08 8FB3004C */  lw      $s3, 0x004C($sp)           
/* 00A3C 809FCC0C 8FB40050 */  lw      $s4, 0x0050($sp)           
/* 00A40 809FCC10 03E00008 */  jr      $ra                        
/* 00A44 809FCC14 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000

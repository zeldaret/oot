glabel func_80A00950
/* 009B0 80A00950 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 009B4 80A00954 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 009B8 80A00958 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 009BC 80A0095C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 009C0 80A00960 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 009C4 80A00964 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 009C8 80A00968 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 009CC 80A0096C 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 009D0 80A00970 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 009D4 80A00974 0C00B6EC */  jal     func_8002DBB0              
/* 009D8 80A00978 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009DC 80A0097C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009E0 80A00980 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 009E4 80A00984 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 009E8 80A00988 4600203C */  c.lt.s  $f4, $f0                   
/* 009EC 80A0098C 00000000 */  nop
/* 009F0 80A00990 45020008 */  bc1fl   .L80A009B4                 
/* 009F4 80A00994 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 009F8 80A00998 0C00B6B0 */  jal     func_8002DAC0              
/* 009FC 80A0099C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A00 80A009A0 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 00A04 80A009A4 00417021 */  addu    $t6, $v0, $at              
/* 00A08 80A009A8 1000002A */  beq     $zero, $zero, .L80A00A54   
/* 00A0C 80A009AC A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 00A10 80A009B0 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
.L80A009B4:
/* 00A14 80A009B4 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 00A18 80A009B8 55F80027 */  bnel    $t7, $t8, .L80A00A58       
/* 00A1C 80A009BC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00A20 80A009C0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A24 80A009C4 00000000 */  nop
/* 00A28 80A009C8 3C0180A0 */  lui     $at, %hi(D_80A019F4)       ## $at = 80A00000
/* 00A2C 80A009CC C42619F4 */  lwc1    $f6, %lo(D_80A019F4)($at)  
/* 00A30 80A009D0 4600303C */  c.lt.s  $f6, $f0                   
/* 00A34 80A009D4 00000000 */  nop
/* 00A38 80A009D8 4502001F */  bc1fl   .L80A00A58                 
/* 00A3C 80A009DC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00A40 80A009E0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A44 80A009E4 00000000 */  nop
/* 00A48 80A009E8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00A4C 80A009EC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 00A50 80A009F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A54 80A009F4 4608003C */  c.lt.s  $f0, $f8                   
/* 00A58 80A009F8 00000000 */  nop
/* 00A5C 80A009FC 45000003 */  bc1f    .L80A00A0C                 
/* 00A60 80A00A00 00000000 */  nop
/* 00A64 80A00A04 10000001 */  beq     $zero, $zero, .L80A00A0C   
/* 00A68 80A00A08 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L80A00A0C:
/* 00A6C 80A00A0C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A70 80A00A10 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00A74 80A00A14 3C014600 */  lui     $at, 0x4600                ## $at = 46000000
/* 00A78 80A00A18 44811000 */  mtc1    $at, $f2                   ## $f2 = 8192.00
/* 00A7C 80A00A1C 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00A80 80A00A20 86190032 */  lh      $t9, 0x0032($s0)           ## 00000032
/* 00A84 80A00A24 46020282 */  mul.s   $f10, $f0, $f2             
/* 00A88 80A00A28 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 00A8C 80A00A2C 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00A90 80A00A30 46809120 */  cvt.s.w $f4, $f18                  
/* 00A94 80A00A34 46025400 */  add.s   $f16, $f10, $f2            
/* 00A98 80A00A38 468042A0 */  cvt.s.w $f10, $f8                  
/* 00A9C 80A00A3C 46048182 */  mul.s   $f6, $f16, $f4             
/* 00AA0 80A00A40 460A3480 */  add.s   $f18, $f6, $f10            
/* 00AA4 80A00A44 4600940D */  trunc.w.s $f16, $f18                 
/* 00AA8 80A00A48 44098000 */  mfc1    $t1, $f16                  
/* 00AAC 80A00A4C 00000000 */  nop
/* 00AB0 80A00A50 A6090196 */  sh      $t1, 0x0196($s0)           ## 00000196
.L80A00A54:
/* 00AB4 80A00A54 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
.L80A00A58:
/* 00AB8 80A00A58 86050196 */  lh      $a1, 0x0196($s0)           ## 00000196
/* 00ABC 80A00A5C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00AC0 80A00A60 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00AC4 80A00A64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC8 80A00A68 0C280229 */  jal     func_80A008A4              
/* 00ACC 80A00A6C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00AD0 80A00A70 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00AD4 80A00A74 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00AD8 80A00A78 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00ADC 80A00A7C 03E00008 */  jr      $ra                        
/* 00AE0 80A00A80 00000000 */  nop



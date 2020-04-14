.late_rodata
glabel D_80B4A374
    .float 0.7

glabel D_80B4A378
    .float 0.7

.text
glabel func_80B46AE0
/* 02A90 80B46AE0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02A94 80B46AE4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02A98 80B46AE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 02A9C 80B46AEC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02AA0 80B46AF0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 02AA4 80B46AF4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02AA8 80B46AF8 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 02AAC 80B46AFC AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 02AB0 80B46B00 C4860164 */  lwc1    $f6, 0x0164($a0)           ## 00000164
/* 02AB4 80B46B04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AB8 80B46B08 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 02ABC 80B46B0C 4600320D */  trunc.w.s $f8, $f6                   
/* 02AC0 80B46B10 44194000 */  mfc1    $t9, $f8                   
/* 02AC4 80B46B14 00000000 */  nop
/* 02AC8 80B46B18 17210003 */  bne     $t9, $at, .L80B46B28       
/* 02ACC 80B46B1C 00000000 */  nop
/* 02AD0 80B46B20 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02AD4 80B46B24 2405382A */  addiu   $a1, $zero, 0x382A         ## $a1 = 0000382A
.L80B46B28:
/* 02AD8 80B46B28 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02ADC 80B46B2C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02AE0 80B46B30 50400088 */  beql    $v0, $zero, .L80B46D54     
/* 02AE4 80B46B34 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02AE8 80B46B38 0C009AC3 */  jal     func_80026B0C              
/* 02AEC 80B46B3C 8E040414 */  lw      $a0, 0x0414($s0)           ## 00000414
/* 02AF0 80B46B40 0C008048 */  jal     func_80020120              
/* 02AF4 80B46B44 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 02AF8 80B46B48 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 02AFC 80B46B4C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02B00 80B46B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B04 80B46B54 1501001C */  bne     $t0, $at, .L80B46BC8       
/* 02B08 80B46B58 00000000 */  nop
/* 02B0C 80B46B5C 0C00B821 */  jal     func_8002E084              
/* 02B10 80B46B60 24051554 */  addiu   $a1, $zero, 0x1554         ## $a1 = 00001554
/* 02B14 80B46B64 14400018 */  bne     $v0, $zero, .L80B46BC8     
/* 02B18 80B46B68 00000000 */  nop
/* 02B1C 80B46B6C 0C2D14E1 */  jal     func_80B45384              
/* 02B20 80B46B70 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B24 80B46B74 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02B28 80B46B78 00000000 */  nop
/* 02B2C 80B46B7C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02B30 80B46B80 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 02B34 80B46B84 00000000 */  nop
/* 02B38 80B46B88 46020282 */  mul.s   $f10, $f0, $f2             
/* 02B3C 80B46B8C 46025400 */  add.s   $f16, $f10, $f2            
/* 02B40 80B46B90 4600848D */  trunc.w.s $f18, $f16                 
/* 02B44 80B46B94 440A9000 */  mfc1    $t2, $f18                  
/* 02B48 80B46B98 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02B4C 80B46B9C AE0A03F0 */  sw      $t2, 0x03F0($s0)           ## 000003F0
/* 02B50 80B46BA0 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02B54 80B46BA4 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 02B58 80B46BA8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 02B5C 80B46BAC 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 02B60 80B46BB0 46040182 */  mul.s   $f6, $f0, $f4              
/* 02B64 80B46BB4 46083280 */  add.s   $f10, $f6, $f8             
/* 02B68 80B46BB8 4600540D */  trunc.w.s $f16, $f10                 
/* 02B6C 80B46BBC 440C8000 */  mfc1    $t4, $f16                  
/* 02B70 80B46BC0 10000063 */  beq     $zero, $zero, .L80B46D50   
/* 02B74 80B46BC4 A60C03F4 */  sh      $t4, 0x03F4($s0)           ## 000003F4
.L80B46BC8:
/* 02B78 80B46BC8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02B7C 80B46BCC 00000000 */  nop
/* 02B80 80B46BD0 3C0180B5 */  lui     $at, %hi(D_80B4A374)       ## $at = 80B50000
/* 02B84 80B46BD4 C432A374 */  lwc1    $f18, %lo(D_80B4A374)($at) 
/* 02B88 80B46BD8 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 02B8C 80B46BDC 4600903C */  c.lt.s  $f18, $f0                  
/* 02B90 80B46BE0 00000000 */  nop
/* 02B94 80B46BE4 45010008 */  bc1t    .L80B46C08                 
/* 02B98 80B46BE8 00000000 */  nop
/* 02B9C 80B46BEC C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 02BA0 80B46BF0 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 02BA4 80B46BF4 00000000 */  nop
/* 02BA8 80B46BF8 4604303E */  c.le.s  $f6, $f4                   
/* 02BAC 80B46BFC 00000000 */  nop
/* 02BB0 80B46C00 4502000F */  bc1fl   .L80B46C40                 
/* 02BB4 80B46C04 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
.L80B46C08:
/* 02BB8 80B46C08 0C2D14E1 */  jal     func_80B45384              
/* 02BBC 80B46C0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BC0 80B46C10 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02BC4 80B46C14 00000000 */  nop
/* 02BC8 80B46C18 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 02BCC 80B46C1C 44811000 */  mtc1    $at, $f2                   ## $f2 = 5.00
/* 02BD0 80B46C20 00000000 */  nop
/* 02BD4 80B46C24 46020202 */  mul.s   $f8, $f0, $f2              
/* 02BD8 80B46C28 46024280 */  add.s   $f10, $f8, $f2             
/* 02BDC 80B46C2C 4600540D */  trunc.w.s $f16, $f10                 
/* 02BE0 80B46C30 440E8000 */  mfc1    $t6, $f16                  
/* 02BE4 80B46C34 10000046 */  beq     $zero, $zero, .L80B46D50   
/* 02BE8 80B46C38 AE0E03F0 */  sw      $t6, 0x03F0($s0)           ## 000003F0
/* 02BEC 80B46C3C 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
.L80B46C40:
/* 02BF0 80B46C40 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02BF4 80B46C44 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 02BF8 80B46C48 3C0180B5 */  lui     $at, %hi(D_80B4A378)       ## $at = 80B50000
/* 02BFC 80B46C4C C432A378 */  lwc1    $f18, %lo(D_80B4A378)($at) 
/* 02C00 80B46C50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C04 80B46C54 8FB80024 */  lw      $t8, 0x0024($sp)           
/* 02C08 80B46C58 4600903C */  c.lt.s  $f18, $f0                  
/* 02C0C 80B46C5C 00000000 */  nop
/* 02C10 80B46C60 45020006 */  bc1fl   .L80B46C7C                 
/* 02C14 80B46C64 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 02C18 80B46C68 0C2D20F9 */  jal     func_80B483E4              
/* 02C1C 80B46C6C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02C20 80B46C70 10000038 */  beq     $zero, $zero, .L80B46D54   
/* 02C24 80B46C74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02C28 80B46C78 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
.L80B46C7C:
/* 02C2C 80B46C7C 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 02C30 80B46C80 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02C34 80B46C84 03241023 */  subu    $v0, $t9, $a0              
/* 02C38 80B46C88 00021400 */  sll     $v0, $v0, 16               
/* 02C3C 80B46C8C 00021403 */  sra     $v0, $v0, 16               
/* 02C40 80B46C90 04430005 */  bgezl   $v0, .L80B46CA8            
/* 02C44 80B46C94 28412711 */  slti    $at, $v0, 0x2711           
/* 02C48 80B46C98 00021023 */  subu    $v0, $zero, $v0            
/* 02C4C 80B46C9C 00021400 */  sll     $v0, $v0, 16               
/* 02C50 80B46CA0 00021403 */  sra     $v0, $v0, 16               
/* 02C54 80B46CA4 28412711 */  slti    $at, $v0, 0x2711           
.L80B46CA8:
/* 02C58 80B46CA8 10200027 */  beq     $at, $zero, .L80B46D48     
/* 02C5C 80B46CAC 00000000 */  nop
/* 02C60 80B46CB0 8603008A */  lh      $v1, 0x008A($s0)           ## 0000008A
/* 02C64 80B46CB4 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 02C68 80B46CB8 00641023 */  subu    $v0, $v1, $a0              
/* 02C6C 80B46CBC 00021400 */  sll     $v0, $v0, 16               
/* 02C70 80B46CC0 00021403 */  sra     $v0, $v0, 16               
/* 02C74 80B46CC4 04410004 */  bgez    $v0, .L80B46CD8            
/* 02C78 80B46CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C7C 80B46CCC 00021023 */  subu    $v0, $zero, $v0            
/* 02C80 80B46CD0 00021400 */  sll     $v0, $v0, 16               
/* 02C84 80B46CD4 00021403 */  sra     $v0, $v0, 16               
.L80B46CD8:
/* 02C88 80B46CD8 28413E81 */  slti    $at, $v0, 0x3E81           
/* 02C8C 80B46CDC 54200007 */  bnel    $at, $zero, .L80B46CFC     
/* 02C90 80B46CE0 8D09067C */  lw      $t1, 0x067C($t0)           ## 0000067C
/* 02C94 80B46CE4 A6030032 */  sh      $v1, 0x0032($s0)           ## 00000032
/* 02C98 80B46CE8 0C2D20F9 */  jal     func_80B483E4              
/* 02C9C 80B46CEC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02CA0 80B46CF0 10000018 */  beq     $zero, $zero, .L80B46D54   
/* 02CA4 80B46CF4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CA8 80B46CF8 8D09067C */  lw      $t1, 0x067C($t0)           ## 0000067C
.L80B46CFC:
/* 02CAC 80B46CFC 312A6010 */  andi    $t2, $t1, 0x6010           ## $t2 = 00000000
/* 02CB0 80B46D00 1140000D */  beq     $t2, $zero, .L80B46D38     
/* 02CB4 80B46D04 00000000 */  nop
/* 02CB8 80B46D08 920B010C */  lbu     $t3, 0x010C($s0)           ## 0000010C
/* 02CBC 80B46D0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CC0 80B46D10 11600005 */  beq     $t3, $zero, .L80B46D28     
/* 02CC4 80B46D14 00000000 */  nop
/* 02CC8 80B46D18 0C2D1A89 */  jal     func_80B46A24              
/* 02CCC 80B46D1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CD0 80B46D20 1000000C */  beq     $zero, $zero, .L80B46D54   
/* 02CD4 80B46D24 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46D28:
/* 02CD8 80B46D28 0C2D20F9 */  jal     func_80B483E4              
/* 02CDC 80B46D2C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02CE0 80B46D30 10000008 */  beq     $zero, $zero, .L80B46D54   
/* 02CE4 80B46D34 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46D38:
/* 02CE8 80B46D38 0C2D1A89 */  jal     func_80B46A24              
/* 02CEC 80B46D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02CF0 80B46D40 10000004 */  beq     $zero, $zero, .L80B46D54   
/* 02CF4 80B46D44 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46D48:
/* 02CF8 80B46D48 0C2D20F9 */  jal     func_80B483E4              
/* 02CFC 80B46D4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B46D50:
/* 02D00 80B46D50 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B46D54:
/* 02D04 80B46D54 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 02D08 80B46D58 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02D0C 80B46D5C 03E00008 */  jr      $ra                        
/* 02D10 80B46D60 00000000 */  nop

glabel func_80AA8AEC
/* 02A9C 80AA8AEC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 02AA0 80AA8AF0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 02AA4 80AA8AF4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AA8 80AA8AF8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 02AAC 80AA8AFC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02AB0 80AA8B00 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 02AB4 80AA8B04 24840344 */  addiu   $a0, $a0, 0x0344           ## $a0 = 00000344
/* 02AB8 80AA8B08 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 02ABC 80AA8B0C 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 02AC0 80AA8B10 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 02AC4 80AA8B14 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 02AC8 80AA8B18 44812000 */  mtc1    $at, $f4                   ## $f4 = 8.00
/* 02ACC 80AA8B1C 00000000 */  nop
/* 02AD0 80AA8B20 4604003E */  c.le.s  $f0, $f4                   
/* 02AD4 80AA8B24 00000000 */  nop
/* 02AD8 80AA8B28 45030013 */  bc1tl   .L80AA8B78                 
/* 02ADC 80AA8B2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02AE0 80AA8B30 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02AE4 80AA8B34 00000000 */  nop
/* 02AE8 80AA8B38 3C0180AB */  lui     $at, %hi(D_80AA9E90)       ## $at = 80AB0000
/* 02AEC 80AA8B3C C4269E90 */  lwc1    $f6, %lo(D_80AA9E90)($at)  
/* 02AF0 80AA8B40 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 02AF4 80AA8B44 4606003C */  c.lt.s  $f0, $f6                   
/* 02AF8 80AA8B48 00000000 */  nop
/* 02AFC 80AA8B4C 4502000F */  bc1fl   .L80AA8B8C                 
/* 02B00 80AA8B50 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02B04 80AA8B54 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 02B08 80AA8B58 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 02B0C 80AA8B5C 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 02B10 80AA8B60 44814000 */  mtc1    $at, $f8                   ## $f8 = 4.00
/* 02B14 80AA8B64 00000000 */  nop
/* 02B18 80AA8B68 4608003E */  c.le.s  $f0, $f8                   
/* 02B1C 80AA8B6C 00000000 */  nop
/* 02B20 80AA8B70 45000005 */  bc1f    .L80AA8B88                 
/* 02B24 80AA8B74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA8B78:
/* 02B28 80AA8B78 0C2A9A3F */  jal     func_80AA68FC              
/* 02B2C 80AA8B7C 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 02B30 80AA8B80 1000000E */  beq     $zero, $zero, .L80AA8BBC   
/* 02B34 80AA8B84 8FA40028 */  lw      $a0, 0x0028($sp)           
.L80AA8B88:
/* 02B38 80AA8B88 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80AA8B8C:
/* 02B3C 80AA8B8C 3C053F19 */  lui     $a1, 0x3F19                ## $a1 = 3F190000
/* 02B40 80AA8B90 3C063DCC */  lui     $a2, 0x3DCC                ## $a2 = 3DCC0000
/* 02B44 80AA8B94 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3DCCCCCD
/* 02B48 80AA8B98 34A59999 */  ori     $a1, $a1, 0x9999           ## $a1 = 3F199999
/* 02B4C 80AA8B9C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 02B50 80AA8BA0 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 02B54 80AA8BA4 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 02B58 80AA8BA8 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 02B5C 80AA8BAC C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 02B60 80AA8BB0 46021400 */  add.s   $f16, $f2, $f2             
/* 02B64 80AA8BB4 E61001A8 */  swc1    $f16, 0x01A8($s0)          ## 000001A8
/* 02B68 80AA8BB8 8FA40028 */  lw      $a0, 0x0028($sp)           
.L80AA8BBC:
/* 02B6C 80AA8BBC 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 02B70 80AA8BC0 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02B74 80AA8BC4 A6020330 */  sh      $v0, 0x0330($s0)           ## 00000330
/* 02B78 80AA8BC8 86050330 */  lh      $a1, 0x0330($s0)           ## 00000330
/* 02B7C 80AA8BCC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02B80 80AA8BD0 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02B84 80AA8BD4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02B88 80AA8BD8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 02B8C 80AA8BDC 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 02B90 80AA8BE0 C6000094 */  lwc1    $f0, 0x0094($s0)           ## 00000094
/* 02B94 80AA8BE4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02B98 80AA8BE8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02B9C 80AA8BEC 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 02BA0 80AA8BF0 4600903E */  c.le.s  $f18, $f0                  
/* 02BA4 80AA8BF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BA8 80AA8BF8 45020004 */  bc1fl   .L80AA8C0C                 
/* 02BAC 80AA8BFC 46000087 */  neg.s   $f2, $f0                   
/* 02BB0 80AA8C00 10000002 */  beq     $zero, $zero, .L80AA8C0C   
/* 02BB4 80AA8C04 46000086 */  mov.s   $f2, $f0                   
/* 02BB8 80AA8C08 46000087 */  neg.s   $f2, $f0                   
.L80AA8C0C:
/* 02BBC 80AA8C0C 4604103E */  c.le.s  $f2, $f4                   
/* 02BC0 80AA8C10 00000000 */  nop
/* 02BC4 80AA8C14 45020026 */  bc1fl   .L80AA8CB0                 
/* 02BC8 80AA8C18 8602032C */  lh      $v0, 0x032C($s0)           ## 0000032C
/* 02BCC 80AA8C1C 0C2A994B */  jal     func_80AA652C              
/* 02BD0 80AA8C20 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 02BD4 80AA8C24 50400022 */  beql    $v0, $zero, .L80AA8CB0     
/* 02BD8 80AA8C28 8602032C */  lh      $v0, 0x032C($s0)           ## 0000032C
/* 02BDC 80AA8C2C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 02BE0 80AA8C30 860F008A */  lh      $t7, 0x008A($s0)           ## 0000008A
/* 02BE4 80AA8C34 01CF1023 */  subu    $v0, $t6, $t7              
/* 02BE8 80AA8C38 00021400 */  sll     $v0, $v0, 16               
/* 02BEC 80AA8C3C 00021403 */  sra     $v0, $v0, 16               
/* 02BF0 80AA8C40 04400003 */  bltz    $v0, .L80AA8C50            
/* 02BF4 80AA8C44 00021823 */  subu    $v1, $zero, $v0            
/* 02BF8 80AA8C48 10000001 */  beq     $zero, $zero, .L80AA8C50   
/* 02BFC 80AA8C4C 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80AA8C50:
/* 02C00 80AA8C50 28614001 */  slti    $at, $v1, 0x4001           
/* 02C04 80AA8C54 5420000C */  bnel    $at, $zero, .L80AA8C88     
/* 02C08 80AA8C58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C0C 80AA8C5C 0C00B779 */  jal     func_8002DDE4              
/* 02C10 80AA8C60 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 02C14 80AA8C64 10400011 */  beq     $v0, $zero, .L80AA8CAC     
/* 02C18 80AA8C68 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 02C1C 80AA8C6C C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 02C20 80AA8C70 44814000 */  mtc1    $at, $f8                   ## $f8 = 160.00
/* 02C24 80AA8C74 00000000 */  nop
/* 02C28 80AA8C78 4608303C */  c.lt.s  $f6, $f8                   
/* 02C2C 80AA8C7C 00000000 */  nop
/* 02C30 80AA8C80 4500000A */  bc1f    .L80AA8CAC                 
/* 02C34 80AA8C84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AA8C88:
/* 02C38 80AA8C88 0C2A99A8 */  jal     func_80AA66A0              
/* 02C3C 80AA8C8C 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 02C40 80AA8C90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C44 80AA8C94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02C48 80AA8C98 240538BB */  addiu   $a1, $zero, 0x38BB         ## $a1 = 000038BB
/* 02C4C 80AA8C9C 0C2A9AB2 */  jal     func_80AA6AC8              
/* 02C50 80AA8CA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C54 80AA8CA4 10000048 */  beq     $zero, $zero, .L80AA8DC8   
/* 02C58 80AA8CA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA8CAC:
/* 02C5C 80AA8CAC 8602032C */  lh      $v0, 0x032C($s0)           ## 0000032C
.L80AA8CB0:
/* 02C60 80AA8CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C64 80AA8CB4 10400002 */  beq     $v0, $zero, .L80AA8CC0     
/* 02C68 80AA8CB8 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 02C6C 80AA8CBC A618032C */  sh      $t8, 0x032C($s0)           ## 0000032C
.L80AA8CC0:
/* 02C70 80AA8CC0 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 02C74 80AA8CC4 10400002 */  beq     $v0, $zero, .L80AA8CD0     
/* 02C78 80AA8CC8 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 02C7C 80AA8CCC A619032E */  sh      $t9, 0x032E($s0)           ## 0000032E
.L80AA8CD0:
/* 02C80 80AA8CD0 8608032C */  lh      $t0, 0x032C($s0)           ## 0000032C
/* 02C84 80AA8CD4 55000008 */  bnel    $t0, $zero, .L80AA8CF8     
/* 02C88 80AA8CD8 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
/* 02C8C 80AA8CDC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02C90 80AA8CE0 240538BB */  addiu   $a1, $zero, 0x38BB         ## $a1 = 000038BB
/* 02C94 80AA8CE4 2404001E */  addiu   $a0, $zero, 0x001E         ## $a0 = 0000001E
/* 02C98 80AA8CE8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 02C9C 80AA8CEC 24050046 */  addiu   $a1, $zero, 0x0046         ## $a1 = 00000046
/* 02CA0 80AA8CF0 A602032C */  sh      $v0, 0x032C($s0)           ## 0000032C
/* 02CA4 80AA8CF4 C60A01A4 */  lwc1    $f10, 0x01A4($s0)          ## 000001A4
.L80AA8CF8:
/* 02CA8 80AA8CF8 2604018C */  addiu   $a0, $s0, 0x018C           ## $a0 = 0000018C
/* 02CAC 80AA8CFC 4600540D */  trunc.w.s $f16, $f10                 
/* 02CB0 80AA8D00 44038000 */  mfc1    $v1, $f16                  
/* 02CB4 80AA8D04 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02CB8 80AA8D08 AFA30044 */  sw      $v1, 0x0044($sp)           
/* 02CBC 80AA8D0C C60001A8 */  lwc1    $f0, 0x01A8($s0)           ## 000001A8
/* 02CC0 80AA8D10 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02CC4 80AA8D14 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02CC8 80AA8D18 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 02CCC 80AA8D1C 4600903E */  c.le.s  $f18, $f0                  
/* 02CD0 80AA8D20 00000000 */  nop
/* 02CD4 80AA8D24 45020004 */  bc1fl   .L80AA8D38                 
/* 02CD8 80AA8D28 46000087 */  neg.s   $f2, $f0                   
/* 02CDC 80AA8D2C 10000002 */  beq     $zero, $zero, .L80AA8D38   
/* 02CE0 80AA8D30 46000086 */  mov.s   $f2, $f0                   
/* 02CE4 80AA8D34 46000087 */  neg.s   $f2, $f0                   
.L80AA8D38:
/* 02CE8 80AA8D38 C60C01A4 */  lwc1    $f12, 0x01A4($s0)          ## 000001A4
/* 02CEC 80AA8D3C 4600403E */  c.le.s  $f8, $f0                   
/* 02CF0 80AA8D40 46026101 */  sub.s   $f4, $f12, $f2             
/* 02CF4 80AA8D44 4600628D */  trunc.w.s $f10, $f12                 
/* 02CF8 80AA8D48 4600218D */  trunc.w.s $f6, $f4                   
/* 02CFC 80AA8D4C 440C5000 */  mfc1    $t4, $f10                  
/* 02D00 80AA8D50 44023000 */  mfc1    $v0, $f6                   
/* 02D04 80AA8D54 45020004 */  bc1fl   .L80AA8D68                 
/* 02D08 80AA8D58 46000087 */  neg.s   $f2, $f0                   
/* 02D0C 80AA8D5C 10000002 */  beq     $zero, $zero, .L80AA8D68   
/* 02D10 80AA8D60 46000086 */  mov.s   $f2, $f0                   
/* 02D14 80AA8D64 46000087 */  neg.s   $f2, $f0                   
.L80AA8D68:
/* 02D18 80AA8D68 106C0014 */  beq     $v1, $t4, .L80AA8DBC       
/* 02D1C 80AA8D6C 28410002 */  slti    $at, $v0, 0x0002           
/* 02D20 80AA8D70 50200007 */  beql    $at, $zero, .L80AA8D90     
/* 02D24 80AA8D74 28410015 */  slti    $at, $v0, 0x0015           
/* 02D28 80AA8D78 4600140D */  trunc.w.s $f16, $f2                  
/* 02D2C 80AA8D7C 440E8000 */  mfc1    $t6, $f16                  
/* 02D30 80AA8D80 00000000 */  nop
/* 02D34 80AA8D84 01C37821 */  addu    $t7, $t6, $v1              
/* 02D38 80AA8D88 1DE00009 */  bgtz    $t7, .L80AA8DB0            
/* 02D3C 80AA8D8C 28410015 */  slti    $at, $v0, 0x0015           
.L80AA8D90:
/* 02D40 80AA8D90 5020000B */  beql    $at, $zero, .L80AA8DC0     
/* 02D44 80AA8D94 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 02D48 80AA8D98 4600148D */  trunc.w.s $f18, $f2                  
/* 02D4C 80AA8D9C 44199000 */  mfc1    $t9, $f18                  
/* 02D50 80AA8DA0 00000000 */  nop
/* 02D54 80AA8DA4 03234021 */  addu    $t0, $t9, $v1              
/* 02D58 80AA8DA8 29010014 */  slti    $at, $t0, 0x0014           
/* 02D5C 80AA8DAC 14200003 */  bne     $at, $zero, .L80AA8DBC     
.L80AA8DB0:
/* 02D60 80AA8DB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02D64 80AA8DB4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02D68 80AA8DB8 240538B8 */  addiu   $a1, $zero, 0x38B8         ## $a1 = 000038B8
.L80AA8DBC:
/* 02D6C 80AA8DBC 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
.L80AA8DC0:
/* 02D70 80AA8DC0 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 02D74 80AA8DC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AA8DC8:
/* 02D78 80AA8DC8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02D7C 80AA8DCC 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 02D80 80AA8DD0 03E00008 */  jr      $ra                        
/* 02D84 80AA8DD4 00000000 */  nop



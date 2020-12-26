.late_rodata
glabel D_80B37B7C
 .word 0x3E333333
glabel D_80B37B80
    .float 0.7

glabel D_80B37B84
    .float 0.03

.text
glabel func_80B3487C
/* 00BCC 80B3487C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00BD0 80B34880 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00BD4 80B34884 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00BD8 80B34888 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00BDC 80B3488C E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00BE0 80B34890 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 00BE4 80B34894 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE8 80B34898 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00BEC 80B3489C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00BF0 80B348A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BF4 80B348A4 AFA60064 */  sw      $a2, 0x0064($sp)           
/* 00BF8 80B348A8 0C2CDE0C */  jal     func_80B37830              
/* 00BFC 80B348AC AFAE0048 */  sw      $t6, 0x0048($sp)           
/* 00C00 80B348B0 1440010D */  bne     $v0, $zero, .L80B34CE8     
/* 00C04 80B348B4 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00C08 80B348B8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00C0C 80B348BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C10 80B348C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C14 80B348C4 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 00C18 80B348C8 240702EE */  addiu   $a3, $zero, 0x02EE         ## $a3 = 000002EE
/* 00C1C 80B348CC 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 00C20 80B348D0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00C24 80B348D4 A60F0032 */  sh      $t7, 0x0032($s0)           ## 00000032
/* 00C28 80B348D8 0C00CEAE */  jal     func_80033AB8              
/* 00C2C 80B348DC 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00C30 80B348E0 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00C34 80B348E4 10400004 */  beq     $v0, $zero, .L80B348F8     
/* 00C38 80B348E8 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00C3C 80B348EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 150.00
/* 00C40 80B348F0 00000000 */  nop
/* 00C44 80B348F4 E7A60050 */  swc1    $f6, 0x0050($sp)           
.L80B348F8:
/* 00C48 80B348F8 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00C4C 80B348FC 44814000 */  mtc1    $at, $f8                   ## $f8 = 50.00
/* 00C50 80B34900 C7AA0050 */  lwc1    $f10, 0x0050($sp)          
/* 00C54 80B34904 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 00C58 80B34908 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00C5C 80B3490C 460A4400 */  add.s   $f16, $f8, $f10            
/* 00C60 80B34910 3C05C100 */  lui     $a1, 0xC100                ## $a1 = C1000000
/* 00C64 80B34914 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00C68 80B34918 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 00C6C 80B3491C 4610003E */  c.le.s  $f0, $f16                  
/* 00C70 80B34920 3C014282 */  lui     $at, 0x4282                ## $at = 42820000
/* 00C74 80B34924 C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 00C78 80B34928 45020006 */  bc1fl   .L80B34944                 
/* 00C7C 80B3492C 44819000 */  mtc1    $at, $f18                  ## $f18 = 65.00
/* 00C80 80B34930 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00C84 80B34934 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00C88 80B34938 10000016 */  beq     $zero, $zero, .L80B34994   
/* 00C8C 80B3493C 00000000 */  nop
/* 00C90 80B34940 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.00
.L80B34944:
/* 00C94 80B34944 3C0740D4 */  lui     $a3, 0x40D4                ## $a3 = 40D40000
/* 00C98 80B34948 3C054100 */  lui     $a1, 0x4100                ## $a1 = 41000000
/* 00C9C 80B3494C 46049180 */  add.s   $f6, $f18, $f4             
/* 00CA0 80B34950 34E7CCCD */  ori     $a3, $a3, 0xCCCD           ## $a3 = 40D4CCCD
/* 00CA4 80B34954 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00CA8 80B34958 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00CAC 80B3495C 4600303C */  c.lt.s  $f6, $f0                   
/* 00CB0 80B34960 00000000 */  nop
/* 00CB4 80B34964 45020009 */  bc1fl   .L80B3498C                 
/* 00CB8 80B34968 44051000 */  mfc1    $a1, $f2                   
/* 00CBC 80B3496C 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00CC0 80B34970 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00CC4 80B34974 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 00CC8 80B34978 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00CCC 80B3497C E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 00CD0 80B34980 10000004 */  beq     $zero, $zero, .L80B34994   
/* 00CD4 80B34984 00000000 */  nop
/* 00CD8 80B34988 44051000 */  mfc1    $a1, $f2                   
.L80B3498C:
/* 00CDC 80B3498C 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 00CE0 80B34990 E7A20010 */  swc1    $f2, 0x0010($sp)           
.L80B34994:
/* 00CE4 80B34994 3C0180B3 */  lui     $at, %hi(D_80B37B7C)       ## $at = 80B30000
/* 00CE8 80B34998 C42A7B7C */  lwc1    $f10, %lo(D_80B37B7C)($at) 
/* 00CEC 80B3499C C6080068 */  lwc1    $f8, 0x0068($s0)           ## 00000068
/* 00CF0 80B349A0 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00CF4 80B349A4 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00CF8 80B349A8 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00CFC 80B349AC 44812000 */  mtc1    $at, $f4                   ## $f4 = 150.00
/* 00D00 80B349B0 E61001A4 */  swc1    $f16, 0x01A4($s0)          ## 000001A4
/* 00D04 80B349B4 8FB80048 */  lw      $t8, 0x0048($sp)           
/* 00D08 80B349B8 C7A60050 */  lwc1    $f6, 0x0050($sp)           
/* 00D0C 80B349BC 8FA90048 */  lw      $t1, 0x0048($sp)           
/* 00D10 80B349C0 871900B6 */  lh      $t9, 0x00B6($t8)           ## 000000B6
/* 00D14 80B349C4 46062200 */  add.s   $f8, $f4, $f6              
/* 00D18 80B349C8 03281023 */  subu    $v0, $t9, $t0              
/* 00D1C 80B349CC 00021400 */  sll     $v0, $v0, 16               
/* 00D20 80B349D0 00021403 */  sra     $v0, $v0, 16               
/* 00D24 80B349D4 04430005 */  bgezl   $v0, .L80B349EC            
/* 00D28 80B349D8 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00D2C 80B349DC 00021023 */  subu    $v0, $zero, $v0            
/* 00D30 80B349E0 00021400 */  sll     $v0, $v0, 16               
/* 00D34 80B349E4 00021403 */  sra     $v0, $v0, 16               
/* 00D38 80B349E8 C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
.L80B349EC:
/* 00D3C 80B349EC 4608903C */  c.lt.s  $f18, $f8                  
/* 00D40 80B349F0 00000000 */  nop
/* 00D44 80B349F4 45020016 */  bc1fl   .L80B34A50                 
/* 00D48 80B349F8 C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
/* 00D4C 80B349FC 812A0843 */  lb      $t2, 0x0843($t1)           ## 00000843
/* 00D50 80B34A00 28411F40 */  slti    $at, $v0, 0x1F40           
/* 00D54 80B34A04 51400012 */  beql    $t2, $zero, .L80B34A50     
/* 00D58 80B34A08 C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
/* 00D5C 80B34A0C 54200010 */  bnel    $at, $zero, .L80B34A50     
/* 00D60 80B34A10 C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
/* 00D64 80B34A14 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 00D68 80B34A18 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 00D6C 80B34A1C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00D70 80B34A20 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00D74 80B34A24 3C0180B3 */  lui     $at, %hi(D_80B37B80)       ## $at = 80B30000
/* 00D78 80B34A28 C42A7B80 */  lwc1    $f10, %lo(D_80B37B80)($at) 
/* 00D7C 80B34A2C 4600503C */  c.lt.s  $f10, $f0                  
/* 00D80 80B34A30 00000000 */  nop
/* 00D84 80B34A34 45020006 */  bc1fl   .L80B34A50                 
/* 00D88 80B34A38 C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
/* 00D8C 80B34A3C 0C2CD3CA */  jal     func_80B34F28              
/* 00D90 80B34A40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D94 80B34A44 100000A9 */  beq     $zero, $zero, .L80B34CEC   
/* 00D98 80B34A48 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00D9C 80B34A4C C61001A0 */  lwc1    $f16, 0x01A0($s0)          ## 000001A0
.L80B34A50:
/* 00DA0 80B34A50 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00DA4 80B34A54 4600810D */  trunc.w.s $f4, $f16                  
/* 00DA8 80B34A58 440C2000 */  mfc1    $t4, $f4                   
/* 00DAC 80B34A5C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00DB0 80B34A60 AFAC005C */  sw      $t4, 0x005C($sp)           
/* 00DB4 80B34A64 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 00DB8 80B34A68 C60001A4 */  lwc1    $f0, 0x01A4($s0)           ## 000001A4
/* 00DBC 80B34A6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC0 80B34A70 4600103E */  c.le.s  $f2, $f0                   
/* 00DC4 80B34A74 00000000 */  nop
/* 00DC8 80B34A78 45020004 */  bc1fl   .L80B34A8C                 
/* 00DCC 80B34A7C 46000187 */  neg.s   $f6, $f0                   
/* 00DD0 80B34A80 10000003 */  beq     $zero, $zero, .L80B34A90   
/* 00DD4 80B34A84 E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 00DD8 80B34A88 46000187 */  neg.s   $f6, $f0                   
.L80B34A8C:
/* 00DDC 80B34A8C E7A6003C */  swc1    $f6, 0x003C($sp)           
.L80B34A90:
/* 00DE0 80B34A90 C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 00DE4 80B34A94 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 00DE8 80B34A98 4600103E */  c.le.s  $f2, $f0                   
/* 00DEC 80B34A9C 46089281 */  sub.s   $f10, $f18, $f8            
/* 00DF0 80B34AA0 4600540D */  trunc.w.s $f16, $f10                 
/* 00DF4 80B34AA4 440E8000 */  mfc1    $t6, $f16                  
/* 00DF8 80B34AA8 45000003 */  bc1f    .L80B34AB8                 
/* 00DFC 80B34AAC AFAE0058 */  sw      $t6, 0x0058($sp)           
/* 00E00 80B34AB0 10000003 */  beq     $zero, $zero, .L80B34AC0   
/* 00E04 80B34AB4 E7A0003C */  swc1    $f0, 0x003C($sp)           
.L80B34AB8:
/* 00E08 80B34AB8 46000107 */  neg.s   $f4, $f0                   
/* 00E0C 80B34ABC E7A4003C */  swc1    $f4, 0x003C($sp)           
.L80B34AC0:
/* 00E10 80B34AC0 0C00B821 */  jal     func_8002E084              
/* 00E14 80B34AC4 240511C7 */  addiu   $a1, $zero, 0x11C7         ## $a1 = 000011C7
/* 00E18 80B34AC8 14400012 */  bne     $v0, $zero, .L80B34B14     
/* 00E1C 80B34ACC 3C0142B4 */  lui     $at, 0x42B4                ## $at = 42B40000
/* 00E20 80B34AD0 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00E24 80B34AD4 00000000 */  nop
/* 00E28 80B34AD8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E2C 80B34ADC 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00E30 80B34AE0 00000000 */  nop
/* 00E34 80B34AE4 4600303C */  c.lt.s  $f6, $f0                   
/* 00E38 80B34AE8 00000000 */  nop
/* 00E3C 80B34AEC 45000005 */  bc1f    .L80B34B04                 
/* 00E40 80B34AF0 00000000 */  nop
/* 00E44 80B34AF4 0C2CD3CA */  jal     func_80B34F28              
/* 00E48 80B34AF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E4C 80B34AFC 10000049 */  beq     $zero, $zero, .L80B34C24   
/* 00E50 80B34B00 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34B04:
/* 00E54 80B34B04 0C2CD157 */  jal     func_80B3455C              
/* 00E58 80B34B08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E5C 80B34B0C 10000045 */  beq     $zero, $zero, .L80B34C24   
/* 00E60 80B34B10 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34B14:
/* 00E64 80B34B14 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 00E68 80B34B18 C7AA0050 */  lwc1    $f10, 0x0050($sp)          
/* 00E6C 80B34B1C C6120090 */  lwc1    $f18, 0x0090($s0)          ## 00000090
/* 00E70 80B34B20 8FAF0048 */  lw      $t7, 0x0048($sp)           
/* 00E74 80B34B24 460A4400 */  add.s   $f16, $f8, $f10            
/* 00E78 80B34B28 4610903C */  c.lt.s  $f18, $f16                 
/* 00E7C 80B34B2C 00000000 */  nop
/* 00E80 80B34B30 4502003C */  bc1fl   .L80B34C24                 
/* 00E84 80B34B34 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00E88 80B34B38 85F800B6 */  lh      $t8, 0x00B6($t7)           ## 000000B6
/* 00E8C 80B34B3C 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00E90 80B34B40 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00E94 80B34B44 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00E98 80B34B48 03191823 */  subu    $v1, $t8, $t9              
/* 00E9C 80B34B4C 00031C00 */  sll     $v1, $v1, 16               
/* 00EA0 80B34B50 00031C03 */  sra     $v1, $v1, 16               
/* 00EA4 80B34B54 0C00CEAE */  jal     func_80033AB8              
/* 00EA8 80B34B58 A7A30042 */  sh      $v1, 0x0042($sp)           
/* 00EAC 80B34B5C 1440001C */  bne     $v0, $zero, .L80B34BD0     
/* 00EB0 80B34B60 87A30042 */  lh      $v1, 0x0042($sp)           
/* 00EB4 80B34B64 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00EB8 80B34B68 A7A30042 */  sh      $v1, 0x0042($sp)           
/* 00EBC 80B34B6C 3C0180B3 */  lui     $at, %hi(D_80B37B84)       ## $at = 80B30000
/* 00EC0 80B34B70 C4247B84 */  lwc1    $f4, %lo(D_80B37B84)($at)  
/* 00EC4 80B34B74 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00EC8 80B34B78 87A30042 */  lh      $v1, 0x0042($sp)           
/* 00ECC 80B34B7C 4600203C */  c.lt.s  $f4, $f0                   
/* 00ED0 80B34B80 00000000 */  nop
/* 00ED4 80B34B84 4501000E */  bc1t    .L80B34BC0                 
/* 00ED8 80B34B88 00000000 */  nop
/* 00EDC 80B34B8C 44813000 */  mtc1    $at, $f6                   ## $f6 = 80.00
/* 00EE0 80B34B90 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 00EE4 80B34B94 4606403E */  c.le.s  $f8, $f6                   
/* 00EE8 80B34B98 00000000 */  nop
/* 00EEC 80B34B9C 4502000D */  bc1fl   .L80B34BD4                 
/* 00EF0 80B34BA0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00EF4 80B34BA4 04600003 */  bltz    $v1, .L80B34BB4            
/* 00EF8 80B34BA8 00031023 */  subu    $v0, $zero, $v1            
/* 00EFC 80B34BAC 10000001 */  beq     $zero, $zero, .L80B34BB4   
/* 00F00 80B34BB0 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B34BB4:
/* 00F04 80B34BB4 284138E0 */  slti    $at, $v0, 0x38E0           
/* 00F08 80B34BB8 50200006 */  beql    $at, $zero, .L80B34BD4     
/* 00F0C 80B34BBC 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34BC0:
/* 00F10 80B34BC0 0C2CD550 */  jal     func_80B35540              
/* 00F14 80B34BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F18 80B34BC8 10000016 */  beq     $zero, $zero, .L80B34C24   
/* 00F1C 80B34BCC 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34BD0:
/* 00F20 80B34BD0 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34BD4:
/* 00F24 80B34BD4 0C00CEAE */  jal     func_80033AB8              
/* 00F28 80B34BD8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F2C 80B34BDC 1040000E */  beq     $v0, $zero, .L80B34C18     
/* 00F30 80B34BE0 00000000 */  nop
/* 00F34 80B34BE4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00F38 80B34BE8 00000000 */  nop
/* 00F3C 80B34BEC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00F40 80B34BF0 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 00F44 80B34BF4 00000000 */  nop
/* 00F48 80B34BF8 4600503C */  c.lt.s  $f10, $f0                  
/* 00F4C 80B34BFC 00000000 */  nop
/* 00F50 80B34C00 45000005 */  bc1f    .L80B34C18                 
/* 00F54 80B34C04 00000000 */  nop
/* 00F58 80B34C08 0C2CD6E5 */  jal     func_80B35B94              
/* 00F5C 80B34C0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F60 80B34C10 10000004 */  beq     $zero, $zero, .L80B34C24   
/* 00F64 80B34C14 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34C18:
/* 00F68 80B34C18 0C2CD3CA */  jal     func_80B34F28              
/* 00F6C 80B34C1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F70 80B34C20 8FA40064 */  lw      $a0, 0x0064($sp)           
.L80B34C24:
/* 00F74 80B34C24 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F78 80B34C28 0C2CCFEC */  jal     func_80B33FB0              
/* 00F7C 80B34C2C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00F80 80B34C30 1440002D */  bne     $v0, $zero, .L80B34CE8     
/* 00F84 80B34C34 8FA80064 */  lw      $t0, 0x0064($sp)           
/* 00F88 80B34C38 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00F8C 80B34C3C 01284821 */  addu    $t1, $t1, $t0              
/* 00F90 80B34C40 8D291DE4 */  lw      $t1, 0x1DE4($t1)           ## 00011DE4
/* 00F94 80B34C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F98 80B34C48 312A005F */  andi    $t2, $t1, 0x005F           ## $t2 = 00000000
/* 00F9C 80B34C4C 55400004 */  bnel    $t2, $zero, .L80B34C60     
/* 00FA0 80B34C50 C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
/* 00FA4 80B34C54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FA8 80B34C58 2405383E */  addiu   $a1, $zero, 0x383E         ## $a1 = 0000383E
/* 00FAC 80B34C5C C61201A0 */  lwc1    $f18, 0x01A0($s0)          ## 000001A0
.L80B34C60:
/* 00FB0 80B34C60 8FA2005C */  lw      $v0, 0x005C($sp)           
/* 00FB4 80B34C64 8FAD0058 */  lw      $t5, 0x0058($sp)           
/* 00FB8 80B34C68 4600940D */  trunc.w.s $f16, $f18                 
/* 00FBC 80B34C6C 440C8000 */  mfc1    $t4, $f16                  
/* 00FC0 80B34C70 00000000 */  nop
/* 00FC4 80B34C74 504C001D */  beql    $v0, $t4, .L80B34CEC       
/* 00FC8 80B34C78 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00FCC 80B34C7C 1DA0001A */  bgtz    $t5, .L80B34CE8            
/* 00FD0 80B34C80 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 00FD4 80B34C84 4600218D */  trunc.w.s $f6, $f4                   
/* 00FD8 80B34C88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FDC 80B34C8C 440F3000 */  mfc1    $t7, $f6                   
/* 00FE0 80B34C90 00000000 */  nop
/* 00FE4 80B34C94 01E2C021 */  addu    $t8, $t7, $v0              
/* 00FE8 80B34C98 5B000014 */  blezl   $t8, .L80B34CEC            
/* 00FEC 80B34C9C 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00FF0 80B34CA0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00FF4 80B34CA4 2405385A */  addiu   $a1, $zero, 0x385A         ## $a1 = 0000385A
/* 00FF8 80B34CA8 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00FFC 80B34CAC 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 01000 80B34CB0 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 01004 80B34CB4 24080032 */  addiu   $t0, $zero, 0x0032         ## $t0 = 00000032
/* 01008 80B34CB8 24090032 */  addiu   $t1, $zero, 0x0032         ## $t1 = 00000032
/* 0100C 80B34CBC 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01010 80B34CC0 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 01014 80B34CC4 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 01018 80B34CC8 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 0101C 80B34CCC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 01020 80B34CD0 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 01024 80B34CD4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01028 80B34CD8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 0102C 80B34CDC 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 01030 80B34CE0 0C00CC98 */  jal     func_80033260              
/* 01034 80B34CE4 E7A80014 */  swc1    $f8, 0x0014($sp)           
.L80B34CE8:
/* 01038 80B34CE8 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B34CEC:
/* 0103C 80B34CEC 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01040 80B34CF0 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 01044 80B34CF4 03E00008 */  jr      $ra                        
/* 01048 80B34CF8 00000000 */  nop

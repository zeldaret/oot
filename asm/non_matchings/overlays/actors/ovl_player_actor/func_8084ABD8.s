glabel func_8084ABD8
/* 189C8 8084ABD8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 189CC 8084ABDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 189D0 8084ABE0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 189D4 8084ABE4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 189D8 8084ABE8 AFA40038 */  sw      $a0, 0x0038($sp)           
/* 189DC 8084ABEC 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 189E0 8084ABF0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 189E4 8084ABF4 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 189E8 8084ABF8 0C00B75E */  jal     func_8002DD78              
/* 189EC 8084ABFC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 189F0 8084AC00 5440003A */  bnel    $v0, $zero, .L8084ACEC     
/* 189F4 8084AC04 8E2D067C */  lw      $t5, 0x067C($s1)           ## 0000067C
/* 189F8 8084AC08 0C20CD2D */  jal     func_808334B4              
/* 189FC 8084AC0C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18A00 8084AC10 54400036 */  bnel    $v0, $zero, .L8084ACEC     
/* 18A04 8084AC14 8E2D067C */  lw      $t5, 0x067C($s1)           ## 0000067C
/* 18A08 8084AC18 16000033 */  bne     $s0, $zero, .L8084ACE8     
/* 18A0C 8084AC1C 3C0E8086 */  lui     $t6, %hi(D_80858AB4)       ## $t6 = 80860000
/* 18A10 8084AC20 8DCE8AB4 */  lw      $t6, %lo(D_80858AB4)($t6)  
/* 18A14 8084AC24 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 18A18 8084AC28 44814000 */  mtc1    $at, $f8                   ## $f8 = 240.00
/* 18A1C 8084AC2C 81CF0015 */  lb      $t7, 0x0015($t6)           ## 80860015
/* 18A20 8084AC30 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 18A24 8084AC34 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 18A28 8084AC38 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 18A2C 8084AC3C 26240044 */  addiu   $a0, $s1, 0x0044           ## $a0 = 00000044
/* 18A30 8084AC40 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 18A34 8084AC44 468021A0 */  cvt.s.w $f6, $f4                   
/* 18A38 8084AC48 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 18A3C 8084AC4C 46083282 */  mul.s   $f10, $f6, $f8             
/* 18A40 8084AC50 4600540D */  trunc.w.s $f16, $f10                 
/* 18A44 8084AC54 44108000 */  mfc1    $s0, $f16                  
/* 18A48 8084AC58 00000000 */  nop
/* 18A4C 8084AC5C 00108400 */  sll     $s0, $s0, 16               
/* 18A50 8084AC60 00108403 */  sra     $s0, $s0, 16               
/* 18A54 8084AC64 00102C00 */  sll     $a1, $s0, 16               
/* 18A58 8084AC68 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 18A5C 8084AC6C 00052C03 */  sra     $a1, $a1, 16               
/* 18A60 8084AC70 3C088086 */  lui     $t0, %hi(D_80858AB4)       ## $t0 = 80860000
/* 18A64 8084AC74 8D088AB4 */  lw      $t0, %lo(D_80858AB4)($t0)  
/* 18A68 8084AC78 3C01C180 */  lui     $at, 0xC180                ## $at = C1800000
/* 18A6C 8084AC7C 44813000 */  mtc1    $at, $f6                   ## $f6 = -16.00
/* 18A70 8084AC80 81090014 */  lb      $t1, 0x0014($t0)           ## 80860014
/* 18A74 8084AC84 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 18A78 8084AC88 00000000 */  nop
/* 18A7C 8084AC8C 46809120 */  cvt.s.w $f4, $f18                  
/* 18A80 8084AC90 46062202 */  mul.s   $f8, $f4, $f6              
/* 18A84 8084AC94 4600428D */  trunc.w.s $f10, $f8                  
/* 18A88 8084AC98 44105000 */  mfc1    $s0, $f10                  
/* 18A8C 8084AC9C 00000000 */  nop
/* 18A90 8084ACA0 00108400 */  sll     $s0, $s0, 16               
/* 18A94 8084ACA4 00108403 */  sra     $s0, $s0, 16               
/* 18A98 8084ACA8 2A01F448 */  slti    $at, $s0, 0xF448           
/* 18A9C 8084ACAC 50200004 */  beql    $at, $zero, .L8084ACC0     
/* 18AA0 8084ACB0 2A010BB9 */  slti    $at, $s0, 0x0BB9           
/* 18AA4 8084ACB4 10000008 */  beq     $zero, $zero, .L8084ACD8   
/* 18AA8 8084ACB8 2410F448 */  addiu   $s0, $zero, 0xF448         ## $s0 = FFFFF448
/* 18AAC 8084ACBC 2A010BB9 */  slti    $at, $s0, 0x0BB9           
.L8084ACC0:
/* 18AB0 8084ACC0 14200003 */  bne     $at, $zero, .L8084ACD0     
/* 18AB4 8084ACC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = FFFFF448
/* 18AB8 8084ACC8 10000001 */  beq     $zero, $zero, .L8084ACD0   
/* 18ABC 8084ACCC 24050BB8 */  addiu   $a1, $zero, 0x0BB8         ## $a1 = 00000BB8
.L8084ACD0:
/* 18AC0 8084ACD0 00058400 */  sll     $s0, $a1, 16               
/* 18AC4 8084ACD4 00108403 */  sra     $s0, $s0, 16               
.L8084ACD8:
/* 18AC8 8084ACD8 862B0046 */  lh      $t3, 0x0046($s1)           ## 00000046
/* 18ACC 8084ACDC 01706021 */  addu    $t4, $t3, $s0              
/* 18AD0 8084ACE0 10000065 */  beq     $zero, $zero, .L8084AE78   
/* 18AD4 8084ACE4 A62C0046 */  sh      $t4, 0x0046($s1)           ## 00000046
.L8084ACE8:
/* 18AD8 8084ACE8 8E2D067C */  lw      $t5, 0x067C($s1)           ## 0000067C
.L8084ACEC:
/* 18ADC 8084ACEC 241036B0 */  addiu   $s0, $zero, 0x36B0         ## $s0 = 000036B0
/* 18AE0 8084ACF0 3C0F8086 */  lui     $t7, %hi(D_80858AB4)       ## $t7 = 80860000
/* 18AE4 8084ACF4 000D7200 */  sll     $t6, $t5,  8               
/* 18AE8 8084ACF8 05C10003 */  bgez    $t6, .L8084AD08            
/* 18AEC 8084ACFC 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 18AF0 8084AD00 10000001 */  beq     $zero, $zero, .L8084AD08   
/* 18AF4 8084AD04 24100DAC */  addiu   $s0, $zero, 0x0DAC         ## $s0 = 00000DAC
.L8084AD08:
/* 18AF8 8084AD08 8DEF8AB4 */  lw      $t7, %lo(D_80858AB4)($t7)  
/* 18AFC 8084AD0C 81E20015 */  lb      $v0, 0x0015($t7)           ## 80860015
/* 18B00 8084AD10 04400003 */  bltz    $v0, .L8084AD20            
/* 18B04 8084AD14 00022080 */  sll     $a0, $v0,  2               
/* 18B08 8084AD18 10000001 */  beq     $zero, $zero, .L8084AD20   
/* 18B0C 8084AD1C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L8084AD20:
/* 18B10 8084AD20 00822023 */  subu    $a0, $a0, $v0              
/* 18B14 8084AD24 000420C0 */  sll     $a0, $a0,  3               
/* 18B18 8084AD28 00822021 */  addu    $a0, $a0, $v0              
/* 18B1C 8084AD2C 000420C0 */  sll     $a0, $a0,  3               
/* 18B20 8084AD30 00042400 */  sll     $a0, $a0, 16               
/* 18B24 8084AD34 00042403 */  sra     $a0, $a0, 16               
/* 18B28 8084AD38 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 18B2C 8084AD3C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 18B30 8084AD40 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 18B34 8084AD44 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 18B38 8084AD48 3C018085 */  lui     $at, %hi(D_808554F4)       ## $at = 80850000
/* 18B3C 8084AD4C C42454F4 */  lwc1    $f4, %lo(D_808554F4)($at)  
/* 18B40 8084AD50 46008481 */  sub.s   $f18, $f16, $f0            
/* 18B44 8084AD54 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 18B48 8084AD58 862B0044 */  lh      $t3, 0x0044($s1)           ## 00000044
/* 18B4C 8084AD5C 00101823 */  subu    $v1, $zero, $s0            
/* 18B50 8084AD60 46049182 */  mul.s   $f6, $f18, $f4             
/* 18B54 8084AD64 3C0F8086 */  lui     $t7, %hi(D_80858AB4)       ## $t7 = 80860000
/* 18B58 8084AD68 4600320D */  trunc.w.s $f8, $f6                   
/* 18B5C 8084AD6C 44194000 */  mfc1    $t9, $f8                   
/* 18B60 8084AD70 00000000 */  nop
/* 18B64 8084AD74 03250019 */  multu   $t9, $a1                   
/* 18B68 8084AD78 00005012 */  mflo    $t2                        
/* 18B6C 8084AD7C 016A6021 */  addu    $t4, $t3, $t2              
/* 18B70 8084AD80 A62C0044 */  sh      $t4, 0x0044($s1)           ## 00000044
/* 18B74 8084AD84 86220044 */  lh      $v0, 0x0044($s1)           ## 00000044
/* 18B78 8084AD88 0043082A */  slt     $at, $v0, $v1              
/* 18B7C 8084AD8C 50200004 */  beql    $at, $zero, .L8084ADA0     
/* 18B80 8084AD90 0202082A */  slt     $at, $s0, $v0              
/* 18B84 8084AD94 10000007 */  beq     $zero, $zero, .L8084ADB4   
/* 18B88 8084AD98 A6230044 */  sh      $v1, 0x0044($s1)           ## 00000044
/* 18B8C 8084AD9C 0202082A */  slt     $at, $s0, $v0              
.L8084ADA0:
/* 18B90 8084ADA0 10200003 */  beq     $at, $zero, .L8084ADB0     
/* 18B94 8084ADA4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 18B98 8084ADA8 10000001 */  beq     $zero, $zero, .L8084ADB0   
/* 18B9C 8084ADAC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000DAC
.L8084ADB0:
/* 18BA0 8084ADB0 A6250044 */  sh      $a1, 0x0044($s1)           ## 00000044
.L8084ADB4:
/* 18BA4 8084ADB4 8DEF8AB4 */  lw      $t7, %lo(D_80858AB4)($t7)  
/* 18BA8 8084ADB8 862D0046 */  lh      $t5, 0x0046($s1)           ## 00000046
/* 18BAC 8084ADBC 862E00B6 */  lh      $t6, 0x00B6($s1)           ## 000000B6
/* 18BB0 8084ADC0 81E20014 */  lb      $v0, 0x0014($t7)           ## 80860014
/* 18BB4 8084ADC4 2405FFFF */  addiu   $a1, $zero, 0xFFFF         ## $a1 = FFFFFFFF
/* 18BB8 8084ADC8 01AE8023 */  subu    $s0, $t5, $t6              
/* 18BBC 8084ADCC 00108400 */  sll     $s0, $s0, 16               
/* 18BC0 8084ADD0 04400003 */  bltz    $v0, .L8084ADE0            
/* 18BC4 8084ADD4 00108403 */  sra     $s0, $s0, 16               
/* 18BC8 8084ADD8 10000001 */  beq     $zero, $zero, .L8084ADE0   
/* 18BCC 8084ADDC 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
.L8084ADE0:
/* 18BD0 8084ADE0 00022080 */  sll     $a0, $v0,  2               
/* 18BD4 8084ADE4 00822023 */  subu    $a0, $a0, $v0              
/* 18BD8 8084ADE8 000420C0 */  sll     $a0, $a0,  3               
/* 18BDC 8084ADEC 00822021 */  addu    $a0, $a0, $v0              
/* 18BE0 8084ADF0 000420C0 */  sll     $a0, $a0,  3               
/* 18BE4 8084ADF4 00042400 */  sll     $a0, $a0, 16               
/* 18BE8 8084ADF8 00042403 */  sra     $a0, $a0, 16               
/* 18BEC 8084ADFC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 18BF0 8084AE00 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 18BF4 8084AE04 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 18BF8 8084AE08 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 18BFC 8084AE0C 3C018085 */  lui     $at, %hi(D_808554F8)       ## $at = 80850000
/* 18C00 8084AE10 C43254F8 */  lwc1    $f18, %lo(D_808554F8)($at) 
/* 18C04 8084AE14 46005401 */  sub.s   $f16, $f10, $f0            
/* 18C08 8084AE18 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 18C0C 8084AE1C 46128102 */  mul.s   $f4, $f16, $f18            
/* 18C10 8084AE20 4600218D */  trunc.w.s $f6, $f4                   
/* 18C14 8084AE24 44193000 */  mfc1    $t9, $f6                   
/* 18C18 8084AE28 00000000 */  nop
/* 18C1C 8084AE2C 03250019 */  multu   $t9, $a1                   
/* 18C20 8084AE30 00005812 */  mflo    $t3                        
/* 18C24 8084AE34 020B8021 */  addu    $s0, $s0, $t3              
/* 18C28 8084AE38 00108400 */  sll     $s0, $s0, 16               
/* 18C2C 8084AE3C 00108403 */  sra     $s0, $s0, 16               
/* 18C30 8084AE40 2A01B556 */  slti    $at, $s0, 0xB556           
/* 18C34 8084AE44 50200004 */  beql    $at, $zero, .L8084AE58     
/* 18C38 8084AE48 2A014AAB */  slti    $at, $s0, 0x4AAB           
/* 18C3C 8084AE4C 10000007 */  beq     $zero, $zero, .L8084AE6C   
/* 18C40 8084AE50 2405B556 */  addiu   $a1, $zero, 0xB556         ## $a1 = FFFFB556
/* 18C44 8084AE54 2A014AAB */  slti    $at, $s0, 0x4AAB           
.L8084AE58:
/* 18C48 8084AE58 14200003 */  bne     $at, $zero, .L8084AE68     
/* 18C4C 8084AE5C 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000DAC
/* 18C50 8084AE60 10000001 */  beq     $zero, $zero, .L8084AE68   
/* 18C54 8084AE64 24024AAA */  addiu   $v0, $zero, 0x4AAA         ## $v0 = 00004AAA
.L8084AE68:
/* 18C58 8084AE68 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00004AAA
.L8084AE6C:
/* 18C5C 8084AE6C 862A00B6 */  lh      $t2, 0x00B6($s1)           ## 000000B6
/* 18C60 8084AE70 00AA6021 */  addu    $t4, $a1, $t2              
/* 18C64 8084AE74 A62C0046 */  sh      $t4, 0x0046($s1)           ## 00000046
.L8084AE78:
/* 18C68 8084AE78 962D06AE */  lhu     $t5, 0x06AE($s1)           ## 000006AE
/* 18C6C 8084AE7C 3C050001 */  lui     $a1, 0x0001                ## $a1 = 00010000
/* 18C70 8084AE80 35AE0002 */  ori     $t6, $t5, 0x0002           ## $t6 = 00000002
/* 18C74 8084AE84 A62E06AE */  sh      $t6, 0x06AE($s1)           ## 000006AE
/* 18C78 8084AE88 8FAF0038 */  lw      $t7, 0x0038($sp)           
/* 18C7C 8084AE8C 00AF2821 */  addu    $a1, $a1, $t7              
/* 18C80 8084AE90 80A51E5C */  lb      $a1, 0x1E5C($a1)           ## 00011E5C
/* 18C84 8084AE94 0005282B */  sltu    $a1, $zero, $a1            
/* 18C88 8084AE98 14A00009 */  bne     $a1, $zero, .L8084AEC0     
/* 18C8C 8084AE9C 00000000 */  nop
/* 18C90 8084AEA0 0C00B75E */  jal     func_8002DD78              
/* 18C94 8084AEA4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18C98 8084AEA8 0002282B */  sltu    $a1, $zero, $v0            
/* 18C9C 8084AEAC 14A00004 */  bne     $a1, $zero, .L8084AEC0     
/* 18CA0 8084AEB0 00000000 */  nop
/* 18CA4 8084AEB4 0C20CD2D */  jal     func_808334B4              
/* 18CA8 8084AEB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18CAC 8084AEBC 0002282B */  sltu    $a1, $zero, $v0            
.L8084AEC0:
/* 18CB0 8084AEC0 0C20DAAE */  jal     func_80836AB8              
/* 18CB4 8084AEC4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 18CB8 8084AEC8 87B80046 */  lh      $t8, 0x0046($sp)           
/* 18CBC 8084AECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 18CC0 8084AED0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 18CC4 8084AED4 00581023 */  subu    $v0, $v0, $t8              
/* 18CC8 8084AED8 00021400 */  sll     $v0, $v0, 16               
/* 18CCC 8084AEDC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 18CD0 8084AEE0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 18CD4 8084AEE4 03E00008 */  jr      $ra                        
/* 18CD8 8084AEE8 00021403 */  sra     $v0, $v0, 16               



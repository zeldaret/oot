glabel func_8097DF70
/* 00900 8097DF70 27BDFF30 */  addiu   $sp, $sp, 0xFF30           ## $sp = FFFFFF30
/* 00904 8097DF74 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 00908 8097DF78 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 0090C 8097DF7C 4481F000 */  mtc1    $at, $f30                  ## $f30 = 2.00
/* 00910 8097DF80 F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 00914 8097DF84 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00918 8097DF88 4481E000 */  mtc1    $at, $f28                  ## $f28 = 5.00
/* 0091C 8097DF8C F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 00920 8097DF90 3C018098 */  lui     $at, %hi(D_80982A88)       ## $at = 80980000
/* 00924 8097DF94 C43A2A88 */  lwc1    $f26, %lo(D_80982A88)($at) 
/* 00928 8097DF98 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 0092C 8097DF9C 3C014180 */  lui     $at, 0x4180                ## $at = 41800000
/* 00930 8097DFA0 4481C000 */  mtc1    $at, $f24                  ## $f24 = 16.00
/* 00934 8097DFA4 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 00938 8097DFA8 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 0093C 8097DFAC 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00940 8097DFB0 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 00944 8097DFB4 AFB60090 */  sw      $s6, 0x0090($sp)           
/* 00948 8097DFB8 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 0094C 8097DFBC AFB40088 */  sw      $s4, 0x0088($sp)           
/* 00950 8097DFC0 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 00954 8097DFC4 AFB20080 */  sw      $s2, 0x0080($sp)           
/* 00958 8097DFC8 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 0095C 8097DFCC 3C170600 */  lui     $s7, 0x0600                ## $s7 = 06000000
/* 00960 8097DFD0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 30.00
/* 00964 8097DFD4 00C09025 */  or      $s2, $a2, $zero            ## $s2 = 00000000
/* 00968 8097DFD8 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 0096C 8097DFDC AFBF009C */  sw      $ra, 0x009C($sp)           
/* 00970 8097DFE0 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 00974 8097DFE4 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00978 8097DFE8 AFA400D0 */  sw      $a0, 0x00D0($sp)           
/* 0097C 8097DFEC 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00980 8097DFF0 26F70EA0 */  addiu   $s7, $s7, 0x0EA0           ## $s7 = 06000EA0
/* 00984 8097DFF4 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 00988 8097DFF8 27B500C4 */  addiu   $s5, $sp, 0x00C4           ## $s5 = FFFFFFF4
/* 0098C 8097DFFC 27B600B8 */  addiu   $s6, $sp, 0x00B8           ## $s6 = FFFFFFE8
/* 00990 8097E000 241E000C */  addiu   $s8, $zero, 0x000C         ## $s8 = 0000000C
.L8097E004:
/* 00994 8097E004 00112400 */  sll     $a0, $s1, 16               
/* 00998 8097E008 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 0099C 8097E00C 00042403 */  sra     $a0, $a0, 16               
/* 009A0 8097E010 46180102 */  mul.s   $f4, $f0, $f24             
/* 009A4 8097E014 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009A8 8097E018 E7A400C4 */  swc1    $f4, 0x00C4($sp)           
/* 009AC 8097E01C 461C0182 */  mul.s   $f6, $f0, $f28             
/* 009B0 8097E020 00112400 */  sll     $a0, $s1, 16               
/* 009B4 8097E024 00042403 */  sra     $a0, $a0, 16               
/* 009B8 8097E028 461E3200 */  add.s   $f8, $f6, $f30             
/* 009BC 8097E02C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 009C0 8097E030 E7A800C8 */  swc1    $f8, 0x00C8($sp)           
/* 009C4 8097E034 46180282 */  mul.s   $f10, $f0, $f24            
/* 009C8 8097E038 C7B000C4 */  lwc1    $f16, 0x00C4($sp)          
/* 009CC 8097E03C 461A8482 */  mul.s   $f18, $f16, $f26           
/* 009D0 8097E040 E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 009D4 8097E044 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 009D8 8097E048 E7B200B8 */  swc1    $f18, 0x00B8($sp)          
/* 009DC 8097E04C 3C014210 */  lui     $at, 0x4210                ## $at = 42100000
/* 009E0 8097E050 44812000 */  mtc1    $at, $f4                   ## $f4 = 36.00
/* 009E4 8097E054 C7B000CC */  lwc1    $f16, 0x00CC($sp)          
/* 009E8 8097E058 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 009EC 8097E05C 46040182 */  mul.s   $f6, $f0, $f4              
/* 009F0 8097E060 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 009F4 8097E064 C7A400C4 */  lwc1    $f4, 0x00C4($sp)           
/* 009F8 8097E068 461A8482 */  mul.s   $f18, $f16, $f26           
/* 009FC 8097E06C 46083280 */  add.s   $f10, $f6, $f8             
/* 00A00 8097E070 E7B200C0 */  swc1    $f18, 0x00C0($sp)          
/* 00A04 8097E074 E7AA00BC */  swc1    $f10, 0x00BC($sp)          
/* 00A08 8097E078 C6460000 */  lwc1    $f6, 0x0000($s2)           ## 00000000
/* 00A0C 8097E07C C7AA00C8 */  lwc1    $f10, 0x00C8($sp)          
/* 00A10 8097E080 46062200 */  add.s   $f8, $f4, $f6              
/* 00A14 8097E084 E7A800C4 */  swc1    $f8, 0x00C4($sp)           
/* 00A18 8097E088 C6520004 */  lwc1    $f18, 0x0004($s2)          ## 00000004
/* 00A1C 8097E08C 46125100 */  add.s   $f4, $f10, $f18            
/* 00A20 8097E090 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 00A24 8097E094 C6460008 */  lwc1    $f6, 0x0008($s2)           ## 00000008
/* 00A28 8097E098 46068200 */  add.s   $f8, $f16, $f6             
/* 00A2C 8097E09C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A30 8097E0A0 E7A800CC */  swc1    $f8, 0x00CC($sp)           
/* 00A34 8097E0A4 3C018098 */  lui     $at, %hi(D_80982A8C)       ## $at = 80980000
/* 00A38 8097E0A8 C42A2A8C */  lwc1    $f10, %lo(D_80982A8C)($at) 
/* 00A3C 8097E0AC 3C018098 */  lui     $at, %hi(D_80982A90)       ## $at = 80980000
/* 00A40 8097E0B0 460A003C */  c.lt.s  $f0, $f10                  
/* 00A44 8097E0B4 00000000 */  nop
/* 00A48 8097E0B8 45000003 */  bc1f    .L8097E0C8                 
/* 00A4C 8097E0BC 00000000 */  nop
/* 00A50 8097E0C0 10000009 */  beq     $zero, $zero, .L8097E0E8   
/* 00A54 8097E0C4 24100061 */  addiu   $s0, $zero, 0x0061         ## $s0 = 00000061
.L8097E0C8:
/* 00A58 8097E0C8 C4322A90 */  lwc1    $f18, %lo(D_80982A90)($at) 
/* 00A5C 8097E0CC 24100021 */  addiu   $s0, $zero, 0x0021         ## $s0 = 00000021
/* 00A60 8097E0D0 4612003C */  c.lt.s  $f0, $f18                  
/* 00A64 8097E0D4 00000000 */  nop
/* 00A68 8097E0D8 45000003 */  bc1f    .L8097E0E8                 
/* 00A6C 8097E0DC 00000000 */  nop
/* 00A70 8097E0E0 10000001 */  beq     $zero, $zero, .L8097E0E8   
/* 00A74 8097E0E4 24100041 */  addiu   $s0, $zero, 0x0041         ## $s0 = 00000041
.L8097E0E8:
/* 00A78 8097E0E8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A7C 8097E0EC 00000000 */  nop
/* 00A80 8097E0F0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00A84 8097E0F4 46000506 */  mov.s   $f20, $f0                  
/* 00A88 8097E0F8 4616A102 */  mul.s   $f4, $f20, $f22            
/* 00A8C 8097E0FC 240EFF38 */  addiu   $t6, $zero, 0xFF38         ## $t6 = FFFFFF38
/* 00A90 8097E100 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 00A94 8097E104 46160202 */  mul.s   $f8, $f0, $f22             
/* 00A98 8097E108 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00A9C 8097E10C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00AA0 8097E110 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00AA4 8097E114 240F0186 */  addiu   $t7, $zero, 0x0186         ## $t7 = 00000186
/* 00AA8 8097E118 46162400 */  add.s   $f16, $f4, $f22            
/* 00AAC 8097E11C 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00AB0 8097E120 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 00AB4 8097E124 4600428D */  trunc.w.s $f10, $f8                  
/* 00AB8 8097E128 240A012C */  addiu   $t2, $zero, 0x012C         ## $t2 = 0000012C
/* 00ABC 8097E12C AFAA002C */  sw      $t2, 0x002C($sp)           
/* 00AC0 8097E130 4600818D */  trunc.w.s $f6, $f16                  
/* 00AC4 8097E134 440C5000 */  mfc1    $t4, $f10                  
/* 00AC8 8097E138 AFA90028 */  sw      $t1, 0x0028($sp)           
/* 00ACC 8097E13C AFB8001C */  sw      $t8, 0x001C($sp)           
/* 00AD0 8097E140 44083000 */  mfc1    $t0, $f6                   
/* 00AD4 8097E144 258D001E */  addiu   $t5, $t4, 0x001E           ## $t5 = 0000001E
/* 00AD8 8097E148 AFAD0030 */  sw      $t5, 0x0030($sp)           
/* 00ADC 8097E14C AFAF0038 */  sw      $t7, 0x0038($sp)           
/* 00AE0 8097E150 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 00AE4 8097E154 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00AE8 8097E158 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFF4
/* 00AEC 8097E15C 02C03025 */  or      $a2, $s6, $zero            ## $a2 = FFFFFFE8
/* 00AF0 8097E160 02403825 */  or      $a3, $s2, $zero            ## $a3 = 00000000
/* 00AF4 8097E164 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00AF8 8097E168 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00AFC 8097E16C AFB7003C */  sw      $s7, 0x003C($sp)           
/* 00B00 8097E170 0C00A7A3 */  jal     Effect_SpawnFragment
              
/* 00B04 8097E174 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00B08 8097E178 26311555 */  addiu   $s1, $s1, 0x1555           ## $s1 = 00001555
/* 00B0C 8097E17C 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 00B10 8097E180 00118C00 */  sll     $s1, $s1, 16               
/* 00B14 8097E184 167EFF9F */  bne     $s3, $s8, .L8097E004       
/* 00B18 8097E188 00118C03 */  sra     $s1, $s1, 16               
/* 00B1C 8097E18C 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 00B20 8097E190 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 00B24 8097E194 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 00B28 8097E198 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 00B2C 8097E19C D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 00B30 8097E1A0 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 00B34 8097E1A4 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 00B38 8097E1A8 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 00B3C 8097E1AC 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 00B40 8097E1B0 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 00B44 8097E1B4 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 00B48 8097E1B8 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 00B4C 8097E1BC 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 00B50 8097E1C0 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 00B54 8097E1C4 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 00B58 8097E1C8 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 00B5C 8097E1CC 03E00008 */  jr      $ra                        
/* 00B60 8097E1D0 27BD00D0 */  addiu   $sp, $sp, 0x00D0           ## $sp = 00000000



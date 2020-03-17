glabel func_80AADEF0
/* 00780 80AADEF0 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 00784 80AADEF4 AFBF0044 */  sw      $ra, 0x0044($sp)           
/* 00788 80AADEF8 AFB10034 */  sw      $s1, 0x0034($sp)           
/* 0078C 80AADEFC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 00790 80AADF00 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 00794 80AADF04 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00798 80AADF08 AFB40040 */  sw      $s4, 0x0040($sp)           
/* 0079C 80AADF0C AFB3003C */  sw      $s3, 0x003C($sp)           
/* 007A0 80AADF10 AFB20038 */  sw      $s2, 0x0038($sp)           
/* 007A4 80AADF14 F7B60028 */  sdc1    $f22, 0x0028($sp)          
/* 007A8 80AADF18 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 007AC 80AADF1C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 007B0 80AADF20 00A18821 */  addu    $s1, $a1, $at              
/* 007B4 80AADF24 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
/* 007B8 80AADF28 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFEC
/* 007BC 80AADF2C 8E0701F4 */  lw      $a3, 0x01F4($s0)           ## 000001F4
/* 007C0 80AADF30 0C2AB798 */  jal     func_80AADE60              
/* 007C4 80AADF34 8E0601EC */  lw      $a2, 0x01EC($s0)           ## 000001EC
/* 007C8 80AADF38 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 007CC 80AADF3C C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 007D0 80AADF40 C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 007D4 80AADF44 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 007D8 80AADF48 46062501 */  sub.s   $f20, $f4, $f6             
/* 007DC 80AADF4C 460A4581 */  sub.s   $f22, $f8, $f10            
/* 007E0 80AADF50 4600A306 */  mov.s   $f12, $f20                 
/* 007E4 80AADF54 0C03F494 */  jal     func_800FD250              
/* 007E8 80AADF58 4600B386 */  mov.s   $f14, $f22                 
/* 007EC 80AADF5C 3C0180AB */  lui     $at, %hi(D_80AAEC6C)       ## $at = 80AB0000
/* 007F0 80AADF60 C430EC6C */  lwc1    $f16, %lo(D_80AAEC6C)($at) 
/* 007F4 80AADF64 3C0180AB */  lui     $at, %hi(D_80AAEC70)       ## $at = 80AB0000
/* 007F8 80AADF68 46100482 */  mul.s   $f18, $f0, $f16            
/* 007FC 80AADF6C 00000000 */  nop
/* 00800 80AADF70 4614A282 */  mul.s   $f10, $f20, $f20           
/* 00804 80AADF74 00000000 */  nop
/* 00808 80AADF78 4616B402 */  mul.s   $f16, $f22, $f22           
/* 0080C 80AADF7C 4600910D */  trunc.w.s $f4, $f18                  
/* 00810 80AADF80 46105000 */  add.s   $f0, $f10, $f16            
/* 00814 80AADF84 440F2000 */  mfc1    $t7, $f4                   
/* 00818 80AADF88 46000004 */  sqrt.s  $f0, $f0                   
/* 0081C 80AADF8C 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 00820 80AADF90 00000000 */  nop
/* 00824 80AADF94 46803220 */  cvt.s.w $f8, $f6                   
/* 00828 80AADF98 E60001FC */  swc1    $f0, 0x01FC($s0)           ## 000001FC
/* 0082C 80AADF9C E60801F8 */  swc1    $f8, 0x01F8($s0)           ## 000001F8
/* 00830 80AADFA0 C432EC70 */  lwc1    $f18, %lo(D_80AAEC70)($at) 
/* 00834 80AADFA4 4612003E */  c.le.s  $f0, $f18                  
/* 00838 80AADFA8 00000000 */  nop
/* 0083C 80AADFAC 45000073 */  bc1f    .L80AAE17C                 
/* 00840 80AADFB0 00000000 */  nop
/* 00844 80AADFB4 8E0201E8 */  lw      $v0, 0x01E8($s0)           ## 000001E8
/* 00848 80AADFB8 24140002 */  addiu   $s4, $zero, 0x0002         ## $s4 = 00000002
/* 0084C 80AADFBC 24130001 */  addiu   $s3, $zero, 0x0001         ## $s3 = 00000001
/* 00850 80AADFC0 1040006E */  beq     $v0, $zero, .L80AAE17C     
/* 00854 80AADFC4 3C1280AB */  lui     $s2, %hi(D_80AAEBA8)       ## $s2 = 80AB0000
/* 00858 80AADFC8 2652EBA8 */  addiu   $s2, $s2, %lo(D_80AAEBA8)  ## $s2 = 80AAEBA8
/* 0085C 80AADFCC 0002C100 */  sll     $t8, $v0,  4               
.L80AADFD0:
/* 00860 80AADFD0 02582021 */  addu    $a0, $s2, $t8              
/* 00864 80AADFD4 8C880000 */  lw      $t0, 0x0000($a0)           ## 00000000
/* 00868 80AADFD8 8E1901F4 */  lw      $t9, 0x01F4($s0)           ## 000001F4
/* 0086C 80AADFDC 03284821 */  addu    $t1, $t9, $t0              
/* 00870 80AADFE0 AE0901F4 */  sw      $t1, 0x01F4($s0)           ## 000001F4
/* 00874 80AADFE4 8C860008 */  lw      $a2, 0x0008($a0)           ## 00000008
/* 00878 80AADFE8 10C00007 */  beq     $a2, $zero, .L80AAE008     
/* 0087C 80AADFEC 00000000 */  nop
/* 00880 80AADFF0 50D30008 */  beql    $a2, $s3, .L80AAE014       
/* 00884 80AADFF4 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
/* 00888 80AADFF8 50D4000E */  beql    $a2, $s4, .L80AAE034       
/* 0088C 80AADFFC 8E0601F0 */  lw      $a2, 0x01F0($s0)           ## 000001F0
/* 00890 80AAE000 1000000D */  beq     $zero, $zero, .L80AAE038   
/* 00894 80AAE004 8C83000C */  lw      $v1, 0x000C($a0)           ## 0000000C
.L80AAE008:
/* 00898 80AAE008 1000000A */  beq     $zero, $zero, .L80AAE034   
/* 0089C 80AAE00C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 008A0 80AAE010 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
.L80AAE014:
/* 008A4 80AAE014 0C2AB794 */  jal     func_80AADE50              
/* 008A8 80AAE018 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 008AC 80AAE01C 8E0A01E8 */  lw      $t2, 0x01E8($s0)           ## 000001E8
/* 008B0 80AAE020 2446FFFF */  addiu   $a2, $v0, 0xFFFF           ## $a2 = FFFFFFFF
/* 008B4 80AAE024 000A5900 */  sll     $t3, $t2,  4               
/* 008B8 80AAE028 10000002 */  beq     $zero, $zero, .L80AAE034   
/* 008BC 80AAE02C 024B2021 */  addu    $a0, $s2, $t3              
/* 008C0 80AAE030 8E0601F0 */  lw      $a2, 0x01F0($s0)           ## 000001F0
.L80AAE034:
/* 008C4 80AAE034 8C83000C */  lw      $v1, 0x000C($a0)           ## 0000000C
.L80AAE038:
/* 008C8 80AAE038 10600007 */  beq     $v1, $zero, .L80AAE058     
/* 008CC 80AAE03C 00000000 */  nop
/* 008D0 80AAE040 50730008 */  beql    $v1, $s3, .L80AAE064       
/* 008D4 80AAE044 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
/* 008D8 80AAE048 50740010 */  beql    $v1, $s4, .L80AAE08C       
/* 008DC 80AAE04C 8E0301F0 */  lw      $v1, 0x01F0($s0)           ## 000001F0
/* 008E0 80AAE050 1000000F */  beq     $zero, $zero, .L80AAE090   
/* 008E4 80AAE054 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
.L80AAE058:
/* 008E8 80AAE058 1000000C */  beq     $zero, $zero, .L80AAE08C   
/* 008EC 80AAE05C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 008F0 80AAE060 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
.L80AAE064:
/* 008F4 80AAE064 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 008F8 80AAE068 0C2AB794 */  jal     func_80AADE50              
/* 008FC 80AAE06C AFA60060 */  sw      $a2, 0x0060($sp)           
/* 00900 80AAE070 8E0C01E8 */  lw      $t4, 0x01E8($s0)           ## 000001E8
/* 00904 80AAE074 8FA60060 */  lw      $a2, 0x0060($sp)           
/* 00908 80AAE078 2443FFFF */  addiu   $v1, $v0, 0xFFFF           ## $v1 = FFFFFFFF
/* 0090C 80AAE07C 000C6900 */  sll     $t5, $t4,  4               
/* 00910 80AAE080 10000002 */  beq     $zero, $zero, .L80AAE08C   
/* 00914 80AAE084 024D2021 */  addu    $a0, $s2, $t5              
/* 00918 80AAE088 8E0301F0 */  lw      $v1, 0x01F0($s0)           ## 000001F0
.L80AAE08C:
/* 0091C 80AAE08C 8C820000 */  lw      $v0, 0x0000($a0)           ## 00000000
.L80AAE090:
/* 00920 80AAE090 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFEC
/* 00924 80AAE094 04400007 */  bltz    $v0, .L80AAE0B4            
/* 00928 80AAE098 00000000 */  nop
/* 0092C 80AAE09C 8E0701F4 */  lw      $a3, 0x01F4($s0)           ## 000001F4
/* 00930 80AAE0A0 00E6082A */  slt     $at, $a3, $a2              
/* 00934 80AAE0A4 1420000A */  bne     $at, $zero, .L80AAE0D0     
/* 00938 80AAE0A8 0067082A */  slt     $at, $v1, $a3              
/* 0093C 80AAE0AC 54200009 */  bnel    $at, $zero, .L80AAE0D4     
/* 00940 80AAE0B0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
.L80AAE0B4:
/* 00944 80AAE0B4 0441000C */  bgez    $v0, .L80AAE0E8            
/* 00948 80AAE0B8 8E0701F4 */  lw      $a3, 0x01F4($s0)           ## 000001F4
/* 0094C 80AAE0BC 00C7082A */  slt     $at, $a2, $a3              
/* 00950 80AAE0C0 14200003 */  bne     $at, $zero, .L80AAE0D0     
/* 00954 80AAE0C4 00E3082A */  slt     $at, $a3, $v1              
/* 00958 80AAE0C8 50200008 */  beql    $at, $zero, .L80AAE0EC     
/* 0095C 80AAE0CC 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
.L80AAE0D0:
/* 00960 80AAE0D0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
.L80AAE0D4:
/* 00964 80AAE0D4 000EC100 */  sll     $t8, $t6,  4               
/* 00968 80AAE0D8 0258C821 */  addu    $t9, $s2, $t8              
/* 0096C 80AAE0DC AE0E01E8 */  sw      $t6, 0x01E8($s0)           ## 000001E8
/* 00970 80AAE0E0 8F270008 */  lw      $a3, 0x0008($t9)           ## 00000008
/* 00974 80AAE0E4 AE0701F4 */  sw      $a3, 0x01F4($s0)           ## 000001F4
.L80AAE0E8:
/* 00978 80AAE0E8 8E241E08 */  lw      $a0, 0x1E08($s1)           ## 00001E08
.L80AAE0EC:
/* 0097C 80AAE0EC 0C2AB798 */  jal     func_80AADE60              
/* 00980 80AAE0F0 8E0601EC */  lw      $a2, 0x01EC($s0)           ## 000001EC
/* 00984 80AAE0F4 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 00988 80AAE0F8 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 0098C 80AAE0FC C7A8006C */  lwc1    $f8, 0x006C($sp)           
/* 00990 80AAE100 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 00994 80AAE104 46062501 */  sub.s   $f20, $f4, $f6             
/* 00998 80AAE108 460A4581 */  sub.s   $f22, $f8, $f10            
/* 0099C 80AAE10C 4600A306 */  mov.s   $f12, $f20                 
/* 009A0 80AAE110 0C03F494 */  jal     func_800FD250              
/* 009A4 80AAE114 4600B386 */  mov.s   $f14, $f22                 
/* 009A8 80AAE118 3C0180AB */  lui     $at, %hi(D_80AAEC74)       ## $at = 80AB0000
/* 009AC 80AAE11C C430EC74 */  lwc1    $f16, %lo(D_80AAEC74)($at) 
/* 009B0 80AAE120 3C0180AB */  lui     $at, %hi(D_80AAEC78)       ## $at = 80AB0000
/* 009B4 80AAE124 46100482 */  mul.s   $f18, $f0, $f16            
/* 009B8 80AAE128 00000000 */  nop
/* 009BC 80AAE12C 4614A282 */  mul.s   $f10, $f20, $f20           
/* 009C0 80AAE130 00000000 */  nop
/* 009C4 80AAE134 4616B402 */  mul.s   $f16, $f22, $f22           
/* 009C8 80AAE138 4600910D */  trunc.w.s $f4, $f18                  
/* 009CC 80AAE13C 46105000 */  add.s   $f0, $f10, $f16            
/* 009D0 80AAE140 440A2000 */  mfc1    $t2, $f4                   
/* 009D4 80AAE144 46000004 */  sqrt.s  $f0, $f0                   
/* 009D8 80AAE148 448A3000 */  mtc1    $t2, $f6                   ## $f6 = 0.00
/* 009DC 80AAE14C 00000000 */  nop
/* 009E0 80AAE150 46803220 */  cvt.s.w $f8, $f6                   
/* 009E4 80AAE154 E60001FC */  swc1    $f0, 0x01FC($s0)           ## 000001FC
/* 009E8 80AAE158 E60801F8 */  swc1    $f8, 0x01F8($s0)           ## 000001F8
/* 009EC 80AAE15C C432EC78 */  lwc1    $f18, %lo(D_80AAEC78)($at) 
/* 009F0 80AAE160 4612003E */  c.le.s  $f0, $f18                  
/* 009F4 80AAE164 00000000 */  nop
/* 009F8 80AAE168 45000004 */  bc1f    .L80AAE17C                 
/* 009FC 80AAE16C 00000000 */  nop
/* 00A00 80AAE170 8E0201E8 */  lw      $v0, 0x01E8($s0)           ## 000001E8
/* 00A04 80AAE174 5440FF96 */  bnel    $v0, $zero, .L80AADFD0     
/* 00A08 80AAE178 0002C100 */  sll     $t8, $v0,  4               
.L80AAE17C:
/* 00A0C 80AAE17C C60401F8 */  lwc1    $f4, 0x01F8($s0)           ## 000001F8
/* 00A10 80AAE180 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00A14 80AAE184 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00A18 80AAE188 4600218D */  trunc.w.s $f6, $f4                   
/* 00A1C 80AAE18C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00A20 80AAE190 240709C4 */  addiu   $a3, $zero, 0x09C4         ## $a3 = 000009C4
/* 00A24 80AAE194 44053000 */  mfc1    $a1, $f6                   
/* 00A28 80AAE198 00000000 */  nop
/* 00A2C 80AAE19C 00052C00 */  sll     $a1, $a1, 16               
/* 00A30 80AAE1A0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00A34 80AAE1A4 00052C03 */  sra     $a1, $a1, 16               
/* 00A38 80AAE1A8 860C00B6 */  lh      $t4, 0x00B6($s0)           ## 000000B6
/* 00A3C 80AAE1AC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00A40 80AAE1B0 8E050200 */  lw      $a1, 0x0200($s0)           ## 00000200
/* 00A44 80AAE1B4 3C063F19 */  lui     $a2, 0x3F19                ## $a2 = 3F190000
/* 00A48 80AAE1B8 8E0701FC */  lw      $a3, 0x01FC($s0)           ## 000001FC
/* 00A4C 80AAE1BC A60C0032 */  sh      $t4, 0x0032($s0)           ## 00000032
/* 00A50 80AAE1C0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3F19999A
/* 00A54 80AAE1C4 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00A58 80AAE1C8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00A5C 80AAE1CC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00A60 80AAE1D0 0C00B638 */  jal     Actor_MoveForward
              
/* 00A64 80AAE1D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 80AAE1D8 4406A000 */  mfc1    $a2, $f20                  
/* 00A6C 80AAE1DC 4407A000 */  mfc1    $a3, $f20                  
/* 00A70 80AAE1E0 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00A74 80AAE1E4 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00A78 80AAE1E8 8FA4007C */  lw      $a0, 0x007C($sp)           
/* 00A7C 80AAE1EC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00A80 80AAE1F0 0C00B92D */  jal     func_8002E4B4              
/* 00A84 80AAE1F4 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00A88 80AAE1F8 8FBF0044 */  lw      $ra, 0x0044($sp)           
/* 00A8C 80AAE1FC D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 00A90 80AAE200 D7B60028 */  ldc1    $f22, 0x0028($sp)          
/* 00A94 80AAE204 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 00A98 80AAE208 8FB10034 */  lw      $s1, 0x0034($sp)           
/* 00A9C 80AAE20C 8FB20038 */  lw      $s2, 0x0038($sp)           
/* 00AA0 80AAE210 8FB3003C */  lw      $s3, 0x003C($sp)           
/* 00AA4 80AAE214 8FB40040 */  lw      $s4, 0x0040($sp)           
/* 00AA8 80AAE218 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 00AAC 80AAE21C 03E00008 */  jr      $ra                        
/* 00AB0 80AAE220 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000



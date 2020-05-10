glabel func_80AA90A0
/* 03050 80AA90A0 27BDFF60 */  addiu   $sp, $sp, 0xFF60           ## $sp = FFFFFF60
/* 03054 80AA90A4 F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 03058 80AA90A8 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 0305C 80AA90AC AFB40070 */  sw      $s4, 0x0070($sp)           
/* 03060 80AA90B0 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 03064 80AA90B4 AFB3006C */  sw      $s3, 0x006C($sp)           
/* 03068 80AA90B8 AFB20068 */  sw      $s2, 0x0068($sp)           
/* 0306C 80AA90BC AFB10064 */  sw      $s1, 0x0064($sp)           
/* 03070 80AA90C0 AFB00060 */  sw      $s0, 0x0060($sp)           
/* 03074 80AA90C4 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 03078 80AA90C8 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 0307C 80AA90CC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 03080 80AA90D0 8CB01C44 */  lw      $s0, 0x1C44($a1)           ## 00001C44
/* 03084 80AA90D4 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 03088 80AA90D8 4405A000 */  mfc1    $a1, $f20                  
/* 0308C 80AA90DC 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 03090 80AA90E0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03094 80AA90E4 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 03098 80AA90E8 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0309C 80AA90EC E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 030A0 80AA90F0 8E020680 */  lw      $v0, 0x0680($s0)           ## 00000680
/* 030A4 80AA90F4 304E0080 */  andi    $t6, $v0, 0x0080           ## $t6 = 00000000
/* 030A8 80AA90F8 11C00012 */  beq     $t6, $zero, .L80AA9144     
/* 030AC 80AA90FC 00000000 */  nop
/* 030B0 80AA9100 8E0F0118 */  lw      $t7, 0x0118($s0)           ## 00000118
/* 030B4 80AA9104 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 030B8 80AA9108 241900C8 */  addiu   $t9, $zero, 0x00C8         ## $t9 = 000000C8
/* 030BC 80AA910C 162F000D */  bne     $s1, $t7, .L80AA9144       
/* 030C0 80AA9110 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 030C4 80AA9114 44810000 */  mtc1    $at, $f0                   ## $f0 = 4.00
/* 030C8 80AA9118 2401FF7F */  addiu   $at, $zero, 0xFF7F         ## $at = FFFFFF7F
/* 030CC 80AA911C 0041C024 */  and     $t8, $v0, $at              
/* 030D0 80AA9120 AE180680 */  sw      $t8, 0x0680($s0)           ## 00000680
/* 030D4 80AA9124 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 030D8 80AA9128 A6190850 */  sh      $t9, 0x0850($s0)           ## 00000850
/* 030DC 80AA912C 86270032 */  lh      $a3, 0x0032($s1)           ## 00000032
/* 030E0 80AA9130 44060000 */  mfc1    $a2, $f0                   
/* 030E4 80AA9134 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 030E8 80AA9138 0C00BDC7 */  jal     func_8002F71C              
/* 030EC 80AA913C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 030F0 80AA9140 A6200334 */  sh      $zero, 0x0334($s1)         ## 00000334
.L80AA9144:
/* 030F4 80AA9144 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 030F8 80AA9148 2624018C */  addiu   $a0, $s1, 0x018C           ## $a0 = 0000018C
/* 030FC 80AA914C 50400050 */  beql    $v0, $zero, .L80AA9290     
/* 03100 80AA9150 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 03104 80AA9154 8628032A */  lh      $t0, 0x032A($s1)           ## 0000032A
/* 03108 80AA9158 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0310C 80AA915C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 03110 80AA9160 19000046 */  blez    $t0, .L80AA927C            
/* 03114 80AA9164 26260024 */  addiu   $a2, $s1, 0x0024           ## $a2 = 00000024
/* 03118 80AA9168 3C0980AB */  lui     $t1, %hi(D_80AA9D84)       ## $t1 = 80AB0000
/* 0311C 80AA916C 25299D84 */  addiu   $t1, $t1, %lo(D_80AA9D84)  ## $t1 = 80AA9D84
/* 03120 80AA9170 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80AA9D84
/* 03124 80AA9174 27B20090 */  addiu   $s2, $sp, 0x0090           ## $s2 = FFFFFFF0
/* 03128 80AA9178 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0312C 80AA917C AE4B0000 */  sw      $t3, 0x0000($s2)           ## FFFFFFF0
/* 03130 80AA9180 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80AA9D88
/* 03134 80AA9184 4481C000 */  mtc1    $at, $f24                  ## $f24 = 20.00
/* 03138 80AA9188 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 0313C 80AA918C AE4A0004 */  sw      $t2, 0x0004($s2)           ## FFFFFFF4
/* 03140 80AA9190 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80AA9D8C
/* 03144 80AA9194 4481B000 */  mtc1    $at, $f22                  ## $f22 = 15.00
/* 03148 80AA9198 3C0142DC */  lui     $at, 0x42DC                ## $at = 42DC0000
/* 0314C 80AA919C AE4B0008 */  sw      $t3, 0x0008($s2)           ## FFFFFFF8
/* 03150 80AA91A0 862C032A */  lh      $t4, 0x032A($s1)           ## 0000032A
/* 03154 80AA91A4 E63400C4 */  swc1    $f20, 0x00C4($s1)          ## 000000C4
/* 03158 80AA91A8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 110.00
/* 0315C 80AA91AC 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 03160 80AA91B0 A62D032A */  sh      $t5, 0x032A($s1)           ## 0000032A
/* 03164 80AA91B4 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 03168 80AA91B8 27B30080 */  addiu   $s3, $sp, 0x0080           ## $s3 = FFFFFFE0
.L80AA91BC:
/* 0316C 80AA91BC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03170 80AA91C0 4600A306 */  mov.s   $f12, $f20                 
/* 03174 80AA91C4 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 03178 80AA91C8 4600B306 */  mov.s   $f12, $f22                 
/* 0317C 80AA91CC 46040180 */  add.s   $f6, $f0, $f4              
/* 03180 80AA91D0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 03184 80AA91D4 E7A60080 */  swc1    $f6, 0x0080($sp)           
/* 03188 80AA91D8 C6280028 */  lwc1    $f8, 0x0028($s1)           ## 00000028
/* 0318C 80AA91DC 4600A306 */  mov.s   $f12, $f20                 
/* 03190 80AA91E0 46184280 */  add.s   $f10, $f8, $f24            
/* 03194 80AA91E4 460A0400 */  add.s   $f16, $f0, $f10            
/* 03198 80AA91E8 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0319C 80AA91EC E7B00084 */  swc1    $f16, 0x0084($sp)          
/* 031A0 80AA91F0 C632002C */  lwc1    $f18, 0x002C($s1)          ## 0000002C
/* 031A4 80AA91F4 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 031A8 80AA91F8 240F0007 */  addiu   $t7, $zero, 0x0007         ## $t7 = 00000007
/* 031AC 80AA91FC 46120100 */  add.s   $f4, $f0, $f18             
/* 031B0 80AA9200 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 031B4 80AA9204 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 031B8 80AA9208 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 031BC 80AA920C 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 031C0 80AA9210 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 031C4 80AA9214 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 031C8 80AA9218 240C0009 */  addiu   $t4, $zero, 0x0009         ## $t4 = 00000009
/* 031CC 80AA921C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 031D0 80AA9220 E7A40088 */  swc1    $f4, 0x0088($sp)           
/* 031D4 80AA9224 AFAD003C */  sw      $t5, 0x003C($sp)           
/* 031D8 80AA9228 AFAC0038 */  sw      $t4, 0x0038($sp)           
/* 031DC 80AA922C AFAB0034 */  sw      $t3, 0x0034($sp)           
/* 031E0 80AA9230 AFAA002C */  sw      $t2, 0x002C($sp)           
/* 031E4 80AA9234 AFA90024 */  sw      $t1, 0x0024($sp)           
/* 031E8 80AA9238 AFA80020 */  sw      $t0, 0x0020($sp)           
/* 031EC 80AA923C AFB9001C */  sw      $t9, 0x001C($sp)           
/* 031F0 80AA9240 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 031F4 80AA9244 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 031F8 80AA9248 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 031FC 80AA924C AFA00030 */  sw      $zero, 0x0030($sp)         
/* 03200 80AA9250 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 03204 80AA9254 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 03208 80AA9258 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFE0
/* 0320C 80AA925C 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFF0
/* 03210 80AA9260 0C00A9AE */  jal     func_8002A6B8              
/* 03214 80AA9264 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFF0
/* 03218 80AA9268 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 0321C 80AA926C 0601FFD3 */  bgez    $s0, .L80AA91BC            
/* 03220 80AA9270 00000000 */  nop
/* 03224 80AA9274 10000006 */  beq     $zero, $zero, .L80AA9290   
/* 03228 80AA9278 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AA927C:
/* 0322C 80AA927C 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 03230 80AA9280 240700E0 */  addiu   $a3, $zero, 0x00E0         ## $a3 = 000000E0
/* 03234 80AA9284 0C00B55C */  jal     Actor_Kill
              
/* 03238 80AA9288 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0323C 80AA928C 8FBF0074 */  lw      $ra, 0x0074($sp)           
.L80AA9290:
/* 03240 80AA9290 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 03244 80AA9294 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 03248 80AA9298 D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 0324C 80AA929C 8FB00060 */  lw      $s0, 0x0060($sp)           
/* 03250 80AA92A0 8FB10064 */  lw      $s1, 0x0064($sp)           
/* 03254 80AA92A4 8FB20068 */  lw      $s2, 0x0068($sp)           
/* 03258 80AA92A8 8FB3006C */  lw      $s3, 0x006C($sp)           
/* 0325C 80AA92AC 8FB40070 */  lw      $s4, 0x0070($sp)           
/* 03260 80AA92B0 03E00008 */  jr      $ra                        
/* 03264 80AA92B4 27BD00A0 */  addiu   $sp, $sp, 0x00A0           ## $sp = 00000000

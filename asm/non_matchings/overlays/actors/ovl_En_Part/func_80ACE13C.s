.late_rodata
glabel jtbl_80ACF2AC
.word L80ACE2AC
.word L80ACE56C
.word L80ACE348
.word L80ACE3E4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE4A4
.word L80ACE2AC
.word L80ACE2AC
.word L80ACE348
.word L80ACE56C
.word L80ACE56C
.word L80ACE2AC

.text
glabel func_80ACE13C
/* 0036C 80ACE13C 27BDFF58 */  addiu   $sp, $sp, 0xFF58           ## $sp = FFFFFF58
/* 00370 80ACE140 3C0F80AD */  lui     $t7, %hi(D_80ACF1B0)       ## $t7 = 80AD0000
/* 00374 80ACE144 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 00378 80ACE148 AFB40060 */  sw      $s4, 0x0060($sp)           
/* 0037C 80ACE14C AFB3005C */  sw      $s3, 0x005C($sp)           
/* 00380 80ACE150 AFB20058 */  sw      $s2, 0x0058($sp)           
/* 00384 80ACE154 AFB10054 */  sw      $s1, 0x0054($sp)           
/* 00388 80ACE158 AFB00050 */  sw      $s0, 0x0050($sp)           
/* 0038C 80ACE15C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 00390 80ACE160 25EFF1B0 */  addiu   $t7, $t7, %lo(D_80ACF1B0)  ## $t7 = 80ACF1B0
/* 00394 80ACE164 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80ACF1B0
/* 00398 80ACE168 27AE008C */  addiu   $t6, $sp, 0x008C           ## $t6 = FFFFFFE4
/* 0039C 80ACE16C 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80ACF1B4
/* 003A0 80ACE170 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFE4
/* 003A4 80ACE174 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80ACF1B8
/* 003A8 80ACE178 3C0980AD */  lui     $t1, %hi(D_80ACF1BC)       ## $t1 = 80AD0000
/* 003AC 80ACE17C 2529F1BC */  addiu   $t1, $t1, %lo(D_80ACF1BC)  ## $t1 = 80ACF1BC
/* 003B0 80ACE180 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFE8
/* 003B4 80ACE184 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFEC
/* 003B8 80ACE188 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80ACF1BC
/* 003BC 80ACE18C 27A80080 */  addiu   $t0, $sp, 0x0080           ## $t0 = FFFFFFD8
/* 003C0 80ACE190 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80ACF1C0
/* 003C4 80ACE194 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFD8
/* 003C8 80ACE198 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80ACF1C4
/* 003CC 80ACE19C 3C0C80AD */  lui     $t4, %hi(D_80ACF1C8)       ## $t4 = 80AD0000
/* 003D0 80ACE1A0 258CF1C8 */  addiu   $t4, $t4, %lo(D_80ACF1C8)  ## $t4 = 80ACF1C8
/* 003D4 80ACE1A4 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFDC
/* 003D8 80ACE1A8 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE0
/* 003DC 80ACE1AC 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 80ACF1C8
/* 003E0 80ACE1B0 27B30074 */  addiu   $s3, $sp, 0x0074           ## $s3 = FFFFFFCC
/* 003E4 80ACE1B4 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 003E8 80ACE1B8 AE6E0000 */  sw      $t6, 0x0000($s3)           ## FFFFFFCC
/* 003EC 80ACE1BC 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 80ACF1CC
/* 003F0 80ACE1C0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 003F4 80ACE1C4 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 003F8 80ACE1C8 AE6D0004 */  sw      $t5, 0x0004($s3)           ## FFFFFFD0
/* 003FC 80ACE1CC 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 80ACF1D0
/* 00400 80ACE1D0 AE6E0008 */  sw      $t6, 0x0008($s3)           ## FFFFFFD4
/* 00404 80ACE1D4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00408 80ACE1D8 10410004 */  beq     $v0, $at, .L80ACE1EC       
/* 0040C 80ACE1DC 244BFFFF */  addiu   $t3, $v0, 0xFFFF           ## $t3 = FFFFFFFF
/* 00410 80ACE1E0 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00414 80ACE1E4 54410027 */  bnel    $v0, $at, .L80ACE284       
/* 00418 80ACE1E8 8623014E */  lh      $v1, 0x014E($s1)           ## 0000014E
.L80ACE1EC:
/* 0041C 80ACE1EC 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00420 80ACE1F0 240F001D */  addiu   $t7, $zero, 0x001D         ## $t7 = 0000001D
/* 00424 80ACE1F4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00428 80ACE1F8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 0042C 80ACE1FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00430 80ACE200 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 00434 80ACE204 3C074170 */  lui     $a3, 0x4170                ## $a3 = 41700000
/* 00438 80ACE208 0C00B92D */  jal     func_8002E4B4              
/* 0043C 80ACE20C E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 00440 80ACE210 96380088 */  lhu     $t8, 0x0088($s1)           ## 00000088
/* 00444 80ACE214 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00448 80ACE218 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 0044C 80ACE21C 57200008 */  bnel    $t9, $zero, .L80ACE240     
/* 00450 80ACE220 A228014C */  sb      $t0, 0x014C($s1)           ## 0000014C
/* 00454 80ACE224 C6240080 */  lwc1    $f4, 0x0080($s1)           ## 00000080
/* 00458 80ACE228 C6260028 */  lwc1    $f6, 0x0028($s1)           ## 00000028
/* 0045C 80ACE22C 4604303E */  c.le.s  $f6, $f4                   
/* 00460 80ACE230 00000000 */  nop
/* 00464 80ACE234 45020006 */  bc1fl   .L80ACE250                 
/* 00468 80ACE238 8629001C */  lh      $t1, 0x001C($s1)           ## 0000001C
/* 0046C 80ACE23C A228014C */  sb      $t0, 0x014C($s1)           ## 0000014C
.L80ACE240:
/* 00470 80ACE240 E6340068 */  swc1    $f20, 0x0068($s1)          ## 00000068
/* 00474 80ACE244 E634006C */  swc1    $f20, 0x006C($s1)          ## 0000006C
/* 00478 80ACE248 E6340060 */  swc1    $f20, 0x0060($s1)          ## 00000060
/* 0047C 80ACE24C 8629001C */  lh      $t1, 0x001C($s1)           ## 0000001C
.L80ACE250:
/* 00480 80ACE250 2401000D */  addiu   $at, $zero, 0x000D         ## $at = 0000000D
/* 00484 80ACE254 15210008 */  bne     $t1, $at, .L80ACE278       
/* 00488 80ACE258 00000000 */  nop
/* 0048C 80ACE25C 8E220118 */  lw      $v0, 0x0118($s1)           ## 00000118
/* 00490 80ACE260 10400005 */  beq     $v0, $zero, .L80ACE278     
/* 00494 80ACE264 00000000 */  nop
/* 00498 80ACE268 8C4A0130 */  lw      $t2, 0x0130($v0)           ## 00000130
/* 0049C 80ACE26C 15400002 */  bne     $t2, $zero, .L80ACE278     
/* 004A0 80ACE270 00000000 */  nop
/* 004A4 80ACE274 AE200118 */  sw      $zero, 0x0118($s1)         ## 00000118
.L80ACE278:
/* 004A8 80ACE278 100000C0 */  beq     $zero, $zero, .L80ACE57C   
/* 004AC 80ACE27C 8623014E */  lh      $v1, 0x014E($s1)           ## 0000014E
/* 004B0 80ACE280 8623014E */  lh      $v1, 0x014E($s1)           ## 0000014E
.L80ACE284:
/* 004B4 80ACE284 2D61000E */  sltiu   $at, $t3, 0x000E           
/* 004B8 80ACE288 000B5880 */  sll     $t3, $t3,  2               
/* 004BC 80ACE28C 5C6000BC */  bgtzl   $v1, .L80ACE580            
/* 004C0 80ACE290 C6300154 */  lwc1    $f16, 0x0154($s1)          ## 00000154
/* 004C4 80ACE294 102000B5 */  beq     $at, $zero, .L80ACE56C     
/* 004C8 80ACE298 3C0180AD */  lui     $at, %hi(jtbl_80ACF2AC)       ## $at = 80AD0000
/* 004CC 80ACE29C 002B0821 */  addu    $at, $at, $t3              
/* 004D0 80ACE2A0 8C2BF2AC */  lw      $t3, %lo(jtbl_80ACF2AC)($at)  
/* 004D4 80ACE2A4 01600008 */  jr      $t3                        
/* 004D8 80ACE2A8 00000000 */  nop
glabel L80ACE2AC
/* 004DC 80ACE2AC 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 004E0 80ACE2B0 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 004E4 80ACE2B4 C6280054 */  lwc1    $f8, 0x0054($s1)           ## 00000054
/* 004E8 80ACE2B8 24190007 */  addiu   $t9, $zero, 0x0007         ## $t9 = 00000007
/* 004EC 80ACE2BC 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 004F0 80ACE2C0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 004F4 80ACE2C4 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 004F8 80ACE2C8 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 004FC 80ACE2CC 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 00500 80ACE2D0 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 00504 80ACE2D4 AFAC002C */  sw      $t4, 0x002C($sp)           
/* 00508 80ACE2D8 AFAB0024 */  sw      $t3, 0x0024($sp)           
/* 0050C 80ACE2DC 4600848D */  trunc.w.s $f18, $f16                 
/* 00510 80ACE2E0 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 00514 80ACE2E4 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 00518 80ACE2E8 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 0051C 80ACE2EC 440D9000 */  mfc1    $t5, $f18                  
/* 00520 80ACE2F0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 00524 80ACE2F4 AFA00030 */  sw      $zero, 0x0030($sp)         
/* 00528 80ACE2F8 000D7400 */  sll     $t6, $t5, 16               
/* 0052C 80ACE2FC 000E7C03 */  sra     $t7, $t6, 16               
/* 00530 80ACE300 000FC080 */  sll     $t8, $t7,  2               
/* 00534 80ACE304 030FC021 */  addu    $t8, $t8, $t7              
/* 00538 80ACE308 0018C0C0 */  sll     $t8, $t8,  3               
/* 0053C 80ACE30C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00540 80ACE310 240E0009 */  addiu   $t6, $zero, 0x0009         ## $t6 = 00000009
/* 00544 80ACE314 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00548 80ACE318 AFAD0034 */  sw      $t5, 0x0034($sp)           
/* 0054C 80ACE31C AFAE0038 */  sw      $t6, 0x0038($sp)           
/* 00550 80ACE320 AFAF003C */  sw      $t7, 0x003C($sp)           
/* 00554 80ACE324 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00558 80ACE328 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0055C 80ACE32C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00560 80ACE330 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 00564 80ACE334 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFCC
/* 00568 80ACE338 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 0056C 80ACE33C 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFCC
/* 00570 80ACE340 1000008A */  beq     $zero, $zero, .L80ACE56C   
/* 00574 80ACE344 00000000 */  nop
glabel L80ACE348
/* 00578 80ACE348 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0057C 80ACE34C 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00580 80ACE350 C6240054 */  lwc1    $f4, 0x0054($s1)           ## 00000054
/* 00584 80ACE354 240B0007 */  addiu   $t3, $zero, 0x0007         ## $t3 = 00000007
/* 00588 80ACE358 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 0058C 80ACE35C 46062202 */  mul.s   $f8, $f4, $f6              
/* 00590 80ACE360 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 00594 80ACE364 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00598 80ACE368 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 0059C 80ACE36C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 005A0 80ACE370 AFB80030 */  sw      $t8, 0x0030($sp)           
/* 005A4 80ACE374 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 005A8 80ACE378 4600428D */  trunc.w.s $f10, $f8                  
/* 005AC 80ACE37C AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 005B0 80ACE380 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 005B4 80ACE384 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 005B8 80ACE388 44195000 */  mfc1    $t9, $f10                  
/* 005BC 80ACE38C AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 005C0 80ACE390 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 005C4 80ACE394 00194400 */  sll     $t0, $t9, 16               
/* 005C8 80ACE398 00084C03 */  sra     $t1, $t0, 16               
/* 005CC 80ACE39C 00095080 */  sll     $t2, $t1,  2               
/* 005D0 80ACE3A0 01495021 */  addu    $t2, $t2, $t1              
/* 005D4 80ACE3A4 000A50C0 */  sll     $t2, $t2,  3               
/* 005D8 80ACE3A8 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 005DC 80ACE3AC 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 005E0 80ACE3B0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 005E4 80ACE3B4 AFB90034 */  sw      $t9, 0x0034($sp)           
/* 005E8 80ACE3B8 AFA80038 */  sw      $t0, 0x0038($sp)           
/* 005EC 80ACE3BC AFA9003C */  sw      $t1, 0x003C($sp)           
/* 005F0 80ACE3C0 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 005F4 80ACE3C4 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 005F8 80ACE3C8 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 005FC 80ACE3CC 26250024 */  addiu   $a1, $s1, 0x0024           ## $a1 = 00000024
/* 00600 80ACE3D0 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFCC
/* 00604 80ACE3D4 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 00608 80ACE3D8 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFCC
/* 0060C 80ACE3DC 10000063 */  beq     $zero, $zero, .L80ACE56C   
/* 00610 80ACE3E0 00000000 */  nop
glabel L80ACE3E4
/* 00614 80ACE3E4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00618 80ACE3E8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 60.00
/* 0061C 80ACE3EC 24100007 */  addiu   $s0, $zero, 0x0007         ## $s0 = 00000007
/* 00620 80ACE3F0 27B20098 */  addiu   $s2, $sp, 0x0098           ## $s2 = FFFFFFF0
.L80ACE3F4:
/* 00624 80ACE3F4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00628 80ACE3F8 4600A306 */  mov.s   $f12, $f20                 
/* 0062C 80ACE3FC C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 00630 80ACE400 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 00634 80ACE404 44816000 */  mtc1    $at, $f12                  ## $f12 = 50.00
/* 00638 80ACE408 46100480 */  add.s   $f18, $f0, $f16            
/* 0063C 80ACE40C 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00640 80ACE410 E7B20098 */  swc1    $f18, 0x0098($sp)          
/* 00644 80ACE414 C62400BC */  lwc1    $f4, 0x00BC($s1)           ## 000000BC
/* 00648 80ACE418 C6260054 */  lwc1    $f6, 0x0054($s1)           ## 00000054
/* 0064C 80ACE41C C62A0028 */  lwc1    $f10, 0x0028($s1)          ## 00000028
/* 00650 80ACE420 4600A306 */  mov.s   $f12, $f20                 
/* 00654 80ACE424 46062202 */  mul.s   $f8, $f4, $f6              
/* 00658 80ACE428 46085400 */  add.s   $f16, $f10, $f8            
/* 0065C 80ACE42C 46100480 */  add.s   $f18, $f0, $f16            
/* 00660 80ACE430 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00664 80ACE434 E7B2009C */  swc1    $f18, 0x009C($sp)          
/* 00668 80ACE438 C624002C */  lwc1    $f4, 0x002C($s1)           ## 0000002C
/* 0066C 80ACE43C 46040180 */  add.s   $f6, $f0, $f4              
/* 00670 80ACE440 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00674 80ACE444 E7A600A0 */  swc1    $f6, 0x00A0($sp)           
/* 00678 80ACE448 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 0067C 80ACE44C 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 00680 80ACE450 24040050 */  addiu   $a0, $zero, 0x0050         ## $a0 = 00000050
/* 00684 80ACE454 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00688 80ACE458 460A0200 */  add.s   $f8, $f0, $f10             
/* 0068C 80ACE45C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00690 80ACE460 E7A80090 */  swc1    $f8, 0x0090($sp)           
/* 00694 80ACE464 240A0019 */  addiu   $t2, $zero, 0x0019         ## $t2 = 00000019
/* 00698 80ACE468 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0069C 80ACE46C AFAB001C */  sw      $t3, 0x001C($sp)           
/* 006A0 80ACE470 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 006A4 80ACE474 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 006A8 80ACE478 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFF0
/* 006AC 80ACE47C 27A6008C */  addiu   $a2, $sp, 0x008C           ## $a2 = FFFFFFE4
/* 006B0 80ACE480 27A70080 */  addiu   $a3, $sp, 0x0080           ## $a3 = FFFFFFD8
/* 006B4 80ACE484 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 006B8 80ACE488 0C00A586 */  jal     EffectSsDtBubble_SpawnColorProfile              
/* 006BC 80ACE48C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 006C0 80ACE490 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000006
/* 006C4 80ACE494 0601FFD7 */  bgez    $s0, .L80ACE3F4            
/* 006C8 80ACE498 00000000 */  nop
/* 006CC 80ACE49C 10000033 */  beq     $zero, $zero, .L80ACE56C   
/* 006D0 80ACE4A0 00000000 */  nop
glabel L80ACE4A4
/* 006D4 80ACE4A4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 006D8 80ACE4A8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 25.00
/* 006DC 80ACE4AC 24100004 */  addiu   $s0, $zero, 0x0004         ## $s0 = 00000004
/* 006E0 80ACE4B0 27B20098 */  addiu   $s2, $sp, 0x0098           ## $s2 = FFFFFFF0
.L80ACE4B4:
/* 006E4 80ACE4B4 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 006E8 80ACE4B8 4600A306 */  mov.s   $f12, $f20                 
/* 006EC 80ACE4BC C6300024 */  lwc1    $f16, 0x0024($s1)          ## 00000024
/* 006F0 80ACE4C0 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 006F4 80ACE4C4 44816000 */  mtc1    $at, $f12                  ## $f12 = 40.00
/* 006F8 80ACE4C8 46100480 */  add.s   $f18, $f0, $f16            
/* 006FC 80ACE4CC 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00700 80ACE4D0 E7B20098 */  swc1    $f18, 0x0098($sp)          
/* 00704 80ACE4D4 C6240028 */  lwc1    $f4, 0x0028($s1)           ## 00000028
/* 00708 80ACE4D8 4600A306 */  mov.s   $f12, $f20                 
/* 0070C 80ACE4DC 46040180 */  add.s   $f6, $f0, $f4              
/* 00710 80ACE4E0 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 00714 80ACE4E4 E7A6009C */  swc1    $f6, 0x009C($sp)           
/* 00718 80ACE4E8 C62A002C */  lwc1    $f10, 0x002C($s1)          ## 0000002C
/* 0071C 80ACE4EC 240C0028 */  addiu   $t4, $zero, 0x0028         ## $t4 = 00000028
/* 00720 80ACE4F0 240D0007 */  addiu   $t5, $zero, 0x0007         ## $t5 = 00000007
/* 00724 80ACE4F4 460A0200 */  add.s   $f8, $f0, $f10             
/* 00728 80ACE4F8 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 0072C 80ACE4FC 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00730 80ACE500 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 00734 80ACE504 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00738 80ACE508 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 0073C 80ACE50C 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00740 80ACE510 240A0009 */  addiu   $t2, $zero, 0x0009         ## $t2 = 00000009
/* 00744 80ACE514 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00748 80ACE518 E7A800A0 */  swc1    $f8, 0x00A0($sp)           
/* 0074C 80ACE51C AFAB003C */  sw      $t3, 0x003C($sp)           
/* 00750 80ACE520 AFAA0038 */  sw      $t2, 0x0038($sp)           
/* 00754 80ACE524 AFA90034 */  sw      $t1, 0x0034($sp)           
/* 00758 80ACE528 AFA80030 */  sw      $t0, 0x0030($sp)           
/* 0075C 80ACE52C AFB90024 */  sw      $t9, 0x0024($sp)           
/* 00760 80ACE530 AFB80020 */  sw      $t8, 0x0020($sp)           
/* 00764 80ACE534 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 00768 80ACE538 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 0076C 80ACE53C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 00770 80ACE540 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00774 80ACE544 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 00778 80ACE548 AFA00028 */  sw      $zero, 0x0028($sp)         
/* 0077C 80ACE54C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00780 80ACE550 02402825 */  or      $a1, $s2, $zero            ## $a1 = FFFFFFF0
/* 00784 80ACE554 02603025 */  or      $a2, $s3, $zero            ## $a2 = FFFFFFCC
/* 00788 80ACE558 0C00A9AE */  jal     EffectSsDeadDb_Spawn              
/* 0078C 80ACE55C 02603825 */  or      $a3, $s3, $zero            ## $a3 = FFFFFFCC
/* 00790 80ACE560 2610FFFF */  addiu   $s0, $s0, 0xFFFF           ## $s0 = 00000003
/* 00794 80ACE564 0601FFD3 */  bgez    $s0, .L80ACE4B4            
/* 00798 80ACE568 00000000 */  nop
glabel L80ACE56C
.L80ACE56C:
/* 0079C 80ACE56C 0C00B55C */  jal     Actor_Kill
              
/* 007A0 80ACE570 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 007A4 80ACE574 10000008 */  beq     $zero, $zero, .L80ACE598   
/* 007A8 80ACE578 8FBF0064 */  lw      $ra, 0x0064($sp)           
.L80ACE57C:
/* 007AC 80ACE57C C6300154 */  lwc1    $f16, 0x0154($s1)          ## 00000154
.L80ACE580:
/* 007B0 80ACE580 C6320158 */  lwc1    $f18, 0x0158($s1)          ## 00000158
/* 007B4 80ACE584 246CFFFF */  addiu   $t4, $v1, 0xFFFF           ## $t4 = FFFFFFFF
/* 007B8 80ACE588 A62C014E */  sh      $t4, 0x014E($s1)           ## 0000014E
/* 007BC 80ACE58C 46128100 */  add.s   $f4, $f16, $f18            
/* 007C0 80ACE590 E6240154 */  swc1    $f4, 0x0154($s1)           ## 00000154
/* 007C4 80ACE594 8FBF0064 */  lw      $ra, 0x0064($sp)           
.L80ACE598:
/* 007C8 80ACE598 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 007CC 80ACE59C 8FB00050 */  lw      $s0, 0x0050($sp)           
/* 007D0 80ACE5A0 8FB10054 */  lw      $s1, 0x0054($sp)           
/* 007D4 80ACE5A4 8FB20058 */  lw      $s2, 0x0058($sp)           
/* 007D8 80ACE5A8 8FB3005C */  lw      $s3, 0x005C($sp)           
/* 007DC 80ACE5AC 8FB40060 */  lw      $s4, 0x0060($sp)           
/* 007E0 80ACE5B0 03E00008 */  jr      $ra                        
/* 007E4 80ACE5B4 27BD00A8 */  addiu   $sp, $sp, 0x00A8           ## $sp = 00000000

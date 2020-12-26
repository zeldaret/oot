glabel func_80B0D14C
/* 0139C 80B0D14C 27BDFF50 */  addiu   $sp, $sp, 0xFF50           ## $sp = FFFFFF50
/* 013A0 80B0D150 3C0E80B1 */  lui     $t6, %hi(D_80B0F10C)       ## $t6 = 80B10000
/* 013A4 80B0D154 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 013A8 80B0D158 AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 013AC 80B0D15C AFB70064 */  sw      $s7, 0x0064($sp)           
/* 013B0 80B0D160 AFB60060 */  sw      $s6, 0x0060($sp)           
/* 013B4 80B0D164 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 013B8 80B0D168 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 013BC 80B0D16C AFB30054 */  sw      $s3, 0x0054($sp)           
/* 013C0 80B0D170 AFB20050 */  sw      $s2, 0x0050($sp)           
/* 013C4 80B0D174 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 013C8 80B0D178 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 013CC 80B0D17C F7B80040 */  sdc1    $f24, 0x0040($sp)          
/* 013D0 80B0D180 F7B60038 */  sdc1    $f22, 0x0038($sp)          
/* 013D4 80B0D184 F7B40030 */  sdc1    $f20, 0x0030($sp)          
/* 013D8 80B0D188 25CEF10C */  addiu   $t6, $t6, %lo(D_80B0F10C)  ## $t6 = 80B0F10C
/* 013DC 80B0D18C 8DD80000 */  lw      $t8, 0x0000($t6)           ## 80B0F10C
/* 013E0 80B0D190 27B500AC */  addiu   $s5, $sp, 0x00AC           ## $s5 = FFFFFFFC
/* 013E4 80B0D194 3C1980B1 */  lui     $t9, %hi(D_80B0F110)       ## $t9 = 80B10000
/* 013E8 80B0D198 2739F110 */  addiu   $t9, $t9, %lo(D_80B0F110)  ## $t9 = 80B0F110
/* 013EC 80B0D19C AEB80000 */  sw      $t8, 0x0000($s5)           ## FFFFFFFC
/* 013F0 80B0D1A0 8F290000 */  lw      $t1, 0x0000($t9)           ## 80B0F110
/* 013F4 80B0D1A4 27B600A8 */  addiu   $s6, $sp, 0x00A8           ## $s6 = FFFFFFF8
/* 013F8 80B0D1A8 3C0A80B1 */  lui     $t2, %hi(D_80B0F114)       ## $t2 = 80B10000
/* 013FC 80B0D1AC 254AF114 */  addiu   $t2, $t2, %lo(D_80B0F114)  ## $t2 = 80B0F114
/* 01400 80B0D1B0 AEC90000 */  sw      $t1, 0x0000($s6)           ## FFFFFFF8
/* 01404 80B0D1B4 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80B0F114
/* 01408 80B0D1B8 27B7009C */  addiu   $s7, $sp, 0x009C           ## $s7 = FFFFFFEC
/* 0140C 80B0D1BC 3C0D80B1 */  lui     $t5, %hi(D_80B0F120)       ## $t5 = 80B10000
/* 01410 80B0D1C0 AEEC0000 */  sw      $t4, 0x0000($s7)           ## FFFFFFEC
/* 01414 80B0D1C4 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80B0F118
/* 01418 80B0D1C8 25ADF120 */  addiu   $t5, $t5, %lo(D_80B0F120)  ## $t5 = 80B0F120
/* 0141C 80B0D1CC 27BE0090 */  addiu   $s8, $sp, 0x0090           ## $s8 = FFFFFFE0
/* 01420 80B0D1D0 AEEB0004 */  sw      $t3, 0x0004($s7)           ## FFFFFFF0
/* 01424 80B0D1D4 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80B0F11C
/* 01428 80B0D1D8 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 0142C 80B0D1DC 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01430 80B0D1E0 AEEC0008 */  sw      $t4, 0x0008($s7)           ## FFFFFFF4
/* 01434 80B0D1E4 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 80B0F120
/* 01438 80B0D1E8 AFCF0000 */  sw      $t7, 0x0000($s8)           ## FFFFFFE0
/* 0143C 80B0D1EC 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 80B0F124
/* 01440 80B0D1F0 AFCE0004 */  sw      $t6, 0x0004($s8)           ## FFFFFFE4
/* 01444 80B0D1F4 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 80B0F128
/* 01448 80B0D1F8 AFCF0008 */  sw      $t7, 0x0008($s8)           ## FFFFFFE8
/* 0144C 80B0D1FC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 01450 80B0D200 AFA600B8 */  sw      $a2, 0x00B8($sp)           
/* 01454 80B0D204 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01458 80B0D208 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 0145C 80B0D20C 3C014780 */  lui     $at, 0x4780                ## $at = 47800000
/* 01460 80B0D210 44813000 */  mtc1    $at, $f6                   ## $f6 = 65536.00
/* 01464 80B0D214 46160101 */  sub.s   $f4, $f0, $f22             
/* 01468 80B0D218 8FA600B8 */  lw      $a2, 0x00B8($sp)           
/* 0146C 80B0D21C 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 01470 80B0D220 46062202 */  mul.s   $f8, $f4, $f6              
/* 01474 80B0D224 00C08825 */  or      $s1, $a2, $zero            ## $s1 = 00000000
/* 01478 80B0D228 4600428D */  trunc.w.s $f10, $f8                  
/* 0147C 80B0D22C 44105000 */  mfc1    $s0, $f10                  
/* 01480 80B0D230 00000000 */  nop
/* 01484 80B0D234 00108400 */  sll     $s0, $s0, 16               
/* 01488 80B0D238 04C0003B */  bltz    $a2, .L80B0D328            
/* 0148C 80B0D23C 00108403 */  sra     $s0, $s0, 16               
/* 01490 80B0D240 0326001A */  div     $zero, $t9, $a2            
/* 01494 80B0D244 14C00002 */  bne     $a2, $zero, .L80B0D250     
/* 01498 80B0D248 00000000 */  nop
/* 0149C 80B0D24C 0007000D */  break 7
.L80B0D250:
/* 014A0 80B0D250 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 014A4 80B0D254 14C10004 */  bne     $a2, $at, .L80B0D268       
/* 014A8 80B0D258 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 014AC 80B0D25C 17210002 */  bne     $t9, $at, .L80B0D268       
/* 014B0 80B0D260 00000000 */  nop
/* 014B4 80B0D264 0006000D */  break 6
.L80B0D268:
/* 014B8 80B0D268 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 014BC 80B0D26C 00009812 */  mflo    $s3                        
/* 014C0 80B0D270 00139C00 */  sll     $s3, $s3, 16               
/* 014C4 80B0D274 4481C000 */  mtc1    $at, $f24                  ## $f24 = 14.00
/* 014C8 80B0D278 00139C03 */  sra     $s3, $s3, 16               
.L80B0D27C:
/* 014CC 80B0D27C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 014D0 80B0D280 00000000 */  nop
/* 014D4 80B0D284 46160501 */  sub.s   $f20, $f0, $f22            
/* 014D8 80B0D288 4614A400 */  add.s   $f16, $f20, $f20           
/* 014DC 80B0D28C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 014E0 80B0D290 E7B00090 */  swc1    $f16, 0x0090($sp)          
/* 014E4 80B0D294 46160501 */  sub.s   $f20, $f0, $f22            
/* 014E8 80B0D298 00102400 */  sll     $a0, $s0, 16               
/* 014EC 80B0D29C 00042403 */  sra     $a0, $a0, 16               
/* 014F0 80B0D2A0 4614A480 */  add.s   $f18, $f20, $f20           
/* 014F4 80B0D2A4 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 014F8 80B0D2A8 E7B20098 */  swc1    $f18, 0x0098($sp)          
/* 014FC 80B0D2AC 46180102 */  mul.s   $f4, $f0, $f24             
/* 01500 80B0D2B0 C6460024 */  lwc1    $f6, 0x0024($s2)           ## 00000024
/* 01504 80B0D2B4 00102400 */  sll     $a0, $s0, 16               
/* 01508 80B0D2B8 00042403 */  sra     $a0, $a0, 16               
/* 0150C 80B0D2BC 46062200 */  add.s   $f8, $f4, $f6              
/* 01510 80B0D2C0 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 01514 80B0D2C4 C64A0028 */  lwc1    $f10, 0x0028($s2)          ## 00000028
/* 01518 80B0D2C8 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 0151C 80B0D2CC E7AA0088 */  swc1    $f10, 0x0088($sp)          
/* 01520 80B0D2D0 46180402 */  mul.s   $f16, $f0, $f24            
/* 01524 80B0D2D4 C652002C */  lwc1    $f18, 0x002C($s2)          ## 0000002C
/* 01528 80B0D2D8 24080014 */  addiu   $t0, $zero, 0x0014         ## $t0 = 00000014
/* 0152C 80B0D2DC 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 01530 80B0D2E0 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 01534 80B0D2E4 AFAA0020 */  sw      $t2, 0x0020($sp)           
/* 01538 80B0D2E8 AFA9001C */  sw      $t1, 0x001C($sp)           
/* 0153C 80B0D2EC 46128100 */  add.s   $f4, $f16, $f18            
/* 01540 80B0D2F0 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 01544 80B0D2F4 AFB60014 */  sw      $s6, 0x0014($sp)           
/* 01548 80B0D2F8 AFB50010 */  sw      $s5, 0x0010($sp)           
/* 0154C 80B0D2FC E7A4008C */  swc1    $f4, 0x008C($sp)           
/* 01550 80B0D300 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01554 80B0D304 27A50084 */  addiu   $a1, $sp, 0x0084           ## $a1 = FFFFFFD4
/* 01558 80B0D308 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFEC
/* 0155C 80B0D30C 0C00A0DB */  jal     func_8002836C              
/* 01560 80B0D310 03C03825 */  or      $a3, $s8, $zero            ## $a3 = FFFFFFE0
/* 01564 80B0D314 02138021 */  addu    $s0, $s0, $s3              
/* 01568 80B0D318 00108400 */  sll     $s0, $s0, 16               
/* 0156C 80B0D31C 2631FFFF */  addiu   $s1, $s1, 0xFFFF           ## $s1 = FFFFFFFF
/* 01570 80B0D320 0621FFD6 */  bgez    $s1, .L80B0D27C            
/* 01574 80B0D324 00108403 */  sra     $s0, $s0, 16               
.L80B0D328:
/* 01578 80B0D328 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 0157C 80B0D32C D7B40030 */  ldc1    $f20, 0x0030($sp)          
/* 01580 80B0D330 D7B60038 */  ldc1    $f22, 0x0038($sp)          
/* 01584 80B0D334 D7B80040 */  ldc1    $f24, 0x0040($sp)          
/* 01588 80B0D338 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 0158C 80B0D33C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 01590 80B0D340 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 01594 80B0D344 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 01598 80B0D348 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 0159C 80B0D34C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 015A0 80B0D350 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 015A4 80B0D354 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 015A8 80B0D358 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 015AC 80B0D35C 03E00008 */  jr      $ra                        
/* 015B0 80B0D360 27BD00B0 */  addiu   $sp, $sp, 0x00B0           ## $sp = 00000000

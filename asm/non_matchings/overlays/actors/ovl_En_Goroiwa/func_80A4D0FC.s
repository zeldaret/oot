.late_rodata
glabel D_80A4E090
 .word 0x477FFF00
glabel D_80A4E094
    .float 0.2

.text
glabel func_80A4D0FC
/* 0145C 80A4D0FC 27BDFF18 */  addiu   $sp, $sp, 0xFF18           ## $sp = FFFFFF18
/* 01460 80A4D100 AFBF009C */  sw      $ra, 0x009C($sp)           
/* 01464 80A4D104 AFBE0098 */  sw      $s8, 0x0098($sp)           
/* 01468 80A4D108 AFB70094 */  sw      $s7, 0x0094($sp)           
/* 0146C 80A4D10C AFB60090 */  sw      $s6, 0x0090($sp)           
/* 01470 80A4D110 AFB5008C */  sw      $s5, 0x008C($sp)           
/* 01474 80A4D114 AFB40088 */  sw      $s4, 0x0088($sp)           
/* 01478 80A4D118 AFB30084 */  sw      $s3, 0x0084($sp)           
/* 0147C 80A4D11C AFB20080 */  sw      $s2, 0x0080($sp)           
/* 01480 80A4D120 AFB1007C */  sw      $s1, 0x007C($sp)           
/* 01484 80A4D124 AFB00078 */  sw      $s0, 0x0078($sp)           
/* 01488 80A4D128 F7BE0070 */  sdc1    $f30, 0x0070($sp)          
/* 0148C 80A4D12C F7BC0068 */  sdc1    $f28, 0x0068($sp)          
/* 01490 80A4D130 F7BA0060 */  sdc1    $f26, 0x0060($sp)          
/* 01494 80A4D134 F7B80058 */  sdc1    $f24, 0x0058($sp)          
/* 01498 80A4D138 F7B60050 */  sdc1    $f22, 0x0050($sp)          
/* 0149C 80A4D13C F7B40048 */  sdc1    $f20, 0x0048($sp)          
/* 014A0 80A4D140 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 014A4 80A4D144 3C0180A5 */  lui     $at, %hi(D_80A4E090)       ## $at = 80A50000
/* 014A8 80A4D148 C43EE090 */  lwc1    $f30, %lo(D_80A4E090)($at) 
/* 014AC 80A4D14C 00021283 */  sra     $v0, $v0, 10               
/* 014B0 80A4D150 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 014B4 80A4D154 3C0180A5 */  lui     $at, %hi(D_80A4E094)       ## $at = 80A50000
/* 014B8 80A4D158 00021400 */  sll     $v0, $v0, 16               
/* 014BC 80A4D15C C43CE094 */  lwc1    $f28, %lo(D_80A4E094)($at) 
/* 014C0 80A4D160 00021403 */  sra     $v0, $v0, 16               
/* 014C4 80A4D164 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 014C8 80A4D168 3C0F80A5 */  lui     $t7, %hi(D_80A4DEF0)       ## $t7 = 80A50000
/* 014CC 80A4D16C 25EFDEF0 */  addiu   $t7, $t7, %lo(D_80A4DEF0)  ## $t7 = 80A4DEF0
/* 014D0 80A4D170 00027080 */  sll     $t6, $v0,  2               
/* 014D4 80A4D174 3C1E0401 */  lui     $s8, 0x0401                ## $s8 = 04010000
/* 014D8 80A4D178 4481D000 */  mtc1    $at, $f26                  ## $f26 = 50.00
/* 014DC 80A4D17C 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 014E0 80A4D180 27DED340 */  addiu   $s8, $s8, 0xD340           ## $s8 = 0400D340
/* 014E4 80A4D184 01CFA821 */  addu    $s5, $t6, $t7              
/* 014E8 80A4D188 27B100D0 */  addiu   $s1, $sp, 0x00D0           ## $s1 = FFFFFFE8
/* 014EC 80A4D18C 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 014F0 80A4D190 00009825 */  or      $s3, $zero, $zero          ## $s3 = 00000000
/* 014F4 80A4D194 24940024 */  addiu   $s4, $a0, 0x0024           ## $s4 = 00000024
/* 014F8 80A4D198 27B700C4 */  addiu   $s7, $sp, 0x00C4           ## $s7 = FFFFFFDC
.L80A4D19C:
/* 014FC 80A4D19C 00122400 */  sll     $a0, $s2, 16               
/* 01500 80A4D1A0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01504 80A4D1A4 00042403 */  sra     $a0, $a0, 16               
/* 01508 80A4D1A8 00122400 */  sll     $a0, $s2, 16               
/* 0150C 80A4D1AC 46000586 */  mov.s   $f22, $f0                  
/* 01510 80A4D1B0 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01514 80A4D1B4 00042403 */  sra     $a0, $a0, 16               
/* 01518 80A4D1B8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0151C 80A4D1BC 46000606 */  mov.s   $f24, $f0                  
/* 01520 80A4D1C0 461E0102 */  mul.s   $f4, $f0, $f30             
/* 01524 80A4D1C4 4600218D */  trunc.w.s $f6, $f4                   
/* 01528 80A4D1C8 44103000 */  mfc1    $s0, $f6                   
/* 0152C 80A4D1CC 00000000 */  nop
/* 01530 80A4D1D0 00108400 */  sll     $s0, $s0, 16               
/* 01534 80A4D1D4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01538 80A4D1D8 00108403 */  sra     $s0, $s0, 16               
/* 0153C 80A4D1DC 00102400 */  sll     $a0, $s0, 16               
/* 01540 80A4D1E0 00042403 */  sra     $a0, $a0, 16               
/* 01544 80A4D1E4 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01548 80A4D1E8 46000506 */  mov.s   $f20, $f0                  
/* 0154C 80A4D1EC 461AA202 */  mul.s   $f8, $f20, $f26            
/* 01550 80A4D1F0 00102400 */  sll     $a0, $s0, 16               
/* 01554 80A4D1F4 00042403 */  sra     $a0, $a0, 16               
/* 01558 80A4D1F8 46164282 */  mul.s   $f10, $f8, $f22            
/* 0155C 80A4D1FC 00000000 */  nop
/* 01560 80A4D200 460A0402 */  mul.s   $f16, $f0, $f10            
/* 01564 80A4D204 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01568 80A4D208 E7B000D0 */  swc1    $f16, 0x00D0($sp)          
/* 0156C 80A4D20C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01570 80A4D210 46000506 */  mov.s   $f20, $f0                  
/* 01574 80A4D214 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01578 80A4D218 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 0157C 80A4D21C 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01580 80A4D220 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 01584 80A4D224 46120101 */  sub.s   $f4, $f0, $f18             
/* 01588 80A4D228 C6B00000 */  lwc1    $f16, 0x0000($s5)          ## 00000000
/* 0158C 80A4D22C 46062202 */  mul.s   $f8, $f4, $f6              
/* 01590 80A4D230 00000000 */  nop
/* 01594 80A4D234 46144282 */  mul.s   $f10, $f8, $f20            
/* 01598 80A4D238 460A8480 */  add.s   $f18, $f16, $f10           
/* 0159C 80A4D23C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015A0 80A4D240 E7B200D4 */  swc1    $f18, 0x00D4($sp)          
/* 015A4 80A4D244 00102400 */  sll     $a0, $s0, 16               
/* 015A8 80A4D248 00042403 */  sra     $a0, $a0, 16               
/* 015AC 80A4D24C 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 015B0 80A4D250 46000506 */  mov.s   $f20, $f0                  
/* 015B4 80A4D254 461AA102 */  mul.s   $f4, $f20, $f26            
/* 015B8 80A4D258 C7B000D0 */  lwc1    $f16, 0x00D0($sp)          
/* 015BC 80A4D25C 46182182 */  mul.s   $f6, $f4, $f24             
/* 015C0 80A4D260 00000000 */  nop
/* 015C4 80A4D264 46060202 */  mul.s   $f8, $f0, $f6              
/* 015C8 80A4D268 00000000 */  nop
/* 015CC 80A4D26C 461C8282 */  mul.s   $f10, $f16, $f28           
/* 015D0 80A4D270 E7A800D8 */  swc1    $f8, 0x00D8($sp)           
/* 015D4 80A4D274 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 015D8 80A4D278 E7AA00C4 */  swc1    $f10, 0x00C4($sp)          
/* 015DC 80A4D27C 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 015E0 80A4D280 44819000 */  mtc1    $at, $f18                  ## $f18 = 15.00
/* 015E4 80A4D284 C7B000D8 */  lwc1    $f16, 0x00D8($sp)          
/* 015E8 80A4D288 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 015EC 80A4D28C 46120102 */  mul.s   $f4, $f0, $f18             
/* 015F0 80A4D290 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 015F4 80A4D294 02202025 */  or      $a0, $s1, $zero            ## $a0 = FFFFFFE8
/* 015F8 80A4D298 461C8282 */  mul.s   $f10, $f16, $f28           
/* 015FC 80A4D29C 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000024
/* 01600 80A4D2A0 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFE8
/* 01604 80A4D2A4 46062200 */  add.s   $f8, $f4, $f6              
/* 01608 80A4D2A8 E7AA00CC */  swc1    $f10, 0x00CC($sp)          
/* 0160C 80A4D2AC 0C01DFA7 */  jal     Math_Vec3f_Sum
              ## Vec3f_Add
/* 01610 80A4D2B0 E7A800C8 */  swc1    $f8, 0x00C8($sp)           
/* 01614 80A4D2B4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01618 80A4D2B8 00000000 */  nop
/* 0161C 80A4D2BC 3C0140E0 */  lui     $at, 0x40E0                ## $at = 40E00000
/* 01620 80A4D2C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 7.00
/* 01624 80A4D2C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01628 80A4D2C8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0162C 80A4D2CC 46120102 */  mul.s   $f4, $f0, $f18             
/* 01630 80A4D2D0 2419FEAC */  addiu   $t9, $zero, 0xFEAC         ## $t9 = FFFFFEAC
/* 01634 80A4D2D4 24080021 */  addiu   $t0, $zero, 0x0021         ## $t0 = 00000021
/* 01638 80A4D2D8 2409001C */  addiu   $t1, $zero, 0x001C         ## $t1 = 0000001C
/* 0163C 80A4D2DC 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 01640 80A4D2E0 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 01644 80A4D2E4 240E0046 */  addiu   $t6, $zero, 0x0046         ## $t6 = 00000046
/* 01648 80A4D2E8 46062200 */  add.s   $f8, $f4, $f6              
/* 0164C 80A4D2EC 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 01650 80A4D2F0 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 01654 80A4D2F4 AFB80038 */  sw      $t8, 0x0038($sp)           
/* 01658 80A4D2F8 4600440D */  trunc.w.s $f16, $f8                  
/* 0165C 80A4D2FC AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 01660 80A4D300 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 01664 80A4D304 AFAD0028 */  sw      $t5, 0x0028($sp)           
/* 01668 80A4D308 440C8000 */  mfc1    $t4, $f16                  
/* 0166C 80A4D30C AFAA001C */  sw      $t2, 0x001C($sp)           
/* 01670 80A4D310 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 01674 80A4D314 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01678 80A4D318 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0167C 80A4D31C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01680 80A4D320 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFE8
/* 01684 80A4D324 02E03025 */  or      $a2, $s7, $zero            ## $a2 = FFFFFFDC
/* 01688 80A4D328 02203825 */  or      $a3, $s1, $zero            ## $a3 = FFFFFFE8
/* 0168C 80A4D32C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01690 80A4D330 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 01694 80A4D334 AFBE003C */  sw      $s8, 0x003C($sp)           
/* 01698 80A4D338 0C00A7A3 */  jal     func_80029E8C
              
/* 0169C 80A4D33C AFAC0024 */  sw      $t4, 0x0024($sp)           
/* 016A0 80A4D340 26524E20 */  addiu   $s2, $s2, 0x4E20           ## $s2 = 00004E20
/* 016A4 80A4D344 00129400 */  sll     $s2, $s2, 16               
/* 016A8 80A4D348 26730001 */  addiu   $s3, $s3, 0x0001           ## $s3 = 00000001
/* 016AC 80A4D34C 24010010 */  addiu   $at, $zero, 0x0010         ## $at = 00000010
/* 016B0 80A4D350 1661FF92 */  bne     $s3, $at, .L80A4D19C       
/* 016B4 80A4D354 00129403 */  sra     $s2, $s2, 16               
/* 016B8 80A4D358 C68A0000 */  lwc1    $f10, 0x0000($s4)          ## 00000024
/* 016BC 80A4D35C C6B20000 */  lwc1    $f18, 0x0000($s5)          ## 00000000
/* 016C0 80A4D360 24190046 */  addiu   $t9, $zero, 0x0046         ## $t9 = 00000046
/* 016C4 80A4D364 E7AA00D0 */  swc1    $f10, 0x00D0($sp)          
/* 016C8 80A4D368 C6840004 */  lwc1    $f4, 0x0004($s4)           ## 00000028
/* 016CC 80A4D36C 2408006E */  addiu   $t0, $zero, 0x006E         ## $t0 = 0000006E
/* 016D0 80A4D370 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 016D4 80A4D374 46049180 */  add.s   $f6, $f18, $f4             
/* 016D8 80A4D378 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 016DC 80A4D37C 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFE8
/* 016E0 80A4D380 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
/* 016E4 80A4D384 E7A600D4 */  swc1    $f6, 0x00D4($sp)           
/* 016E8 80A4D388 C6880008 */  lwc1    $f8, 0x0008($s4)           ## 0000002C
/* 016EC 80A4D38C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 016F0 80A4D390 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 016F4 80A4D394 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 016F8 80A4D398 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 016FC 80A4D39C 0C00CD20 */  jal     func_80033480              
/* 01700 80A4D3A0 E7A800D8 */  swc1    $f8, 0x00D8($sp)           
/* 01704 80A4D3A4 240A006E */  addiu   $t2, $zero, 0x006E         ## $t2 = 0000006E
/* 01708 80A4D3A8 240B00A0 */  addiu   $t3, $zero, 0x00A0         ## $t3 = 000000A0
/* 0170C 80A4D3AC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01710 80A4D3B0 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 01714 80A4D3B4 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 01718 80A4D3B8 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 0171C 80A4D3BC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 01720 80A4D3C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = FFFFFFE8
/* 01724 80A4D3C4 3C0642B4 */  lui     $a2, 0x42B4                ## $a2 = 42B40000
/* 01728 80A4D3C8 0C00CD20 */  jal     func_80033480              
/* 0172C 80A4D3CC 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 01730 80A4D3D0 8FBF009C */  lw      $ra, 0x009C($sp)           
/* 01734 80A4D3D4 D7B40048 */  ldc1    $f20, 0x0048($sp)          
/* 01738 80A4D3D8 D7B60050 */  ldc1    $f22, 0x0050($sp)          
/* 0173C 80A4D3DC D7B80058 */  ldc1    $f24, 0x0058($sp)          
/* 01740 80A4D3E0 D7BA0060 */  ldc1    $f26, 0x0060($sp)          
/* 01744 80A4D3E4 D7BC0068 */  ldc1    $f28, 0x0068($sp)          
/* 01748 80A4D3E8 D7BE0070 */  ldc1    $f30, 0x0070($sp)          
/* 0174C 80A4D3EC 8FB00078 */  lw      $s0, 0x0078($sp)           
/* 01750 80A4D3F0 8FB1007C */  lw      $s1, 0x007C($sp)           
/* 01754 80A4D3F4 8FB20080 */  lw      $s2, 0x0080($sp)           
/* 01758 80A4D3F8 8FB30084 */  lw      $s3, 0x0084($sp)           
/* 0175C 80A4D3FC 8FB40088 */  lw      $s4, 0x0088($sp)           
/* 01760 80A4D400 8FB5008C */  lw      $s5, 0x008C($sp)           
/* 01764 80A4D404 8FB60090 */  lw      $s6, 0x0090($sp)           
/* 01768 80A4D408 8FB70094 */  lw      $s7, 0x0094($sp)           
/* 0176C 80A4D40C 8FBE0098 */  lw      $s8, 0x0098($sp)           
/* 01770 80A4D410 03E00008 */  jr      $ra                        
/* 01774 80A4D414 27BD00E8 */  addiu   $sp, $sp, 0x00E8           ## $sp = 00000000

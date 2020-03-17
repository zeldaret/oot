glabel func_80B1CC04
/* 01304 80B1CC04 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01308 80B1CC08 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0130C 80B1CC0C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01310 80B1CC10 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01314 80B1CC14 848201E0 */  lh      $v0, 0x01E0($a0)           ## 000001E0
/* 01318 80B1CC18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0131C 80B1CC1C 10400028 */  beq     $v0, $zero, .L80B1CCC0     
/* 01320 80B1CC20 00000000 */  nop
/* 01324 80B1CC24 848300B6 */  lh      $v1, 0x00B6($a0)           ## 000000B6
/* 01328 80B1CC28 848E021E */  lh      $t6, 0x021E($a0)           ## 0000021E
/* 0132C 80B1CC2C 848F008A */  lh      $t7, 0x008A($a0)           ## 0000008A
/* 01330 80B1CC30 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01334 80B1CC34 006E1823 */  subu    $v1, $v1, $t6              
/* 01338 80B1CC38 00031C00 */  sll     $v1, $v1, 16               
/* 0133C 80B1CC3C 00031C03 */  sra     $v1, $v1, 16               
/* 01340 80B1CC40 01E31823 */  subu    $v1, $t7, $v1              
/* 01344 80B1CC44 00031C00 */  sll     $v1, $v1, 16               
/* 01348 80B1CC48 14410008 */  bne     $v0, $at, .L80B1CC6C       
/* 0134C 80B1CC4C 00031C03 */  sra     $v1, $v1, 16               
/* 01350 80B1CC50 0C2C6FE3 */  jal     func_80B1BF8C              
/* 01354 80B1CC54 00000000 */  nop
/* 01358 80B1CC58 3C1880B2 */  lui     $t8, %hi(func_80B1CEF8)    ## $t8 = 80B20000
/* 0135C 80B1CC5C 2718CEF8 */  addiu   $t8, $t8, %lo(func_80B1CEF8) ## $t8 = 80B1CEF8
/* 01360 80B1CC60 A60001E0 */  sh      $zero, 0x01E0($s0)         ## 000001E0
/* 01364 80B1CC64 1000006B */  beq     $zero, $zero, .L80B1CE14   
/* 01368 80B1CC68 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
.L80B1CC6C:
/* 0136C 80B1CC6C 861901D4 */  lh      $t9, 0x01D4($s0)           ## 000001D4
/* 01370 80B1CC70 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01374 80B1CC74 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 01378 80B1CC78 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0137C 80B1CC7C 3C0880B2 */  lui     $t0, %hi(func_80B1C54C)    ## $t0 = 80B20000
/* 01380 80B1CC80 3C0980B2 */  lui     $t1, %hi(func_80B1C5A0)    ## $t1 = 80B20000
/* 01384 80B1CC84 468021A0 */  cvt.s.w $f6, $f4                   
/* 01388 80B1CC88 2529C5A0 */  addiu   $t1, $t1, %lo(func_80B1C5A0) ## $t1 = 80B1C5A0
/* 0138C 80B1CC8C 2508C54C */  addiu   $t0, $t0, %lo(func_80B1C54C) ## $t0 = 80B1C54C
/* 01390 80B1CC90 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01394 80B1CC94 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01398 80B1CC98 A7A3002E */  sh      $v1, 0x002E($sp)           
/* 0139C 80B1CC9C 46083280 */  add.s   $f10, $f6, $f8             
/* 013A0 80B1CCA0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 013A4 80B1CCA4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 013A8 80B1CCA8 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 013AC 80B1CCAC 44075000 */  mfc1    $a3, $f10                  
/* 013B0 80B1CCB0 0C00D0F3 */  jal     func_800343CC              
/* 013B4 80B1CCB4 00000000 */  nop
/* 013B8 80B1CCB8 10000044 */  beq     $zero, $zero, .L80B1CDCC   
/* 013BC 80B1CCBC 87A3002E */  lh      $v1, 0x002E($sp)           
.L80B1CCC0:
/* 013C0 80B1CCC0 0C2C7034 */  jal     func_80B1C0D0              
/* 013C4 80B1CCC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013C8 80B1CCC8 1040001F */  beq     $v0, $zero, .L80B1CD48     
/* 013CC 80B1CCCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 013D0 80B1CCD0 860C01D4 */  lh      $t4, 0x01D4($s0)           ## 000001D4
/* 013D4 80B1CCD4 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 013D8 80B1CCD8 860A021E */  lh      $t2, 0x021E($s0)           ## 0000021E
/* 013DC 80B1CCDC 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 013E0 80B1CCE0 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 013E4 80B1CCE4 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 013E8 80B1CCE8 468084A0 */  cvt.s.w $f18, $f16                 
/* 013EC 80B1CCEC 860B008A */  lh      $t3, 0x008A($s0)           ## 0000008A
/* 013F0 80B1CCF0 006A1823 */  subu    $v1, $v1, $t2              
/* 013F4 80B1CCF4 00031C00 */  sll     $v1, $v1, 16               
/* 013F8 80B1CCF8 00031C03 */  sra     $v1, $v1, 16               
/* 013FC 80B1CCFC A600021C */  sh      $zero, 0x021C($s0)         ## 0000021C
/* 01400 80B1CD00 46049180 */  add.s   $f6, $f18, $f4             
/* 01404 80B1CD04 01631823 */  subu    $v1, $t3, $v1              
/* 01408 80B1CD08 00031C00 */  sll     $v1, $v1, 16               
/* 0140C 80B1CD0C 3C0D80B2 */  lui     $t5, %hi(func_80B1C54C)    ## $t5 = 80B20000
/* 01410 80B1CD10 3C0E80B2 */  lui     $t6, %hi(func_80B1C5A0)    ## $t6 = 80B20000
/* 01414 80B1CD14 00031C03 */  sra     $v1, $v1, 16               
/* 01418 80B1CD18 25CEC5A0 */  addiu   $t6, $t6, %lo(func_80B1C5A0) ## $t6 = 80B1C5A0
/* 0141C 80B1CD1C 25ADC54C */  addiu   $t5, $t5, %lo(func_80B1C54C) ## $t5 = 80B1C54C
/* 01420 80B1CD20 44073000 */  mfc1    $a3, $f6                   
/* 01424 80B1CD24 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 01428 80B1CD28 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 0142C 80B1CD2C A7A3002E */  sh      $v1, 0x002E($sp)           
/* 01430 80B1CD30 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01434 80B1CD34 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01438 80B1CD38 0C00D0F3 */  jal     func_800343CC              
/* 0143C 80B1CD3C 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 01440 80B1CD40 10000022 */  beq     $zero, $zero, .L80B1CDCC   
/* 01444 80B1CD44 87A3002E */  lh      $v1, 0x002E($sp)           
.L80B1CD48:
/* 01448 80B1CD48 0C00BC65 */  jal     func_8002F194              
/* 0144C 80B1CD4C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01450 80B1CD50 1040000D */  beq     $v0, $zero, .L80B1CD88     
/* 01454 80B1CD54 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 01458 80B1CD58 860300B6 */  lh      $v1, 0x00B6($s0)           ## 000000B6
/* 0145C 80B1CD5C 860F021E */  lh      $t7, 0x021E($s0)           ## 0000021E
/* 01460 80B1CD60 8618008A */  lh      $t8, 0x008A($s0)           ## 0000008A
/* 01464 80B1CD64 A600021C */  sh      $zero, 0x021C($s0)         ## 0000021C
/* 01468 80B1CD68 006F1823 */  subu    $v1, $v1, $t7              
/* 0146C 80B1CD6C 00031C00 */  sll     $v1, $v1, 16               
/* 01470 80B1CD70 00031C03 */  sra     $v1, $v1, 16               
/* 01474 80B1CD74 03031823 */  subu    $v1, $t8, $v1              
/* 01478 80B1CD78 00031C00 */  sll     $v1, $v1, 16               
/* 0147C 80B1CD7C 00031C03 */  sra     $v1, $v1, 16               
/* 01480 80B1CD80 10000012 */  beq     $zero, $zero, .L80B1CDCC   
/* 01484 80B1CD84 A61901E0 */  sh      $t9, 0x01E0($s0)           ## 000001E0
.L80B1CD88:
/* 01488 80B1CD88 8603021C */  lh      $v1, 0x021C($s0)           ## 0000021C
/* 0148C 80B1CD8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01490 80B1CD90 14600003 */  bne     $v1, $zero, .L80B1CDA0     
/* 01494 80B1CD94 2468FFFF */  addiu   $t0, $v1, 0xFFFF           ## $t0 = FFFFFFFF
/* 01498 80B1CD98 10000003 */  beq     $zero, $zero, .L80B1CDA8   
/* 0149C 80B1CD9C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B1CDA0:
/* 014A0 80B1CDA0 A608021C */  sh      $t0, 0x021C($s0)           ## 0000021C
/* 014A4 80B1CDA4 8602021C */  lh      $v0, 0x021C($s0)           ## 0000021C
.L80B1CDA8:
/* 014A8 80B1CDA8 14400008 */  bne     $v0, $zero, .L80B1CDCC     
/* 014AC 80B1CDAC 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 014B0 80B1CDB0 0C2C6FC5 */  jal     func_80B1BF14              
/* 014B4 80B1CDB4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 014B8 80B1CDB8 3C0980B2 */  lui     $t1, %hi(func_80B1CE28)    ## $t1 = 80B20000
/* 014BC 80B1CDBC 2529CE28 */  addiu   $t1, $t1, %lo(func_80B1CE28) ## $t1 = 80B1CE28
/* 014C0 80B1CDC0 AE090190 */  sw      $t1, 0x0190($s0)           ## 00000190
/* 014C4 80B1CDC4 10000001 */  beq     $zero, $zero, .L80B1CDCC   
/* 014C8 80B1CDC8 87A3002E */  lh      $v1, 0x002E($sp)           
.L80B1CDCC:
/* 014CC 80B1CDCC 00032023 */  subu    $a0, $zero, $v1            
/* 014D0 80B1CDD0 288104F6 */  slti    $at, $a0, 0x04F6           
/* 014D4 80B1CDD4 10200003 */  beq     $at, $zero, .L80B1CDE4     
/* 014D8 80B1CDD8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 014DC 80B1CDDC 10000008 */  beq     $zero, $zero, .L80B1CE00   
/* 014E0 80B1CDE0 240504F6 */  addiu   $a1, $zero, 0x04F6         ## $a1 = 000004F6
.L80B1CDE4:
/* 014E4 80B1CDE4 288129EB */  slti    $at, $a0, 0x29EB           
/* 014E8 80B1CDE8 14200003 */  bne     $at, $zero, .L80B1CDF8     
/* 014EC 80B1CDEC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 014F0 80B1CDF0 10000001 */  beq     $zero, $zero, .L80B1CDF8   
/* 014F4 80B1CDF4 240229EA */  addiu   $v0, $zero, 0x29EA         ## $v0 = 000029EA
.L80B1CDF8:
/* 014F8 80B1CDF8 00022C00 */  sll     $a1, $v0, 16               
/* 014FC 80B1CDFC 00052C03 */  sra     $a1, $a1, 16               
.L80B1CE00:
/* 01500 80B1CE00 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 01504 80B1CE04 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01508 80B1CE08 26040226 */  addiu   $a0, $s0, 0x0226           ## $a0 = 00000226
/* 0150C 80B1CE0C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01510 80B1CE10 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
.L80B1CE14:
/* 01514 80B1CE14 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01518 80B1CE18 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0151C 80B1CE1C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01520 80B1CE20 03E00008 */  jr      $ra                        
/* 01524 80B1CE24 00000000 */  nop



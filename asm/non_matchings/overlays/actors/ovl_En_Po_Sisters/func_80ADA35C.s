glabel func_80ADA35C
/* 013CC 80ADA35C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 013D0 80ADA360 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 013D4 80ADA364 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 013D8 80ADA368 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 013DC 80ADA36C 3C0E80AE */  lui     $t6, %hi(func_80ADBF58)    ## $t6 = 80AE0000
/* 013E0 80ADA370 25CEBF58 */  addiu   $t6, $t6, %lo(func_80ADBF58) ## $t6 = 80ADBF58
/* 013E4 80ADA374 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013E8 80ADA378 15CF0003 */  bne     $t6, $t7, .L80ADA388       
/* 013EC 80ADA37C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 013F0 80ADA380 1000000E */  beq     $zero, $zero, .L80ADA3BC   
/* 013F4 80ADA384 C480000C */  lwc1    $f0, 0x000C($a0)           ## 0000000C
.L80ADA388:
/* 013F8 80ADA388 92020194 */  lbu     $v0, 0x0194($s0)           ## 00000194
/* 013FC 80ADA38C 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01400 80ADA390 50400003 */  beql    $v0, $zero, .L80ADA3A0     
/* 01404 80ADA394 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 01408 80ADA398 14410005 */  bne     $v0, $at, .L80ADA3B0       
/* 0140C 80ADA39C 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
.L80ADA3A0:
/* 01410 80ADA3A0 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 01414 80ADA3A4 C4640028 */  lwc1    $f4, 0x0028($v1)           ## 00000028
/* 01418 80ADA3A8 10000004 */  beq     $zero, $zero, .L80ADA3BC   
/* 0141C 80ADA3AC 46062000 */  add.s   $f0, $f4, $f6              
.L80ADA3B0:
/* 01420 80ADA3B0 3C014450 */  lui     $at, 0x4450                ## $at = 44500000
/* 01424 80ADA3B4 44810000 */  mtc1    $at, $f0                   ## $f0 = 832.00
/* 01428 80ADA3B8 00000000 */  nop
.L80ADA3BC:
/* 0142C 80ADA3BC 44050000 */  mfc1    $a1, $f0                   
/* 01430 80ADA3C0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01434 80ADA3C4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01438 80ADA3C8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0143C 80ADA3CC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 01440 80ADA3D0 92020196 */  lbu     $v0, 0x0196($s0)           ## 00000196
/* 01444 80ADA3D4 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 01448 80ADA3D8 14400003 */  bne     $v0, $zero, .L80ADA3E8     
/* 0144C 80ADA3DC 00000000 */  nop
/* 01450 80ADA3E0 A2180196 */  sb      $t8, 0x0196($s0)           ## 00000196
/* 01454 80ADA3E4 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 00000020
.L80ADA3E8:
/* 01458 80ADA3E8 10400004 */  beq     $v0, $zero, .L80ADA3FC     
/* 0145C 80ADA3EC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000020
/* 01460 80ADA3F0 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = 0000001F
/* 01464 80ADA3F4 A2190196 */  sb      $t9, 0x0196($s0)           ## 00000196
/* 01468 80ADA3F8 332300FF */  andi    $v1, $t9, 0x00FF           ## $v1 = 0000001F
.L80ADA3FC:
/* 0146C 80ADA3FC 00602025 */  or      $a0, $v1, $zero            ## $a0 = 0000001F
/* 01470 80ADA400 000426C0 */  sll     $a0, $a0, 27               
/* 01474 80ADA404 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01478 80ADA408 00042403 */  sra     $a0, $a0, 16               
/* 0147C 80ADA40C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01480 80ADA410 E7A00020 */  swc1    $f0, 0x0020($sp)           
/* 01484 80ADA414 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01488 80ADA418 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 0148C 80ADA41C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01490 80ADA420 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01494 80ADA424 C7A40020 */  lwc1    $f4, 0x0020($sp)           
/* 01498 80ADA428 92080231 */  lbu     $t0, 0x0231($s0)           ## 00000231
/* 0149C 80ADA42C 46005402 */  mul.s   $f16, $f10, $f0            
/* 014A0 80ADA430 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 014A4 80ADA434 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 014A8 80ADA438 46104480 */  add.s   $f18, $f8, $f16            
/* 014AC 80ADA43C 46049182 */  mul.s   $f6, $f18, $f4             
/* 014B0 80ADA440 46065200 */  add.s   $f8, $f10, $f6             
/* 014B4 80ADA444 15010013 */  bne     $t0, $at, .L80ADA494       
/* 014B8 80ADA448 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 014BC 80ADA44C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 014C0 80ADA450 3C0980AE */  lui     $t1, %hi(func_80ADA8C0)    ## $t1 = 80AE0000
/* 014C4 80ADA454 2529A8C0 */  addiu   $t1, $t1, %lo(func_80ADA8C0) ## $t1 = 80ADA8C0
/* 014C8 80ADA458 1122000E */  beq     $t1, $v0, .L80ADA494       
/* 014CC 80ADA45C 3C0A80AE */  lui     $t2, %hi(func_80ADA7F0)    ## $t2 = 80AE0000
/* 014D0 80ADA460 254AA7F0 */  addiu   $t2, $t2, %lo(func_80ADA7F0) ## $t2 = 80ADA7F0
/* 014D4 80ADA464 1142000B */  beq     $t2, $v0, .L80ADA494       
/* 014D8 80ADA468 3C0B80AE */  lui     $t3, %hi(func_80ADAC70)    ## $t3 = 80AE0000
/* 014DC 80ADA46C 256BAC70 */  addiu   $t3, $t3, %lo(func_80ADAC70) ## $t3 = 80ADAC70
/* 014E0 80ADA470 15620006 */  bne     $t3, $v0, .L80ADA48C       
/* 014E4 80ADA474 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014E8 80ADA478 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014EC 80ADA47C 0C00BE5D */  jal     func_8002F974              
/* 014F0 80ADA480 24053072 */  addiu   $a1, $zero, 0x3072         ## $a1 = 00003072
/* 014F4 80ADA484 10000004 */  beq     $zero, $zero, .L80ADA498   
/* 014F8 80ADA488 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADA48C:
/* 014FC 80ADA48C 0C00BE5D */  jal     func_8002F974              
/* 01500 80ADA490 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
.L80ADA494:
/* 01504 80ADA494 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADA498:
/* 01508 80ADA498 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0150C 80ADA49C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01510 80ADA4A0 03E00008 */  jr      $ra                        
/* 01514 80ADA4A4 00000000 */  nop



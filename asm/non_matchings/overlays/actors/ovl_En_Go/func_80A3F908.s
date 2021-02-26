glabel func_80A3F908
/* 01398 80A3F908 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0139C 80A3F90C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 013A0 80A3F910 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 013A4 80A3F914 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 013A8 80A3F918 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 013AC 80A3F91C 3C1880A4 */  lui     $t8, %hi(func_80A406E0)    ## $t8 = 80A40000
/* 013B0 80A3F920 271806E0 */  addiu   $t8, $t8, %lo(func_80A406E0) ## $t8 = 80A406E0
/* 013B4 80A3F924 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 013B8 80A3F928 8C820190 */  lw      $v0, 0x0190($a0)           ## 00000190
/* 013BC 80A3F92C 3C1980A4 */  lui     $t9, %hi(func_80A4011C)    ## $t9 = 80A40000
/* 013C0 80A3F930 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 013C4 80A3F934 13020014 */  beq     $t8, $v0, .L80A3F988       
/* 013C8 80A3F938 2739011C */  addiu   $t9, $t9, %lo(func_80A4011C) ## $t9 = 80A4011C
/* 013CC 80A3F93C 13220012 */  beq     $t9, $v0, .L80A3F988       
/* 013D0 80A3F940 3C0880A4 */  lui     $t0, %hi(func_80A4020C)    ## $t0 = 80A40000
/* 013D4 80A3F944 2508020C */  addiu   $t0, $t0, %lo(func_80A4020C) ## $t0 = 80A4020C
/* 013D8 80A3F948 1102000F */  beq     $t0, $v0, .L80A3F988       
/* 013DC 80A3F94C 3C0980A4 */  lui     $t1, %hi(func_80A40D5C)    ## $t1 = 80A40000
/* 013E0 80A3F950 25290D5C */  addiu   $t1, $t1, %lo(func_80A40D5C) ## $t1 = 80A40D5C
/* 013E4 80A3F954 1122000C */  beq     $t1, $v0, .L80A3F988       
/* 013E8 80A3F958 3C0A80A4 */  lui     $t2, %hi(func_80A40DCC)    ## $t2 = 80A40000
/* 013EC 80A3F95C 254A0DCC */  addiu   $t2, $t2, %lo(func_80A40DCC) ## $t2 = 80A40DCC
/* 013F0 80A3F960 11420009 */  beq     $t2, $v0, .L80A3F988       
/* 013F4 80A3F964 3C0B80A4 */  lui     $t3, %hi(func_80A40B74)    ## $t3 = 80A40000
/* 013F8 80A3F968 256B0B74 */  addiu   $t3, $t3, %lo(func_80A40B74) ## $t3 = 80A40B74
/* 013FC 80A3F96C 11620006 */  beq     $t3, $v0, .L80A3F988       
/* 01400 80A3F970 3C0C80A4 */  lui     $t4, %hi(func_80A40C78)    ## $t4 = 80A40000
/* 01404 80A3F974 258C0C78 */  addiu   $t4, $t4, %lo(func_80A40C78) ## $t4 = 80A40C78
/* 01408 80A3F978 11820003 */  beq     $t4, $v0, .L80A3F988       
/* 0140C 80A3F97C 3C0D80A4 */  lui     $t5, %hi(func_80A40B1C)    ## $t5 = 80A40000
/* 01410 80A3F980 25AD0B1C */  addiu   $t5, $t5, %lo(func_80A40B1C) ## $t5 = 80A40B1C
/* 01414 80A3F984 15A20064 */  bne     $t5, $v0, .L80A3FB18       
.L80A3F988:
/* 01418 80A3F988 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0141C 80A3F98C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 01420 80A3F990 3C0180A4 */  lui     $at, %hi(D_80A420DC)       ## $at = 80A40000
/* 01424 80A3F994 C43020DC */  lwc1    $f16, %lo(D_80A420DC)($at) 
/* 01428 80A3F998 C60A0050 */  lwc1    $f10, 0x0050($s0)          ## 00000050
/* 0142C 80A3F99C 860E01D4 */  lh      $t6, 0x01D4($s0)           ## 000001D4
/* 01430 80A3F9A0 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 01434 80A3F9A4 46105483 */  div.s   $f18, $f10, $f16           
/* 01438 80A3F9A8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 0143C 80A3F9AC 24030090 */  addiu   $v1, $zero, 0x0090         ## $v1 = 00000090
/* 01440 80A3F9B0 3C0F80A4 */  lui     $t7, %hi(func_80A3E578)    ## $t7 = 80A40000
/* 01444 80A3F9B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 01448 80A3F9B8 3C1880A4 */  lui     $t8, %hi(func_80A3E908)    ## $t8 = 80A40000
/* 0144C 80A3F9BC 3C1980A4 */  lui     $t9, %hi(func_80A3E578)    ## $t9 = 80A40000
/* 01450 80A3F9C0 3C0880A4 */  lui     $t0, %hi(func_80A3E908)    ## $t0 = 80A40000
/* 01454 80A3F9C4 304200F0 */  andi    $v0, $v0, 0x00F0           ## $v0 = 00000000
/* 01458 80A3F9C8 3C0180A4 */  lui     $at, %hi(D_80A420E0)       ## $at = 80A40000
/* 0145C 80A3F9CC 2718E908 */  addiu   $t8, $t8, %lo(func_80A3E908) ## $t8 = 80A3E908
/* 01460 80A3F9D0 25EFE578 */  addiu   $t7, $t7, %lo(func_80A3E578) ## $t7 = 80A3E578
/* 01464 80A3F9D4 2508E908 */  addiu   $t0, $t0, %lo(func_80A3E908) ## $t0 = 80A3E908
/* 01468 80A3F9D8 2739E578 */  addiu   $t9, $t9, %lo(func_80A3E578) ## $t9 = 80A3E578
/* 0146C 80A3F9DC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01470 80A3F9E0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01474 80A3F9E4 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 01478 80A3F9E8 46083000 */  add.s   $f0, $f6, $f8              
/* 0147C 80A3F9EC 46120002 */  mul.s   $f0, $f0, $f18             
/* 01480 80A3F9F0 14620004 */  bne     $v1, $v0, .L80A3FA04       
/* 01484 80A3F9F4 00000000 */  nop
/* 01488 80A3F9F8 C42420E0 */  lwc1    $f4, %lo(D_80A420E0)($at)  
/* 0148C 80A3F9FC 46040002 */  mul.s   $f0, $f0, $f4              
/* 01490 80A3FA00 00000000 */  nop
.L80A3FA04:
/* 01494 80A3FA04 5462000B */  bnel    $v1, $v0, .L80A3FA34       
/* 01498 80A3FA08 44070000 */  mfc1    $a3, $f0                   
/* 0149C 80A3FA0C 44070000 */  mfc1    $a3, $f0                   
/* 014A0 80A3FA10 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 014A4 80A3FA14 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 014A8 80A3FA18 260601E0 */  addiu   $a2, $s0, 0x01E0           ## $a2 = 000001E0
/* 014AC 80A3FA1C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 014B0 80A3FA20 0C28FB49 */  jal     func_80A3ED24              
/* 014B4 80A3FA24 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 014B8 80A3FA28 10000006 */  beq     $zero, $zero, .L80A3FA44   
/* 014BC 80A3FA2C 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 014C0 80A3FA30 44070000 */  mfc1    $a3, $f0                   
.L80A3FA34:
/* 014C4 80A3FA34 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 014C8 80A3FA38 0C00D0F3 */  jal     func_800343CC              
/* 014CC 80A3FA3C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 014D0 80A3FA40 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
.L80A3FA44:
/* 014D4 80A3FA44 24010090 */  addiu   $at, $zero, 0x0090         ## $at = 00000090
/* 014D8 80A3FA48 312A00F0 */  andi    $t2, $t1, 0x00F0           ## $t2 = 00000000
/* 014DC 80A3FA4C 15410032 */  bne     $t2, $at, .L80A3FB18       
/* 014E0 80A3FA50 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 014E4 80A3FA54 14410030 */  bne     $v0, $at, .L80A3FB18       
/* 014E8 80A3FA58 3C0B8012 */  lui     $t3, %hi(gItemSlots+0x2d)
/* 014EC 80A3FA5C 916B7491 */  lbu     $t3, %lo(gItemSlots+0x2d)($t3)
/* 014F0 80A3FA60 3C028016 */  lui     $v0, %hi(gSaveContext+0x74)
/* 014F4 80A3FA64 24010033 */  addiu   $at, $zero, 0x0033         ## $at = 00000033
/* 014F8 80A3FA68 004B1021 */  addu    $v0, $v0, $t3              
/* 014FC 80A3FA6C 9042E6D4 */  lbu     $v0, %lo(gSaveContext+0x74)($v0)
/* 01500 80A3FA70 5441001B */  bnel    $v0, $at, .L80A3FAE0       
/* 01504 80A3FA74 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
/* 01508 80A3FA78 0C00BCDA */  jal     func_8002F368              
/* 0150C 80A3FA7C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01510 80A3FA80 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 01514 80A3FA84 1441000C */  bne     $v0, $at, .L80A3FAB8       
/* 01518 80A3FA88 24183053 */  addiu   $t8, $zero, 0x3053         ## $t8 = 00003053
/* 0151C 80A3FA8C 3C0C8016 */  lui     $t4, %hi(gSaveContext+0xf0e)
/* 01520 80A3FA90 958CF56E */  lhu     $t4, %lo(gSaveContext+0xf0e)($t4)
/* 01524 80A3FA94 240E3055 */  addiu   $t6, $zero, 0x3055         ## $t6 = 00003055
/* 01528 80A3FA98 240F3054 */  addiu   $t7, $zero, 0x3054         ## $t7 = 00003054
/* 0152C 80A3FA9C 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 01530 80A3FAA0 11A00003 */  beq     $t5, $zero, .L80A3FAB0     
/* 01534 80A3FAA4 00000000 */  nop
/* 01538 80A3FAA8 10000004 */  beq     $zero, $zero, .L80A3FABC   
/* 0153C 80A3FAAC A60E010E */  sh      $t6, 0x010E($s0)           ## 0000010E
.L80A3FAB0:
/* 01540 80A3FAB0 10000002 */  beq     $zero, $zero, .L80A3FABC   
/* 01544 80A3FAB4 A60F010E */  sh      $t7, 0x010E($s0)           ## 0000010E
.L80A3FAB8:
/* 01548 80A3FAB8 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
.L80A3FABC:
/* 0154C 80A3FABC 9619010E */  lhu     $t9, 0x010E($s0)           ## 0000010E
/* 01550 80A3FAC0 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 01554 80A3FAC4 3C098012 */  lui     $t1, %hi(gItemSlots+0x2d)
/* 01558 80A3FAC8 3C028016 */  lui     $v0, %hi(gSaveContext+0x74)
/* 0155C 80A3FACC A519010E */  sh      $t9, 0x010E($t0)           ## 0000010E
/* 01560 80A3FAD0 91297491 */  lbu     $t1, %lo(gItemSlots+0x2d)($t1)
/* 01564 80A3FAD4 00491021 */  addu    $v0, $v0, $t1              
/* 01568 80A3FAD8 9042E6D4 */  lbu     $v0, %lo(gSaveContext+0x74)($v0)
/* 0156C 80A3FADC 24010036 */  addiu   $at, $zero, 0x0036         ## $at = 00000036
.L80A3FAE0:
/* 01570 80A3FAE0 5441000E */  bnel    $v0, $at, .L80A3FB1C       
/* 01574 80A3FAE4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01578 80A3FAE8 0C00BCDA */  jal     func_8002F368              
/* 0157C 80A3FAEC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01580 80A3FAF0 2401000E */  addiu   $at, $zero, 0x000E         ## $at = 0000000E
/* 01584 80A3FAF4 14410004 */  bne     $v0, $at, .L80A3FB08       
/* 01588 80A3FAF8 240B3058 */  addiu   $t3, $zero, 0x3058         ## $t3 = 00003058
/* 0158C 80A3FAFC 240A3059 */  addiu   $t2, $zero, 0x3059         ## $t2 = 00003059
/* 01590 80A3FB00 10000002 */  beq     $zero, $zero, .L80A3FB0C   
/* 01594 80A3FB04 A60A010E */  sh      $t2, 0x010E($s0)           ## 0000010E
.L80A3FB08:
/* 01598 80A3FB08 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
.L80A3FB0C:
/* 0159C 80A3FB0C 960C010E */  lhu     $t4, 0x010E($s0)           ## 0000010E
/* 015A0 80A3FB10 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 015A4 80A3FB14 A5AC010E */  sh      $t4, 0x010E($t5)           ## 0000010E
.L80A3FB18:
/* 015A8 80A3FB18 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A3FB1C:
/* 015AC 80A3FB1C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 015B0 80A3FB20 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 015B4 80A3FB24 03E00008 */  jr      $ra                        
/* 015B8 80A3FB28 00000000 */  nop

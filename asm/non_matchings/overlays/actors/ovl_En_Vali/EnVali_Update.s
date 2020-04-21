glabel EnVali_Update
/* 01410 80B27AC0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01414 80B27AC4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01418 80B27AC8 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 0141C 80B27ACC AFB00014 */  sw      $s0, 0x0014($sp)           
/* 01420 80B27AD0 9083040C */  lbu     $v1, 0x040C($a0)           ## 0000040C
/* 01424 80B27AD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01428 80B27AD8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0142C 80B27ADC 306E0002 */  andi    $t6, $v1, 0x0002           ## $t6 = 00000000
/* 01430 80B27AE0 15C00009 */  bne     $t6, $zero, .L80B27B08     
/* 01434 80B27AE4 306DFFFD */  andi    $t5, $v1, 0xFFFD           ## $t5 = 00000000
/* 01438 80B27AE8 908F030C */  lbu     $t7, 0x030C($a0)           ## 0000030C
/* 0143C 80B27AEC 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 01440 80B27AF0 57000006 */  bnel    $t8, $zero, .L80B27B0C     
/* 01444 80B27AF4 9209030C */  lbu     $t1, 0x030C($s0)           ## 0000030C
/* 01448 80B27AF8 9099038C */  lbu     $t9, 0x038C($a0)           ## 0000038C
/* 0144C 80B27AFC 33280002 */  andi    $t0, $t9, 0x0002           ## $t0 = 00000000
/* 01450 80B27B00 5100000B */  beql    $t0, $zero, .L80B27B30     
/* 01454 80B27B04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B27B08:
/* 01458 80B27B08 9209030C */  lbu     $t1, 0x030C($s0)           ## 0000030C
.L80B27B0C:
/* 0145C 80B27B0C 920B038C */  lbu     $t3, 0x038C($s0)           ## 0000038C
/* 01460 80B27B10 A20D040C */  sb      $t5, 0x040C($s0)           ## 0000040C
/* 01464 80B27B14 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 01468 80B27B18 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 0146C 80B27B1C A20A030C */  sb      $t2, 0x030C($s0)           ## 0000030C
/* 01470 80B27B20 A20C038C */  sb      $t4, 0x038C($s0)           ## 0000038C
/* 01474 80B27B24 0C2C9AC6 */  jal     func_80B26B18              
/* 01478 80B27B28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0147C 80B27B2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B27B30:
/* 01480 80B27B30 0C2C9E43 */  jal     func_80B2790C              
/* 01484 80B27B34 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01488 80B27B38 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 0148C 80B27B3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01490 80B27B40 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01494 80B27B44 0320F809 */  jalr    $ra, $t9                   
/* 01498 80B27B48 00000000 */  nop
/* 0149C 80B27B4C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 014A0 80B27B50 3C0E80B2 */  lui     $t6, %hi(func_80B274A0)    ## $t6 = 80B20000
/* 014A4 80B27B54 25CE74A0 */  addiu   $t6, $t6, %lo(func_80B274A0) ## $t6 = 80B274A0
/* 014A8 80B27B58 11C2002B */  beq     $t6, $v0, .L80B27C08       
/* 014AC 80B27B5C 3C0F80B2 */  lui     $t7, %hi(func_80B27098)    ## $t7 = 80B20000
/* 014B0 80B27B60 25EF7098 */  addiu   $t7, $t7, %lo(func_80B27098) ## $t7 = 80B27098
/* 014B4 80B27B64 11E20028 */  beq     $t7, $v0, .L80B27C08       
/* 014B8 80B27B68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014BC 80B27B6C 260503FC */  addiu   $a1, $s0, 0x03FC           ## $a1 = 000003FC
/* 014C0 80B27B70 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 014C4 80B27B74 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 014C8 80B27B78 8E080190 */  lw      $t0, 0x0190($s0)           ## 00000190
/* 014CC 80B27B7C 3C1880B2 */  lui     $t8, %hi(func_80B2716C)    ## $t8 = 80B20000
/* 014D0 80B27B80 2718716C */  addiu   $t8, $t8, %lo(func_80B2716C) ## $t8 = 80B2716C
/* 014D4 80B27B84 1708000F */  bne     $t8, $t0, .L80B27BC4       
/* 014D8 80B27B88 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014DC 80B27B8C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 014E0 80B27B90 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 014E4 80B27B94 02212821 */  addu    $a1, $s1, $at              
/* 014E8 80B27B98 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 014EC 80B27B9C 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 014F0 80B27BA0 260602FC */  addiu   $a2, $s0, 0x02FC           ## $a2 = 000002FC
/* 014F4 80B27BA4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 014F8 80B27BA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014FC 80B27BAC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01500 80B27BB0 2606037C */  addiu   $a2, $s0, 0x037C           ## $a2 = 0000037C
/* 01504 80B27BB4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01508 80B27BB8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0150C 80B27BBC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01510 80B27BC0 8FA60020 */  lw      $a2, 0x0020($sp)           
.L80B27BC4:
/* 01514 80B27BC4 9209040D */  lbu     $t1, 0x040D($s0)           ## 0000040D
/* 01518 80B27BC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0151C 80B27BCC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01520 80B27BD0 312A0001 */  andi    $t2, $t1, 0x0001           ## $t2 = 00000000
/* 01524 80B27BD4 11400006 */  beq     $t2, $zero, .L80B27BF0     
/* 01528 80B27BD8 02212821 */  addu    $a1, $s1, $at              
/* 0152C 80B27BDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01530 80B27BE0 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 01534 80B27BE4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01538 80B27BE8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0153C 80B27BEC 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80B27BF0:
/* 01540 80B27BF0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01544 80B27BF4 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01548 80B27BF8 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0154C 80B27BFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01550 80B27C00 0C00B56E */  jal     Actor_SetHeight
              
/* 01554 80B27C04 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
.L80B27C08:
/* 01558 80B27C08 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0155C 80B27C0C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01560 80B27C10 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01564 80B27C14 03E00008 */  jr      $ra                        
/* 01568 80B27C18 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000

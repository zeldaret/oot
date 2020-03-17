glabel EnFd_Update
/* 013FC 80A0CABC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01400 80A0CAC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01404 80A0CAC4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 01408 80A0CAC8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0140C 80A0CACC 848E04BC */  lh      $t6, 0x04BC($a0)           ## 000004BC
/* 01410 80A0CAD0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01414 80A0CAD4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01418 80A0CAD8 11C00004 */  beq     $t6, $zero, .L80A0CAEC     
/* 0141C 80A0CADC 00000000 */  nop
/* 01420 80A0CAE0 0C03D6B3 */  jal     func_800F5ACC              
/* 01424 80A0CAE4 24040038 */  addiu   $a0, $zero, 0x0038         ## $a0 = 00000038
/* 01428 80A0CAE8 A60004BC */  sh      $zero, 0x04BC($s0)         ## 000004BC
.L80A0CAEC:
/* 0142C 80A0CAEC 3C0F80A1 */  lui     $t7, %hi(func_80A0C310)    ## $t7 = 80A10000
/* 01430 80A0CAF0 25EFC310 */  addiu   $t7, $t7, %lo(func_80A0C310) ## $t7 = 80A0C310
/* 01434 80A0CAF4 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 01438 80A0CAF8 8E180190 */  lw      $t8, 0x0190($s0)           ## 00000190
/* 0143C 80A0CAFC 51F80007 */  beql    $t7, $t8, .L80A0CB1C       
/* 01440 80A0CB00 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
/* 01444 80A0CB04 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01448 80A0CB08 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0144C 80A0CB0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01450 80A0CB10 0C282E36 */  jal     func_80A0B8D8              
/* 01454 80A0CB14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01458 80A0CB18 8E190004 */  lw      $t9, 0x0004($s0)           ## 00000004
.L80A0CB1C:
/* 0145C 80A0CB1C 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 01460 80A0CB20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01464 80A0CB24 33282000 */  andi    $t0, $t9, 0x2000           ## $t0 = 00000000
/* 01468 80A0CB28 55010018 */  bnel    $t0, $at, .L80A0CB8C       
/* 0146C 80A0CB2C 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
/* 01470 80A0CB30 0C282DB0 */  jal     func_80A0B6C0              
/* 01474 80A0CB34 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01478 80A0CB38 1040000E */  beq     $v0, $zero, .L80A0CB74     
/* 0147C 80A0CB3C 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 01480 80A0CB40 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 01484 80A0CB44 240B001E */  addiu   $t3, $zero, 0x001E         ## $t3 = 0000001E
/* 01488 80A0CB48 A60B04C2 */  sh      $t3, 0x04C2($s0)           ## 000004C2
/* 0148C 80A0CB4C 01215024 */  and     $t2, $t1, $at              
/* 01490 80A0CB50 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 01494 80A0CB54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01498 80A0CB58 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0149C 80A0CB5C 2405397A */  addiu   $a1, $zero, 0x397A         ## $a1 = 0000397A
/* 014A0 80A0CB60 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 014A4 80A0CB64 0C00CB1F */  jal     func_80032C7C              
/* 014A8 80A0CB68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 014AC 80A0CB6C 1000000D */  beq     $zero, $zero, .L80A0CBA4   
/* 014B0 80A0CB70 00000000 */  nop
.L80A0CB74:
/* 014B4 80A0CB74 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 014B8 80A0CB78 2401DFFF */  addiu   $at, $zero, 0xDFFF         ## $at = FFFFDFFF
/* 014BC 80A0CB7C 01816824 */  and     $t5, $t4, $at              
/* 014C0 80A0CB80 10000008 */  beq     $zero, $zero, .L80A0CBA4   
/* 014C4 80A0CB84 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
/* 014C8 80A0CB88 8E0F0190 */  lw      $t7, 0x0190($s0)           ## 00000190
.L80A0CB8C:
/* 014CC 80A0CB8C 3C0E80A1 */  lui     $t6, %hi(func_80A0CA44)    ## $t6 = 80A10000
/* 014D0 80A0CB90 25CECA44 */  addiu   $t6, $t6, %lo(func_80A0CA44) ## $t6 = 80A0CA44
/* 014D4 80A0CB94 11CF0003 */  beq     $t6, $t7, .L80A0CBA4       
/* 014D8 80A0CB98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014DC 80A0CB9C 0C282EB8 */  jal     func_80A0BAE0              
/* 014E0 80A0CBA0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80A0CBA4:
/* 014E4 80A0CBA4 0C00B638 */  jal     Actor_MoveForward
              
/* 014E8 80A0CBA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014EC 80A0CBAC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 014F0 80A0CBB0 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 014F4 80A0CBB4 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 014F8 80A0CBB8 44060000 */  mfc1    $a2, $f0                   
/* 014FC 80A0CBBC 44070000 */  mfc1    $a3, $f0                   
/* 01500 80A0CBC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01504 80A0CBC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01508 80A0CBC8 0C00B92D */  jal     func_8002E4B4              
/* 0150C 80A0CBCC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01510 80A0CBD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01514 80A0CBD4 0C283028 */  jal     func_80A0C0A0              
/* 01518 80A0CBD8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0151C 80A0CBDC 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01520 80A0CBE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01524 80A0CBE4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01528 80A0CBE8 0320F809 */  jalr    $ra, $t9                   
/* 0152C 80A0CBEC 00000000 */  nop
/* 01530 80A0CBF0 0C283585 */  jal     func_80A0D614              
/* 01534 80A0CBF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01538 80A0CBF8 0C28353F */  jal     func_80A0D4FC              
/* 0153C 80A0CBFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01540 80A0CC00 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
/* 01544 80A0CC04 8FA80034 */  lw      $t0, 0x0034($sp)           
/* 01548 80A0CC08 3C0980A1 */  lui     $t1, %hi(func_80A0C3A0)    ## $t1 = 80A10000
/* 0154C 80A0CC0C 2529C3A0 */  addiu   $t1, $t1, %lo(func_80A0C3A0) ## $t1 = 80A0C3A0
/* 01550 80A0CC10 51030025 */  beql    $t0, $v1, .L80A0CCA8       
/* 01554 80A0CC14 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01558 80A0CC18 11230022 */  beq     $t1, $v1, .L80A0CCA4       
/* 0155C 80A0CC1C 3C0A80A1 */  lui     $t2, %hi(func_80A0CA44)    ## $t2 = 80A10000
/* 01560 80A0CC20 254ACA44 */  addiu   $t2, $t2, %lo(func_80A0CA44) ## $t2 = 80A0CA44
/* 01564 80A0CC24 51430020 */  beql    $t2, $v1, .L80A0CCA8       
/* 01568 80A0CC28 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0156C 80A0CC2C 860B04C4 */  lh      $t3, 0x04C4($s0)           ## 000004C4
/* 01570 80A0CC30 5560000B */  bnel    $t3, $zero, .L80A0CC60     
/* 01574 80A0CC34 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01578 80A0CC38 860C04C2 */  lh      $t4, 0x04C2($s0)           ## 000004C2
/* 0157C 80A0CC3C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01580 80A0CC40 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01584 80A0CC44 15800005 */  bne     $t4, $zero, .L80A0CC5C     
/* 01588 80A0CC48 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0158C 80A0CC4C 02212821 */  addu    $a1, $s1, $at              
/* 01590 80A0CC50 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 01594 80A0CC54 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 01598 80A0CC58 8E030190 */  lw      $v1, 0x0190($s0)           ## 00000190
.L80A0CC5C:
/* 0159C 80A0CC5C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
.L80A0CC60:
/* 015A0 80A0CC60 3C0D80A1 */  lui     $t5, %hi(func_80A0C7EC)    ## $t5 = 80A10000
/* 015A4 80A0CC64 25ADC7EC */  addiu   $t5, $t5, %lo(func_80A0C7EC) ## $t5 = 80A0C7EC
/* 015A8 80A0CC68 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 015AC 80A0CC6C 02212821 */  addu    $a1, $s1, $at              
/* 015B0 80A0CC70 11A30004 */  beq     $t5, $v1, .L80A0CC84       
/* 015B4 80A0CC74 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 015B8 80A0CC78 3C0E80A1 */  lui     $t6, %hi(func_80A0C5D0)    ## $t6 = 80A10000
/* 015BC 80A0CC7C 25CEC5D0 */  addiu   $t6, $t6, %lo(func_80A0C5D0) ## $t6 = 80A0C5D0
/* 015C0 80A0CC80 15C30006 */  bne     $t6, $v1, .L80A0CC9C       
.L80A0CC84:
/* 015C4 80A0CC84 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 015C8 80A0CC88 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 015CC 80A0CC8C 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 015D0 80A0CC90 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 015D4 80A0CC94 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 015D8 80A0CC98 8FA6002C */  lw      $a2, 0x002C($sp)           
.L80A0CC9C:
/* 015DC 80A0CC9C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 015E0 80A0CCA0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A0CCA4:
/* 015E4 80A0CCA4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0CCA8:
/* 015E8 80A0CCA8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 015EC 80A0CCAC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 015F0 80A0CCB0 03E00008 */  jr      $ra                        
/* 015F4 80A0CCB4 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000



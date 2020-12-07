glabel func_809F236C
/* 0088C 809F236C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00890 809F2370 AFB00030 */  sw      $s0, 0x0030($sp)
/* 00894 809F2374 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00898 809F2378 AFBF0034 */  sw      $ra, 0x0034($sp)
/* 0089C 809F237C 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 008A0 809F2380 AFA5003C */  sw      $a1, 0x003C($sp)
/* 008A4 809F2384 0C028800 */  jal     Animation_LastFrame

/* 008A8 809F2388 24840944 */  addiu   $a0, $a0, 0x0944           ## $a0 = 06000944
/* 008AC 809F238C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 008B0 809F2390 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 008B4 809F2394 44819000 */  mtc1    $at, $f18                  ## $f18 = -10.00
/* 008B8 809F2398 468021A0 */  cvt.s.w $f6, $f4
/* 008BC 809F239C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 008C0 809F23A0 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 008C4 809F23A4 24A50944 */  addiu   $a1, $a1, 0x0944           ## $a1 = 06000944
/* 008C8 809F23A8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 008CC 809F23AC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 008D0 809F23B0 4600320D */  trunc.w.s $f8, $f6
/* 008D4 809F23B4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 008D8 809F23B8 440F4000 */  mfc1    $t7, $f8
/* 008DC 809F23BC 00000000 */  nop
/* 008E0 809F23C0 A60F0248 */  sh      $t7, 0x0248($s0)           ## 00000248
/* 008E4 809F23C4 86180248 */  lh      $t8, 0x0248($s0)           ## 00000248
/* 008E8 809F23C8 AFB90014 */  sw      $t9, 0x0014($sp)
/* 008EC 809F23CC E7B20018 */  swc1    $f18, 0x0018($sp)
/* 008F0 809F23D0 44985000 */  mtc1    $t8, $f10                  ## $f10 = 0.00
/* 008F4 809F23D4 00000000 */  nop
/* 008F8 809F23D8 46805420 */  cvt.s.w $f16, $f10
/* 008FC 809F23DC 0C029468 */  jal     Animation_Change

/* 00900 809F23E0 E7B00010 */  swc1    $f16, 0x0010($sp)
/* 00904 809F23E4 24080009 */  addiu   $t0, $zero, 0x0009         ## $t0 = 00000009
/* 00908 809F23E8 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 0090C 809F23EC 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00910 809F23F0 240BFFFF */  addiu   $t3, $zero, 0xFFFF         ## $t3 = FFFFFFFF
/* 00914 809F23F4 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 00918 809F23F8 AFAC0020 */  sw      $t4, 0x0020($sp)
/* 0091C 809F23FC AFAB001C */  sw      $t3, 0x001C($sp)
/* 00920 809F2400 AFAA0018 */  sw      $t2, 0x0018($sp)
/* 00924 809F2404 AFA90014 */  sw      $t1, 0x0014($sp)
/* 00928 809F2408 AFA80010 */  sw      $t0, 0x0010($sp)
/* 0092C 809F240C 8FA4003C */  lw      $a0, 0x003C($sp)
/* 00930 809F2410 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00934 809F2414 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 00938 809F2418 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0093C 809F241C 0C00A5E9 */  jal     EffectSsHahen_SpawnBurst
/* 00940 809F2420 AFA00024 */  sw      $zero, 0x0024($sp)
/* 00944 809F2424 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00948 809F2428 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0094C 809F242C 2405387C */  addiu   $a1, $zero, 0x387C         ## $a1 = 0000387C
/* 00950 809F2430 3C0D8016 */  lui     $t5, %hi(gSaveContext+0xa0)
/* 00954 809F2434 3C0E8012 */  lui     $t6, %hi(gUpgradeMasks+0x1c)
/* 00958 809F2438 8DCE71CC */  lw      $t6, %lo(gUpgradeMasks+0x1c)($t6)
/* 0095C 809F243C 8DADE700 */  lw      $t5, %lo(gSaveContext+0xa0)($t5)
/* 00960 809F2440 3C188012 */  lui     $t8, %hi(gUpgradeShifts+7)
/* 00964 809F2444 931871FB */  lbu     $t8, %lo(gUpgradeShifts+7)($t8)
/* 00968 809F2448 01AE7824 */  and     $t7, $t5, $t6
/* 0096C 809F244C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00970 809F2450 030F1007 */  srav    $v0, $t7, $t8
/* 00974 809F2454 10410003 */  beq     $v0, $at, .L809F2464
/* 00978 809F2458 240B10DB */  addiu   $t3, $zero, 0x10DB         ## $t3 = 000010DB
/* 0097C 809F245C 14400004 */  bne     $v0, $zero, .L809F2470
/* 00980 809F2460 2408007A */  addiu   $t0, $zero, 0x007A         ## $t0 = 0000007A
.L809F2464:
/* 00984 809F2464 24190079 */  addiu   $t9, $zero, 0x0079         ## $t9 = 00000079
/* 00988 809F2468 10000002 */  beq     $zero, $zero, .L809F2474
/* 0098C 809F246C AE190254 */  sw      $t9, 0x0254($s0)           ## 00000254
.L809F2470:
/* 00990 809F2470 AE080254 */  sw      $t0, 0x0254($s0)           ## 00000254
.L809F2474:
/* 00994 809F2474 8E090004 */  lw      $t1, 0x0004($s0)           ## 00000004
/* 00998 809F2478 3C0D809F */  lui     $t5, %hi(func_809F24AC)    ## $t5 = 809F0000
/* 0099C 809F247C 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 009A0 809F2480 25AD24AC */  addiu   $t5, $t5, %lo(func_809F24AC) ## $t5 = 809F24AC
/* 009A4 809F2484 352A0001 */  ori     $t2, $t1, 0x0001           ## $t2 = 00000001
/* 009A8 809F2488 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
/* 009AC 809F248C A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 009B0 809F2490 A60C0250 */  sh      $t4, 0x0250($s0)           ## 00000250
/* 009B4 809F2494 AE0D022C */  sw      $t5, 0x022C($s0)           ## 0000022C
/* 009B8 809F2498 8FBF0034 */  lw      $ra, 0x0034($sp)
/* 009BC 809F249C 8FB00030 */  lw      $s0, 0x0030($sp)
/* 009C0 809F24A0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 009C4 809F24A4 03E00008 */  jr      $ra
/* 009C8 809F24A8 00000000 */  nop

glabel func_80AA840C
/* 023BC 80AA840C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 023C0 80AA8410 AFB00028 */  sw      $s0, 0x0028($sp)
/* 023C4 80AA8414 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023C8 80AA8418 AFBF002C */  sw      $ra, 0x002C($sp)
/* 023CC 80AA841C 2484018C */  addiu   $a0, $a0, 0x018C           ## $a0 = 0000018C
/* 023D0 80AA8420 AFA50044 */  sw      $a1, 0x0044($sp)
/* 023D4 80AA8424 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 023D8 80AA8428 AFA40034 */  sw      $a0, 0x0034($sp)
/* 023DC 80AA842C 50400035 */  beql    $v0, $zero, .L80AA8504
/* 023E0 80AA8430 8FBF002C */  lw      $ra, 0x002C($sp)
/* 023E4 80AA8434 8602032E */  lh      $v0, 0x032E($s0)           ## 0000032E
/* 023E8 80AA8438 1040002F */  beq     $v0, $zero, .L80AA84F8
/* 023EC 80AA843C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 023F0 80AA8440 A60E032E */  sh      $t6, 0x032E($s0)           ## 0000032E
/* 023F4 80AA8444 860F032E */  lh      $t7, 0x032E($s0)           ## 0000032E
/* 023F8 80AA8448 55E0002E */  bnel    $t7, $zero, .L80AA8504
/* 023FC 80AA844C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02400 80AA8450 8618032A */  lh      $t8, 0x032A($s0)           ## 0000032A
/* 02404 80AA8454 3C040601 */  lui     $a0, 0x0601                ## $a0 = 06010000
/* 02408 80AA8458 17000015 */  bne     $t8, $zero, .L80AA84B0
/* 0240C 80AA845C 00000000 */  nop
/* 02410 80AA8460 0C028800 */  jal     SkelAnime_GetFrameCount

/* 02414 80AA8464 2484E18C */  addiu   $a0, $a0, 0xE18C           ## $a0 = 0600E18C
/* 02418 80AA8468 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 0241C 80AA846C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02420 80AA8470 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02424 80AA8474 468021A0 */  cvt.s.w $f6, $f4
/* 02428 80AA8478 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 0242C 80AA847C 44070000 */  mfc1    $a3, $f0
/* 02430 80AA8480 AFB90014 */  sw      $t9, 0x0014($sp)
/* 02434 80AA8484 24A5E18C */  addiu   $a1, $a1, 0xE18C           ## $a1 = 0600E18C
/* 02438 80AA8488 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0243C 80AA848C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02440 80AA8490 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 02444 80AA8494 0C029468 */  jal     SkelAnime_ChangeAnim

/* 02448 80AA8498 E7A00018 */  swc1    $f0, 0x0018($sp)
/* 0244C 80AA849C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 02450 80AA84A0 24090006 */  addiu   $t1, $zero, 0x0006         ## $t1 = 00000006
/* 02454 80AA84A4 A608032A */  sh      $t0, 0x032A($s0)           ## 0000032A
/* 02458 80AA84A8 10000015 */  beq     $zero, $zero, .L80AA8500
/* 0245C 80AA84AC A609032E */  sh      $t1, 0x032E($s0)           ## 0000032E
.L80AA84B0:
/* 02460 80AA84B0 3C100601 */  lui     $s0, 0x0601                ## $s0 = 06010000
/* 02464 80AA84B4 2610E18C */  addiu   $s0, $s0, 0xE18C           ## $s0 = 0600E18C
/* 02468 80AA84B8 0C028800 */  jal     SkelAnime_GetFrameCount

/* 0246C 80AA84BC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600E18C
/* 02470 80AA84C0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 02474 80AA84C4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 02478 80AA84C8 240A0003 */  addiu   $t2, $zero, 0x0003         ## $t2 = 00000003
/* 0247C 80AA84CC 468042A0 */  cvt.s.w $f10, $f8
/* 02480 80AA84D0 44070000 */  mfc1    $a3, $f0
/* 02484 80AA84D4 AFAA0014 */  sw      $t2, 0x0014($sp)
/* 02488 80AA84D8 8FA40034 */  lw      $a0, 0x0034($sp)
/* 0248C 80AA84DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 0600E18C
/* 02490 80AA84E0 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 02494 80AA84E4 E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02498 80AA84E8 0C029468 */  jal     SkelAnime_ChangeAnim

/* 0249C 80AA84EC E7A00018 */  swc1    $f0, 0x0018($sp)
/* 024A0 80AA84F0 10000004 */  beq     $zero, $zero, .L80AA8504
/* 024A4 80AA84F4 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA84F8:
/* 024A8 80AA84F8 0C2A9A26 */  jal     func_80AA6898
/* 024AC 80AA84FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 0600E18C
.L80AA8500:
/* 024B0 80AA8500 8FBF002C */  lw      $ra, 0x002C($sp)
.L80AA8504:
/* 024B4 80AA8504 8FB00028 */  lw      $s0, 0x0028($sp)
/* 024B8 80AA8508 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 024BC 80AA850C 03E00008 */  jr      $ra
/* 024C0 80AA8510 00000000 */  nop

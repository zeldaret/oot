glabel EnMd_Init
/* 01400 80AAB650 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 01404 80AAB654 AFB10038 */  sw      $s1, 0x0038($sp)
/* 01408 80AAB658 AFB00034 */  sw      $s0, 0x0034($sp)
/* 0140C 80AAB65C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01410 80AAB660 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 01414 80AAB664 AFBF003C */  sw      $ra, 0x003C($sp)
/* 01418 80AAB668 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 0141C 80AAB66C 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 01420 80AAB670 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01424 80AAB674 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 01428 80AAB678 0C00AC78 */  jal     ActorShape_Init

/* 0142C 80AAB67C 3C0741C0 */  lui     $a3, 0x41C0                ## $a3 = 41C00000
/* 01430 80AAB680 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 01434 80AAB684 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 01438 80AAB688 260E0258 */  addiu   $t6, $s0, 0x0258           ## $t6 = 00000258
/* 0143C 80AAB68C 260F02BE */  addiu   $t7, $s0, 0x02BE           ## $t7 = 000002BE
/* 01440 80AAB690 24180011 */  addiu   $t8, $zero, 0x0011         ## $t8 = 00000011
/* 01444 80AAB694 AFB80018 */  sw      $t8, 0x0018($sp)
/* 01448 80AAB698 AFAF0014 */  sw      $t7, 0x0014($sp)
/* 0144C 80AAB69C AFAE0010 */  sw      $t6, 0x0010($sp)
/* 01450 80AAB6A0 24C67FB8 */  addiu   $a2, $a2, 0x7FB8           ## $a2 = 06007FB8
/* 01454 80AAB6A4 AFA50044 */  sw      $a1, 0x0044($sp)
/* 01458 80AAB6A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0145C 80AAB6AC 0C0291BE */  jal     SkelAnime_InitSV
/* 01460 80AAB6B0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01464 80AAB6B4 26050194 */  addiu   $a1, $s0, 0x0194           ## $a1 = 00000194
/* 01468 80AAB6B8 AFA50040 */  sw      $a1, 0x0040($sp)
/* 0146C 80AAB6BC 0C0170D9 */  jal     ActorCollider_AllocCylinder

/* 01470 80AAB6C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01474 80AAB6C4 3C0780AB */  lui     $a3, %hi(D_80AAC310)       ## $a3 = 80AB0000
/* 01478 80AAB6C8 8FA50040 */  lw      $a1, 0x0040($sp)
/* 0147C 80AAB6CC 24E7C310 */  addiu   $a3, $a3, %lo(D_80AAC310)  ## $a3 = 80AAC310
/* 01480 80AAB6D0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01484 80AAB6D4 0C01712B */  jal     ActorCollider_InitCylinder

/* 01488 80AAB6D8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0148C 80AAB6DC 3C0680AB */  lui     $a2, %hi(D_80AAC33C)       ## $a2 = 80AB0000
/* 01490 80AAB6E0 24C6C33C */  addiu   $a2, $a2, %lo(D_80AAC33C)  ## $a2 = 80AAC33C
/* 01494 80AAB6E4 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 01498 80AAB6E8 0C0187BF */  jal     func_80061EFC
/* 0149C 80AAB6EC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 014A0 80AAB6F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014A4 80AAB6F4 0C2AAC0F */  jal     func_80AAB03C
/* 014A8 80AAB6F8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 014AC 80AAB6FC 14400005 */  bne     $v0, $zero, .L80AAB714
/* 014B0 80AAB700 8FA40044 */  lw      $a0, 0x0044($sp)
/* 014B4 80AAB704 0C00B55C */  jal     Actor_Kill

/* 014B8 80AAB708 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014BC 80AAB70C 1000004B */  beq     $zero, $zero, .L80AAB83C
/* 014C0 80AAB710 8FBF003C */  lw      $ra, 0x003C($sp)
.L80AAB714:
/* 014C4 80AAB714 3C0580AB */  lui     $a1, %hi(D_80AAC348)       ## $a1 = 80AB0000
/* 014C8 80AAB718 24A5C348 */  addiu   $a1, $a1, %lo(D_80AAC348)  ## $a1 = 80AAC348
/* 014CC 80AAB71C 0C00D3B0 */  jal     func_80034EC0
/* 014D0 80AAB720 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 014D4 80AAB724 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 014D8 80AAB728 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 014DC 80AAB72C 0C00B58B */  jal     Actor_SetScale

/* 014E0 80AAB730 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 014E4 80AAB734 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 014E8 80AAB738 24190006 */  addiu   $t9, $zero, 0x0006         ## $t9 = 00000006
/* 014EC 80AAB73C 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 014F0 80AAB740 A219001F */  sb      $t9, 0x001F($s0)           ## 0000001F
/* 014F4 80AAB744 A6080210 */  sh      $t0, 0x0210($s0)           ## 00000210
/* 014F8 80AAB748 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 014FC 80AAB74C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01500 80AAB750 24090003 */  addiu   $t1, $zero, 0x0003         ## $t1 = 00000003
/* 01504 80AAB754 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 01508 80AAB758 E7A60014 */  swc1    $f6, 0x0014($sp)
/* 0150C 80AAB75C C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 01510 80AAB760 AFA90028 */  sw      $t1, 0x0028($sp)
/* 01514 80AAB764 AFA00024 */  sw      $zero, 0x0024($sp)
/* 01518 80AAB768 AFA00020 */  sw      $zero, 0x0020($sp)
/* 0151C 80AAB76C AFA0001C */  sw      $zero, 0x001C($sp)
/* 01520 80AAB770 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01524 80AAB774 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 01528 80AAB778 24070018 */  addiu   $a3, $zero, 0x0018         ## $a3 = 00000018
/* 0152C 80AAB77C 0C00C916 */  jal     Actor_SpawnAttached

/* 01530 80AAB780 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 01534 80AAB784 862300A4 */  lh      $v1, 0x00A4($s1)           ## 000000A4
/* 01538 80AAB788 24040055 */  addiu   $a0, $zero, 0x0055         ## $a0 = 00000055
/* 0153C 80AAB78C 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01540 80AAB790 14830004 */  bne     $a0, $v1, .L80AAB7A4
/* 01544 80AAB794 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01548 80AAB798 944A0ED4 */  lhu     $t2, 0x0ED4($v0)           ## 8015F534
/* 0154C 80AAB79C 314B0010 */  andi    $t3, $t2, 0x0010           ## $t3 = 00000000
/* 01550 80AAB7A0 11600013 */  beq     $t3, $zero, .L80AAB7F0
.L80AAB7A4:
/* 01554 80AAB7A4 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01558 80AAB7A8 1483000A */  bne     $a0, $v1, .L80AAB7D4
/* 0155C 80AAB7AC 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01560 80AAB7B0 944C0ED4 */  lhu     $t4, 0x0ED4($v0)           ## 8015F534
/* 01564 80AAB7B4 3C0E8012 */  lui     $t6, %hi(gBitFlags+0x48)
/* 01568 80AAB7B8 318D0010 */  andi    $t5, $t4, 0x0010           ## $t5 = 00000000
/* 0156C 80AAB7BC 51A00006 */  beql    $t5, $zero, .L80AAB7D8
/* 01570 80AAB7C0 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
/* 01574 80AAB7C4 8DCE7168 */  lw      $t6, %lo(gBitFlags+0x48)($t6)
/* 01578 80AAB7C8 8C4F00A4 */  lw      $t7, 0x00A4($v0)           ## 8015E704
/* 0157C 80AAB7CC 01CFC024 */  and     $t8, $t6, $t7
/* 01580 80AAB7D0 17000007 */  bne     $t8, $zero, .L80AAB7F0
.L80AAB7D4:
/* 01584 80AAB7D4 2401005B */  addiu   $at, $zero, 0x005B         ## $at = 0000005B
.L80AAB7D8:
/* 01588 80AAB7D8 54610010 */  bnel    $v1, $at, .L80AAB81C
/* 0158C 80AAB7DC 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 01590 80AAB7E0 94590ED4 */  lhu     $t9, 0x0ED4($v0)           ## 8015F534
/* 01594 80AAB7E4 33280400 */  andi    $t0, $t9, 0x0400           ## $t0 = 00000000
/* 01598 80AAB7E8 5500000C */  bnel    $t0, $zero, .L80AAB81C
/* 0159C 80AAB7EC 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
.L80AAB7F0:
/* 015A0 80AAB7F0 8E0A0024 */  lw      $t2, 0x0024($s0)           ## 00000024
/* 015A4 80AAB7F4 8E090028 */  lw      $t1, 0x0028($s0)           ## 00000028
/* 015A8 80AAB7F8 3C0B80AB */  lui     $t3, %hi(func_80AAB948)    ## $t3 = 80AB0000
/* 015AC 80AAB7FC AE0A0008 */  sw      $t2, 0x0008($s0)           ## 00000008
/* 015B0 80AAB800 8E0A002C */  lw      $t2, 0x002C($s0)           ## 0000002C
/* 015B4 80AAB804 256BB948 */  addiu   $t3, $t3, %lo(func_80AAB948) ## $t3 = 80AAB948
/* 015B8 80AAB808 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 015BC 80AAB80C AE09000C */  sw      $t1, 0x000C($s0)           ## 0000000C
/* 015C0 80AAB810 10000009 */  beq     $zero, $zero, .L80AAB838
/* 015C4 80AAB814 AE0A0010 */  sw      $t2, 0x0010($s0)           ## 00000010
/* 015C8 80AAB818 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
.L80AAB81C:
/* 015CC 80AAB81C 10610003 */  beq     $v1, $at, .L80AAB82C
/* 015D0 80AAB820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 015D4 80AAB824 0C2AAD37 */  jal     func_80AAB4DC
/* 015D8 80AAB828 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80AAB82C:
/* 015DC 80AAB82C 3C0C80AB */  lui     $t4, %hi(func_80AAB874)    ## $t4 = 80AB0000
/* 015E0 80AAB830 258CB874 */  addiu   $t4, $t4, %lo(func_80AAB874) ## $t4 = 80AAB874
/* 015E4 80AAB834 AE0C0190 */  sw      $t4, 0x0190($s0)           ## 00000190
.L80AAB838:
/* 015E8 80AAB838 8FBF003C */  lw      $ra, 0x003C($sp)
.L80AAB83C:
/* 015EC 80AAB83C 8FB00034 */  lw      $s0, 0x0034($sp)
/* 015F0 80AAB840 8FB10038 */  lw      $s1, 0x0038($sp)
/* 015F4 80AAB844 03E00008 */  jr      $ra
/* 015F8 80AAB848 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000

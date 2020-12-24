.late_rodata
glabel D_809BBCB0
    .float 0.05
glabel D_809BBCB4
    .float 0.009999999776482582
glabel D_809BBCB8
    .float 0.002
glabel D_809BBCBC
    .float 0.05
glabel D_809BBCC0
    .float 0.1
glabel D_809BBCC4
    .float 0.1

.text
glabel func_809BA628
/* 02348 809BA628 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0234C 809BA62C 3C18809C */  lui     $t8, %hi(D_809BBB5C)       ## $t8 = 809C0000
/* 02350 809BA630 AFBF0024 */  sw      $ra, 0x0024($sp)
/* 02354 809BA634 AFB00020 */  sw      $s0, 0x0020($sp)
/* 02358 809BA638 AFA50074 */  sw      $a1, 0x0074($sp)
/* 0235C 809BA63C 2718BB5C */  addiu   $t8, $t8, %lo(D_809BBB5C)  ## $t8 = 809BBB5C
/* 02360 809BA640 8F080000 */  lw      $t0, 0x0000($t8)           ## 809BBB5C
/* 02364 809BA644 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 02368 809BA648 27AF0060 */  addiu   $t7, $sp, 0x0060           ## $t7 = FFFFFFF0
/* 0236C 809BA64C ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFF0
/* 02370 809BA650 8F080008 */  lw      $t0, 0x0008($t8)           ## 809BBB64
/* 02374 809BA654 8F190004 */  lw      $t9, 0x0004($t8)           ## 809BBB60
/* 02378 809BA658 27A90054 */  addiu   $t1, $sp, 0x0054           ## $t1 = FFFFFFE4
/* 0237C 809BA65C ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFFF8
/* 02380 809BA660 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFF4
/* 02384 809BA664 8C4B0024 */  lw      $t3, 0x0024($v0)           ## 00000024
/* 02388 809BA668 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0238C 809BA66C 44813000 */  mtc1    $at, $f6                   ## $f6 = 30.00
/* 02390 809BA670 AD2B0000 */  sw      $t3, 0x0000($t1)           ## FFFFFFE4
/* 02394 809BA674 8C4A0028 */  lw      $t2, 0x0028($v0)           ## 00000028
/* 02398 809BA678 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 0239C 809BA67C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 023A0 809BA680 AD2A0004 */  sw      $t2, 0x0004($t1)           ## FFFFFFE8
/* 023A4 809BA684 8C4B002C */  lw      $t3, 0x002C($v0)           ## 0000002C
/* 023A8 809BA688 AD2B0008 */  sw      $t3, 0x0008($t1)           ## FFFFFFEC
/* 023AC 809BA68C C7A40058 */  lwc1    $f4, 0x0058($sp)
/* 023B0 809BA690 46062200 */  add.s   $f8, $f4, $f6
/* 023B4 809BA694 E7A80058 */  swc1    $f8, 0x0058($sp)
/* 023B8 809BA698 848C001C */  lh      $t4, 0x001C($a0)           ## 0000001C
/* 023BC 809BA69C 558100AD */  bnel    $t4, $at, .L809BA954
/* 023C0 809BA6A0 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 023C4 809BA6A4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 023C8 809BA6A8 C48A0068 */  lwc1    $f10, 0x0068($a0)          ## 00000068
/* 023CC 809BA6AC 24840008 */  addiu   $a0, $a0, 0x0008           ## $a0 = 00000008
/* 023D0 809BA6B0 26050290 */  addiu   $a1, $s0, 0x0290           ## $a1 = 00000290
/* 023D4 809BA6B4 460A0032 */  c.eq.s  $f0, $f10
/* 023D8 809BA6B8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 023DC 809BA6BC 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 023E0 809BA6C0 45020095 */  bc1fl   .L809BA918
/* 023E4 809BA6C4 44050000 */  mfc1    $a1, $f0
/* 023E8 809BA6C8 AFA4002C */  sw      $a0, 0x002C($sp)
/* 023EC 809BA6CC 0C01E027 */  jal     Math_Vec3f_Pitch

/* 023F0 809BA6D0 AFA50028 */  sw      $a1, 0x0028($sp)
/* 023F4 809BA6D4 8FA50028 */  lw      $a1, 0x0028($sp)
/* 023F8 809BA6D8 A7A20052 */  sh      $v0, 0x0052($sp)
/* 023FC 809BA6DC 0C01E01A */  jal     Math_Vec3f_Yaw

/* 02400 809BA6E0 8FA4002C */  lw      $a0, 0x002C($sp)
/* 02404 809BA6E4 A7A20050 */  sh      $v0, 0x0050($sp)
/* 02408 809BA6E8 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0240C 809BA6EC 87A40052 */  lh      $a0, 0x0052($sp)
/* 02410 809BA6F0 C610027C */  lwc1    $f16, 0x027C($s0)          ## 0000027C
/* 02414 809BA6F4 87A40052 */  lh      $a0, 0x0052($sp)
/* 02418 809BA6F8 46100482 */  mul.s   $f18, $f0, $f16
/* 0241C 809BA6FC 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02420 809BA700 E7B2004C */  swc1    $f18, 0x004C($sp)
/* 02424 809BA704 C604027C */  lwc1    $f4, 0x027C($s0)           ## 0000027C
/* 02428 809BA708 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0242C 809BA70C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 02430 809BA710 46040182 */  mul.s   $f6, $f0, $f4
/* 02434 809BA714 87A50050 */  lh      $a1, 0x0050($sp)
/* 02438 809BA718 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0243C 809BA71C 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 02440 809BA720 0C01E1A7 */  jal     Math_SmoothStepToS

/* 02444 809BA724 E7A60048 */  swc1    $f6, 0x0048($sp)
/* 02448 809BA728 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 0244C 809BA72C 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 02450 809BA730 C7A80048 */  lwc1    $f8, 0x0048($sp)
/* 02454 809BA734 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 02458 809BA738 46080082 */  mul.s   $f2, $f0, $f8
/* 0245C 809BA73C 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 02460 809BA740 E7A20040 */  swc1    $f2, 0x0040($sp)
/* 02464 809BA744 C7A20040 */  lwc1    $f2, 0x0040($sp)
/* 02468 809BA748 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0246C 809BA74C C7AA0048 */  lwc1    $f10, 0x0048($sp)
/* 02470 809BA750 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02474 809BA754 4602803E */  c.le.s  $f16, $f2
/* 02478 809BA758 460A0302 */  mul.s   $f12, $f0, $f10
/* 0247C 809BA75C 8FA4002C */  lw      $a0, 0x002C($sp)
/* 02480 809BA760 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02484 809BA764 45020004 */  bc1fl   .L809BA778
/* 02488 809BA768 46001007 */  neg.s   $f0, $f2
/* 0248C 809BA76C 10000002 */  beq     $zero, $zero, .L809BA778
/* 02490 809BA770 46001006 */  mov.s   $f0, $f2
/* 02494 809BA774 46001007 */  neg.s   $f0, $f2
.L809BA778:
/* 02498 809BA778 8E050290 */  lw      $a1, 0x0290($s0)           ## 00000290
/* 0249C 809BA77C 44070000 */  mfc1    $a3, $f0
/* 024A0 809BA780 E7AC003C */  swc1    $f12, 0x003C($sp)
/* 024A4 809BA784 0C01E0C4 */  jal     Math_SmoothStepToF

/* 024A8 809BA788 E7B20010 */  swc1    $f18, 0x0010($sp)
/* 024AC 809BA78C C7AE004C */  lwc1    $f14, 0x004C($sp)
/* 024B0 809BA790 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 024B4 809BA794 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 024B8 809BA798 C7AC003C */  lwc1    $f12, 0x003C($sp)
/* 024BC 809BA79C 460E203E */  c.le.s  $f4, $f14
/* 024C0 809BA7A0 46000086 */  mov.s   $f2, $f0
/* 024C4 809BA7A4 2604000C */  addiu   $a0, $s0, 0x000C           ## $a0 = 0000000C
/* 024C8 809BA7A8 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 024CC 809BA7AC 45020004 */  bc1fl   .L809BA7C0
/* 024D0 809BA7B0 46007007 */  neg.s   $f0, $f14
/* 024D4 809BA7B4 10000002 */  beq     $zero, $zero, .L809BA7C0
/* 024D8 809BA7B8 46007006 */  mov.s   $f0, $f14
/* 024DC 809BA7BC 46007007 */  neg.s   $f0, $f14
.L809BA7C0:
/* 024E0 809BA7C0 8E050294 */  lw      $a1, 0x0294($s0)           ## 00000294
/* 024E4 809BA7C4 44070000 */  mfc1    $a3, $f0
/* 024E8 809BA7C8 E7AC003C */  swc1    $f12, 0x003C($sp)
/* 024EC 809BA7CC E7A20044 */  swc1    $f2, 0x0044($sp)
/* 024F0 809BA7D0 0C01E0C4 */  jal     Math_SmoothStepToF

/* 024F4 809BA7D4 E7A60010 */  swc1    $f6, 0x0010($sp)
/* 024F8 809BA7D8 C7AC003C */  lwc1    $f12, 0x003C($sp)
/* 024FC 809BA7DC 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02500 809BA7E0 C7A20044 */  lwc1    $f2, 0x0044($sp)
/* 02504 809BA7E4 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02508 809BA7E8 460C403E */  c.le.s  $f8, $f12
/* 0250C 809BA7EC 26040010 */  addiu   $a0, $s0, 0x0010           ## $a0 = 00000010
/* 02510 809BA7F0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02514 809BA7F4 46001080 */  add.s   $f2, $f2, $f0
/* 02518 809BA7F8 45020004 */  bc1fl   .L809BA80C
/* 0251C 809BA7FC 46006007 */  neg.s   $f0, $f12
/* 02520 809BA800 10000002 */  beq     $zero, $zero, .L809BA80C
/* 02524 809BA804 46006006 */  mov.s   $f0, $f12
/* 02528 809BA808 46006007 */  neg.s   $f0, $f12
.L809BA80C:
/* 0252C 809BA80C 8E050298 */  lw      $a1, 0x0298($s0)           ## 00000298
/* 02530 809BA810 44070000 */  mfc1    $a3, $f0
/* 02534 809BA814 E7A20044 */  swc1    $f2, 0x0044($sp)
/* 02538 809BA818 0C01E0C4 */  jal     Math_SmoothStepToF

/* 0253C 809BA81C E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02540 809BA820 C7A20044 */  lwc1    $f2, 0x0044($sp)
/* 02544 809BA824 46001080 */  add.s   $f2, $f2, $f0
/* 02548 809BA828 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 0254C 809BA82C E7A20044 */  swc1    $f2, 0x0044($sp)
/* 02550 809BA830 3C01809C */  lui     $at, %hi(D_809BBCB0)       ## $at = 809C0000
/* 02554 809BA834 C430BCB0 */  lwc1    $f16, %lo(D_809BBCB0)($at)
/* 02558 809BA838 3C01809C */  lui     $at, %hi(D_809BBCB4)       ## $at = 809C0000
/* 0255C 809BA83C C432BCB4 */  lwc1    $f18, %lo(D_809BBCB4)($at)
/* 02560 809BA840 C7A20044 */  lwc1    $f2, 0x0044($sp)
/* 02564 809BA844 C6080274 */  lwc1    $f8, 0x0274($s0)           ## 00000274
/* 02568 809BA848 46120102 */  mul.s   $f4, $f0, $f18
/* 0256C 809BA84C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 02570 809BA850 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02574 809BA854 46121032 */  c.eq.s  $f2, $f18
/* 02578 809BA858 46048180 */  add.s   $f6, $f16, $f4
/* 0257C 809BA85C 46064280 */  add.s   $f10, $f8, $f6
/* 02580 809BA860 45000003 */  bc1f    .L809BA870
/* 02584 809BA864 E60A0274 */  swc1    $f10, 0x0274($s0)          ## 00000274
/* 02588 809BA868 0C26E7D8 */  jal     func_809B9F60
/* 0258C 809BA86C 8FA50074 */  lw      $a1, 0x0074($sp)
.L809BA870:
/* 02590 809BA870 920E02BC */  lbu     $t6, 0x02BC($s0)           ## 000002BC
/* 02594 809BA874 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02598 809BA878 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 0259C 809BA87C 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 025A0 809BA880 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 025A4 809BA884 AE0D025C */  sw      $t5, 0x025C($s0)           ## 0000025C
/* 025A8 809BA888 11E00007 */  beq     $t7, $zero, .L809BA8A8
/* 025AC 809BA88C E610027C */  swc1    $f16, 0x027C($s0)          ## 0000027C
/* 025B0 809BA890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 025B4 809BA894 0C00BE0A */  jal     Audio_PlayActorSound2

/* 025B8 809BA898 240538CB */  addiu   $a1, $zero, 0x38CB         ## $a1 = 000038CB
/* 025BC 809BA89C 921802BC */  lbu     $t8, 0x02BC($s0)           ## 000002BC
/* 025C0 809BA8A0 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 025C4 809BA8A4 A21902BC */  sb      $t9, 0x02BC($s0)           ## 000002BC
.L809BA8A8:
/* 025C8 809BA8A8 0C0329DD */  jal     Math_CosF
/* 025CC 809BA8AC C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 025D0 809BA8B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 025D4 809BA8B4 00000000 */  nop
/* 025D8 809BA8B8 46040032 */  c.eq.s  $f0, $f4
/* 025DC 809BA8BC 00000000 */  nop
/* 025E0 809BA8C0 45020012 */  bc1fl   .L809BA90C
/* 025E4 809BA8C4 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 025E8 809BA8C8 8608026A */  lh      $t0, 0x026A($s0)           ## 0000026A
/* 025EC 809BA8CC 11000005 */  beq     $t0, $zero, .L809BA8E4
/* 025F0 809BA8D0 00000000 */  nop
/* 025F4 809BA8D4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 025F8 809BA8D8 00000000 */  nop
/* 025FC 809BA8DC 1000000A */  beq     $zero, $zero, .L809BA908
/* 02600 809BA8E0 E6000284 */  swc1    $f0, 0x0284($s0)           ## 00000284
.L809BA8E4:
/* 02604 809BA8E4 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02608 809BA8E8 00000000 */  nop
/* 0260C 809BA8EC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02610 809BA8F0 44814000 */  mtc1    $at, $f8                   ## $f8 = 3.00
/* 02614 809BA8F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02618 809BA8F8 240538CA */  addiu   $a1, $zero, 0x38CA         ## $a1 = 000038CA
/* 0261C 809BA8FC 46080182 */  mul.s   $f6, $f0, $f8
/* 02620 809BA900 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02624 809BA904 E6060284 */  swc1    $f6, 0x0284($s0)           ## 00000284
.L809BA908:
/* 02628 809BA908 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
.L809BA90C:
/* 0262C 809BA90C 1000000D */  beq     $zero, $zero, .L809BA944
/* 02630 809BA910 A60900B6 */  sh      $t1, 0x00B6($s0)           ## 000000B6
/* 02634 809BA914 44050000 */  mfc1    $a1, $f0
.L809BA918:
/* 02638 809BA918 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 0263C 809BA91C 0C01E0C4 */  jal     Math_SmoothStepToF

/* 02640 809BA920 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 02644 809BA924 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02648 809BA928 00000000 */  nop
/* 0264C 809BA92C 460A0032 */  c.eq.s  $f0, $f10
/* 02650 809BA930 00000000 */  nop
/* 02654 809BA934 45020004 */  bc1fl   .L809BA948
/* 02658 809BA938 260A0024 */  addiu   $t2, $s0, 0x0024           ## $t2 = 00000024
/* 0265C 809BA93C 0C26E7CA */  jal     func_809B9F28
/* 02660 809BA940 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BA944:
/* 02664 809BA944 260A0024 */  addiu   $t2, $s0, 0x0024           ## $t2 = 00000024
.L809BA948:
/* 02668 809BA948 10000012 */  beq     $zero, $zero, .L809BA994
/* 0266C 809BA94C AFAA002C */  sw      $t2, 0x002C($sp)
/* 02670 809BA950 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L809BA954:
/* 02674 809BA954 AFA00010 */  sw      $zero, 0x0010($sp)
/* 02678 809BA958 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0267C 809BA95C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02680 809BA960 0C01E1A7 */  jal     Math_SmoothStepToS

/* 02684 809BA964 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 02688 809BA968 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 0268C 809BA96C AFA4002C */  sw      $a0, 0x002C($sp)
/* 02690 809BA970 0C01E027 */  jal     Math_Vec3f_Pitch

/* 02694 809BA974 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFE4
/* 02698 809BA978 00022C00 */  sll     $a1, $v0, 16
/* 0269C 809BA97C 00052C03 */  sra     $a1, $a1, 16
/* 026A0 809BA980 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 026A4 809BA984 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 026A8 809BA988 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 026AC 809BA98C 0C01E1A7 */  jal     Math_SmoothStepToS

/* 026B0 809BA990 AFA00010 */  sw      $zero, 0x0010($sp)
.L809BA994:
/* 026B4 809BA994 0C02927F */  jal     SkelAnime_FrameUpdateMatrix

/* 026B8 809BA998 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 026BC 809BA99C 0C0329DD */  jal     Math_CosF
/* 026C0 809BA9A0 C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 026C4 809BA9A4 3C01809C */  lui     $at, %hi(D_809BBCB8)       ## $at = 809C0000
/* 026C8 809BA9A8 C432BCB8 */  lwc1    $f18, %lo(D_809BBCB8)($at)
/* 026CC 809BA9AC 4612003E */  c.le.s  $f0, $f18
/* 026D0 809BA9B0 00000000 */  nop
/* 026D4 809BA9B4 45020008 */  bc1fl   .L809BA9D8
/* 026D8 809BA9B8 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
/* 026DC 809BA9BC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 026E0 809BA9C0 00000000 */  nop
/* 026E4 809BA9C4 3C01809C */  lui     $at, %hi(D_809BBCBC)       ## $at = 809C0000
/* 026E8 809BA9C8 C430BCBC */  lwc1    $f16, %lo(D_809BBCBC)($at)
/* 026EC 809BA9CC 46100102 */  mul.s   $f4, $f0, $f16
/* 026F0 809BA9D0 E6040284 */  swc1    $f4, 0x0284($s0)           ## 00000284
/* 026F4 809BA9D4 C60C0008 */  lwc1    $f12, 0x0008($s0)          ## 00000008
.L809BA9D8:
/* 026F8 809BA9D8 C60E000C */  lwc1    $f14, 0x000C($s0)          ## 0000000C
/* 026FC 809BA9DC 8E060010 */  lw      $a2, 0x0010($s0)           ## 00000010
/* 02700 809BA9E0 0C034261 */  jal     Matrix_Translate
/* 02704 809BA9E4 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 02708 809BA9E8 86040030 */  lh      $a0, 0x0030($s0)           ## 00000030
/* 0270C 809BA9EC 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 02710 809BA9F0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02714 809BA9F4 0C034421 */  jal     Matrix_RotateRPY
/* 02718 809BA9F8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0271C 809BA9FC C60C0274 */  lwc1    $f12, 0x0274($s0)          ## 00000274
/* 02720 809BAA00 0C0343B5 */  jal     Matrix_RotateZ
/* 02724 809BAA04 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 02728 809BAA08 C6080278 */  lwc1    $f8, 0x0278($s0)           ## 00000278
/* 0272C 809BAA0C 27A40060 */  addiu   $a0, $sp, 0x0060           ## $a0 = FFFFFFF0
/* 02730 809BAA10 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFE4
/* 02734 809BAA14 0C0346BD */  jal     Matrix_MultVec3f
/* 02738 809BAA18 E7A80064 */  swc1    $f8, 0x0064($sp)
/* 0273C 809BAA1C 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 02740 809BAA20 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.75
/* 02744 809BAA24 C6060274 */  lwc1    $f6, 0x0274($s0)           ## 00000274
/* 02748 809BAA28 44808000 */  mtc1    $zero, $f16                ## $f16 = 0.00
/* 0274C 809BAA2C 8FA4002C */  lw      $a0, 0x002C($sp)
/* 02750 809BAA30 460A3482 */  mul.s   $f18, $f6, $f10
/* 02754 809BAA34 8FA50054 */  lw      $a1, 0x0054($sp)
/* 02758 809BAA38 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0275C 809BAA3C E7B00010 */  swc1    $f16, 0x0010($sp)
/* 02760 809BAA40 44079000 */  mfc1    $a3, $f18
/* 02764 809BAA44 0C01E0C4 */  jal     Math_SmoothStepToF

/* 02768 809BAA48 00000000 */  nop
/* 0276C 809BAA4C 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 02770 809BAA50 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.75
/* 02774 809BAA54 C6040274 */  lwc1    $f4, 0x0274($s0)           ## 00000274
/* 02778 809BAA58 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 0277C 809BAA5C 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 02780 809BAA60 46082182 */  mul.s   $f6, $f4, $f8
/* 02784 809BAA64 8FA50058 */  lw      $a1, 0x0058($sp)
/* 02788 809BAA68 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0278C 809BAA6C E7AA0010 */  swc1    $f10, 0x0010($sp)
/* 02790 809BAA70 44073000 */  mfc1    $a3, $f6
/* 02794 809BAA74 0C01E0C4 */  jal     Math_SmoothStepToF

/* 02798 809BAA78 00000000 */  nop
/* 0279C 809BAA7C 3C013F40 */  lui     $at, 0x3F40                ## $at = 3F400000
/* 027A0 809BAA80 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.75
/* 027A4 809BAA84 C6120274 */  lwc1    $f18, 0x0274($s0)          ## 00000274
/* 027A8 809BAA88 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 027AC 809BAA8C 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 027B0 809BAA90 46109102 */  mul.s   $f4, $f18, $f16
/* 027B4 809BAA94 8FA5005C */  lw      $a1, 0x005C($sp)
/* 027B8 809BAA98 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 027BC 809BAA9C E7A80010 */  swc1    $f8, 0x0010($sp)
/* 027C0 809BAAA0 44072000 */  mfc1    $a3, $f4
/* 027C4 809BAAA4 0C01E0C4 */  jal     Math_SmoothStepToF

/* 027C8 809BAAA8 00000000 */  nop
/* 027CC 809BAAAC 3C01809C */  lui     $at, %hi(D_809BBCC0)       ## $at = 809C0000
/* 027D0 809BAAB0 C426BCC0 */  lwc1    $f6, %lo(D_809BBCC0)($at)
/* 027D4 809BAAB4 C60A0284 */  lwc1    $f10, 0x0284($s0)          ## 00000284
/* 027D8 809BAAB8 C6100274 */  lwc1    $f16, 0x0274($s0)          ## 00000274
/* 027DC 809BAABC 260502AC */  addiu   $a1, $s0, 0x02AC           ## $a1 = 000002AC
/* 027E0 809BAAC0 460A3480 */  add.s   $f18, $f6, $f10
/* 027E4 809BAAC4 46128100 */  add.s   $f4, $f16, $f18
/* 027E8 809BAAC8 E6040274 */  swc1    $f4, 0x0274($s0)           ## 00000274
/* 027EC 809BAACC 0C00CD90 */  jal     Actor_GetCollidedExplosive
/* 027F0 809BAAD0 8FA40074 */  lw      $a0, 0x0074($sp)
/* 027F4 809BAAD4 54400008 */  bnel    $v0, $zero, .L809BAAF8
/* 027F8 809BAAD8 860E0268 */  lh      $t6, 0x0268($s0)           ## 00000268
/* 027FC 809BAADC 860B026E */  lh      $t3, 0x026E($s0)           ## 0000026E
/* 02800 809BAAE0 256CFFFF */  addiu   $t4, $t3, 0xFFFF           ## $t4 = FFFFFFFF
/* 02804 809BAAE4 A60C026E */  sh      $t4, 0x026E($s0)           ## 0000026E
/* 02808 809BAAE8 860D026E */  lh      $t5, 0x026E($s0)           ## 0000026E
/* 0280C 809BAAEC 55A00017 */  bnel    $t5, $zero, .L809BAB4C
/* 02810 809BAAF0 860B0268 */  lh      $t3, 0x0268($s0)           ## 00000268
/* 02814 809BAAF4 860E0268 */  lh      $t6, 0x0268($s0)           ## 00000268
.L809BAAF8:
/* 02818 809BAAF8 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 0281C 809BAAFC 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02820 809BAB00 A60F0268 */  sh      $t7, 0x0268($s0)           ## 00000268
/* 02824 809BAB04 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02828 809BAB08 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 0282C 809BAB0C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02830 809BAB10 44815000 */  mtc1    $at, $f10                  ## $f10 = 60.00
/* 02834 809BAB14 46080182 */  mul.s   $f6, $f0, $f8
/* 02838 809BAB18 8608026E */  lh      $t0, 0x026E($s0)           ## 0000026E
/* 0283C 809BAB1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02840 809BAB20 460A3400 */  add.s   $f16, $f6, $f10
/* 02844 809BAB24 4600848D */  trunc.w.s $f18, $f16
/* 02848 809BAB28 44199000 */  mfc1    $t9, $f18
/* 0284C 809BAB2C 11000004 */  beq     $t0, $zero, .L809BAB40
/* 02850 809BAB30 AE190260 */  sw      $t9, 0x0260($s0)           ## 00000260
/* 02854 809BAB34 920902BD */  lbu     $t1, 0x02BD($s0)           ## 000002BD
/* 02858 809BAB38 312AFFFD */  andi    $t2, $t1, 0xFFFD           ## $t2 = 00000000
/* 0285C 809BAB3C A20A02BD */  sb      $t2, 0x02BD($s0)           ## 000002BD
.L809BAB40:
/* 02860 809BAB40 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02864 809BAB44 240538CD */  addiu   $a1, $zero, 0x38CD         ## $a1 = 000038CD
/* 02868 809BAB48 860B0268 */  lh      $t3, 0x0268($s0)           ## 00000268
.L809BAB4C:
/* 0286C 809BAB4C 26040288 */  addiu   $a0, $s0, 0x0288           ## $a0 = 00000288
/* 02870 809BAB50 3C0542A0 */  lui     $a1, 0x42A0                ## $a1 = 42A00000
/* 02874 809BAB54 11600023 */  beq     $t3, $zero, .L809BABE4
/* 02878 809BAB58 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0287C 809BAB5C 8E0C0260 */  lw      $t4, 0x0260($s0)           ## 00000260
/* 02880 809BAB60 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 02884 809BAB64 15A0000F */  bne     $t5, $zero, .L809BABA4
/* 02888 809BAB68 AE0D0260 */  sw      $t5, 0x0260($s0)           ## 00000260
/* 0288C 809BAB6C 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02890 809BAB70 A6000268 */  sh      $zero, 0x0268($s0)         ## 00000268
/* 02894 809BAB74 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 02898 809BAB78 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 0289C 809BAB7C 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 028A0 809BAB80 44813000 */  mtc1    $at, $f6                   ## $f6 = 180.00
/* 028A4 809BAB84 46040202 */  mul.s   $f8, $f0, $f4
/* 028A8 809BAB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028AC 809BAB8C 240538CC */  addiu   $a1, $zero, 0x38CC         ## $a1 = 000038CC
/* 028B0 809BAB90 46064280 */  add.s   $f10, $f8, $f6
/* 028B4 809BAB94 4600540D */  trunc.w.s $f16, $f10
/* 028B8 809BAB98 44188000 */  mfc1    $t8, $f16
/* 028BC 809BAB9C 0C00BE0A */  jal     Audio_PlayActorSound2

/* 028C0 809BABA0 A618026E */  sh      $t8, 0x026E($s0)           ## 0000026E
.L809BABA4:
/* 028C4 809BABA4 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 028C8 809BABA8 26040288 */  addiu   $a0, $s0, 0x0288           ## $a0 = 00000288
/* 028CC 809BABAC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 028D0 809BABB0 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 028D4 809BABB4 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 028D8 809BABB8 0C01E0C4 */  jal     Math_SmoothStepToF

/* 028DC 809BABBC E7B20010 */  swc1    $f18, 0x0010($sp)
/* 028E0 809BABC0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 028E4 809BABC4 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 028E8 809BABC8 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 028EC 809BABCC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 028F0 809BABD0 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 028F4 809BABD4 0C01E0C4 */  jal     Math_SmoothStepToF

/* 028F8 809BABD8 E7A40010 */  swc1    $f4, 0x0010($sp)
/* 028FC 809BABDC 1000000D */  beq     $zero, $zero, .L809BAC14
/* 02900 809BABE0 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
.L809BABE4:
/* 02904 809BABE4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 02908 809BABE8 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 0290C 809BABEC 0C01E0C4 */  jal     Math_SmoothStepToF

/* 02910 809BABF0 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 02914 809BABF4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02918 809BABF8 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 0291C 809BABFC 3C0542C8 */  lui     $a1, 0x42C8                ## $a1 = 42C80000
/* 02920 809BAC00 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02924 809BAC04 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 02928 809BAC08 0C01E0C4 */  jal     Math_SmoothStepToF

/* 0292C 809BAC0C E7A60010 */  swc1    $f6, 0x0010($sp)
/* 02930 809BAC10 C60A0164 */  lwc1    $f10, 0x0164($s0)          ## 00000164
.L809BAC14:
/* 02934 809BAC14 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 02938 809BAC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0293C 809BAC1C 4600540D */  trunc.w.s $f16, $f10
/* 02940 809BAC20 44028000 */  mfc1    $v0, $f16
/* 02944 809BAC24 00000000 */  nop
/* 02948 809BAC28 14410007 */  bne     $v0, $at, .L809BAC48
/* 0294C 809BAC2C 00000000 */  nop
/* 02950 809BAC30 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02954 809BAC34 240538C8 */  addiu   $a1, $zero, 0x38C8         ## $a1 = 000038C8
/* 02958 809BAC38 C6120164 */  lwc1    $f18, 0x0164($s0)          ## 00000164
/* 0295C 809BAC3C 4600910D */  trunc.w.s $f4, $f18
/* 02960 809BAC40 44022000 */  mfc1    $v0, $f4
/* 02964 809BAC44 00000000 */  nop
.L809BAC48:
/* 02968 809BAC48 5440000D */  bnel    $v0, $zero, .L809BAC80
/* 0296C 809BAC4C 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02970 809BAC50 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 02974 809BAC54 00000000 */  nop
/* 02978 809BAC58 3C01809C */  lui     $at, %hi(D_809BBCC4)       ## $at = 809C0000
/* 0297C 809BAC5C C428BCC4 */  lwc1    $f8, %lo(D_809BBCC4)($at)
/* 02980 809BAC60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02984 809BAC64 4608003C */  c.lt.s  $f0, $f8
/* 02988 809BAC68 00000000 */  nop
/* 0298C 809BAC6C 45020004 */  bc1fl   .L809BAC80
/* 02990 809BAC70 8FBF0024 */  lw      $ra, 0x0024($sp)
/* 02994 809BAC74 0C00BE0A */  jal     Audio_PlayActorSound2

/* 02998 809BAC78 240538CA */  addiu   $a1, $zero, 0x38CA         ## $a1 = 000038CA
/* 0299C 809BAC7C 8FBF0024 */  lw      $ra, 0x0024($sp)
.L809BAC80:
/* 029A0 809BAC80 8FB00020 */  lw      $s0, 0x0020($sp)
/* 029A4 809BAC84 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 029A8 809BAC88 03E00008 */  jr      $ra
/* 029AC 809BAC8C 00000000 */  nop

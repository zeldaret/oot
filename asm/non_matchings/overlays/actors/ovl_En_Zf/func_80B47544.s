glabel func_80B47544
/* 034F4 80B47544 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 034F8 80B47548 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 034FC 80B4754C 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 03500 80B47550 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 03504 80B47554 AFB00028 */  sw      $s0, 0x0028($sp)
/* 03508 80B47558 AFA5004C */  sw      $a1, 0x004C($sp)
/* 0350C 80B4755C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03510 80B47560 AFBF002C */  sw      $ra, 0x002C($sp)
/* 03514 80B47564 44051000 */  mfc1    $a1, $f2
/* 03518 80B47568 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 0351C 80B4756C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03520 80B47570 3C073F00 */  lui     $a3, 0x3F00                ## $a3 = 3F000000
/* 03524 80B47574 E7A20010 */  swc1    $f2, 0x0010($sp)
/* 03528 80B47578 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF

/* 0352C 80B4757C E7A40040 */  swc1    $f4, 0x0040($sp)
/* 03530 80B47580 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 03534 80B47584 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 03538 80B47588 AFA00010 */  sw      $zero, 0x0010($sp)
/* 0353C 80B4758C 00A12821 */  addu    $a1, $a1, $at
/* 03540 80B47590 00052C00 */  sll     $a1, $a1, 16
/* 03544 80B47594 00052C03 */  sra     $a1, $a1, 16
/* 03548 80B47598 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0354C 80B4759C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 03550 80B475A0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 03554 80B475A4 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 03558 80B475A8 3C0143D2 */  lui     $at, 0x43D2                ## $at = 43D20000
/* 0355C 80B475AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 420.00
/* 03560 80B475B0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 03564 80B475B4 3C01437A */  lui     $at, 0x437A                ## $at = 437A0000
/* 03568 80B475B8 4606403E */  c.le.s  $f8, $f6
/* 0356C 80B475BC 00000000 */  nop
/* 03570 80B475C0 45020005 */  bc1fl   .L80B475D8
/* 03574 80B475C4 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 03578 80B475C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 250.00
/* 0357C 80B475CC 00000000 */  nop
/* 03580 80B475D0 E7AA0040 */  swc1    $f10, 0x0040($sp)
/* 03584 80B475D4 C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
.L80B475D8:
/* 03588 80B475D8 C7B20040 */  lwc1    $f18, 0x0040($sp)
/* 0358C 80B475DC 4612803C */  c.lt.s  $f16, $f18
/* 03590 80B475E0 00000000 */  nop
/* 03594 80B475E4 4502000D */  bc1fl   .L80B4761C
/* 03598 80B475E8 8E1803E4 */  lw      $t8, 0x03E4($s0)           ## 000003E4
/* 0359C 80B475EC 8E0E03E4 */  lw      $t6, 0x03E4($s0)           ## 000003E4
/* 035A0 80B475F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 035A4 80B475F4 51C10009 */  beql    $t6, $at, .L80B4761C
/* 035A8 80B475F8 8E1803E4 */  lw      $t8, 0x03E4($s0)           ## 000003E4
/* 035AC 80B475FC 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 035B0 80B47600 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 035B4 80B47604 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 035B8 80B47608 0C2D1CD8 */  jal     func_80B47360
/* 035BC 80B4760C 8FA5004C */  lw      $a1, 0x004C($sp)
/* 035C0 80B47610 1000005E */  beq     $zero, $zero, .L80B4778C
/* 035C4 80B47614 8FBF002C */  lw      $ra, 0x002C($sp)
/* 035C8 80B47618 8E1803E4 */  lw      $t8, 0x03E4($s0)           ## 000003E4
.L80B4761C:
/* 035CC 80B4761C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 035D0 80B47620 8FA4004C */  lw      $a0, 0x004C($sp)
/* 035D4 80B47624 53010004 */  beql    $t8, $at, .L80B47638
/* 035D8 80B47628 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 035DC 80B4762C 0C2D2793 */  jal     func_80B49E4C
/* 035E0 80B47630 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 035E4 80B47634 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80B47638:
/* 035E8 80B47638 0C02927F */  jal     SkelAnime_Update

/* 035EC 80B4763C AFA40034 */  sw      $a0, 0x0034($sp)
/* 035F0 80B47640 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 035F4 80B47644 50400047 */  beql    $v0, $zero, .L80B47764
/* 035F8 80B47648 8FAF004C */  lw      $t7, 0x004C($sp)
/* 035FC 80B4764C 8E1903E4 */  lw      $t9, 0x03E4($s0)           ## 000003E4
/* 03600 80B47650 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 03604 80B47654 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 03608 80B47658 29010003 */  slti    $at, $t0, 0x0003
/* 0360C 80B4765C 14200002 */  bne     $at, $zero, .L80B47668
/* 03610 80B47660 AE0803E4 */  sw      $t0, 0x03E4($s0)           ## 000003E4
/* 03614 80B47664 AE0003E4 */  sw      $zero, 0x03E4($s0)         ## 000003E4
.L80B47668:
/* 03618 80B47668 C6040408 */  lwc1    $f4, 0x0408($s0)           ## 00000408
/* 0361C 80B4766C 46041032 */  c.eq.s  $f2, $f4
/* 03620 80B47670 00000000 */  nop
/* 03624 80B47674 45020007 */  bc1fl   .L80B47694
/* 03628 80B47678 AE0A03E4 */  sw      $t2, 0x03E4($s0)           ## 000003E4
/* 0362C 80B4767C C606040C */  lwc1    $f6, 0x040C($s0)           ## 0000040C
/* 03630 80B47680 46061032 */  c.eq.s  $f2, $f6
/* 03634 80B47684 00000000 */  nop
/* 03638 80B47688 45030003 */  bc1tl   .L80B47698
/* 0363C 80B4768C 8E0B03E4 */  lw      $t3, 0x03E4($s0)           ## 000003E4
/* 03640 80B47690 AE0A03E4 */  sw      $t2, 0x03E4($s0)           ## 000003E4
.L80B47694:
/* 03644 80B47694 8E0B03E4 */  lw      $t3, 0x03E4($s0)           ## 000003E4
.L80B47698:
/* 03648 80B47698 3C0480B5 */  lui     $a0, %hi(D_80B4A280)       ## $a0 = 80B50000
/* 0364C 80B4769C 000B6080 */  sll     $t4, $t3,  2
/* 03650 80B476A0 008C2021 */  addu    $a0, $a0, $t4
/* 03654 80B476A4 0C028800 */  jal     Animation_LastFrame

/* 03658 80B476A8 8C84A280 */  lw      $a0, %lo(D_80B4A280)($a0)
/* 0365C 80B476AC 8E0303E4 */  lw      $v1, 0x03E4($s0)           ## 000003E4
/* 03660 80B476B0 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 03664 80B476B4 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 03668 80B476B8 10600008 */  beq     $v1, $zero, .L80B476DC
/* 0366C 80B476BC 46804020 */  cvt.s.w $f0, $f8
/* 03670 80B476C0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 03674 80B476C4 1061000A */  beq     $v1, $at, .L80B476F0
/* 03678 80B476C8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0367C 80B476CC 50610014 */  beql    $v1, $at, .L80B47720
/* 03680 80B476D0 C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 03684 80B476D4 10000017 */  beq     $zero, $zero, .L80B47734
/* 03688 80B476D8 00036880 */  sll     $t5, $v1,  2
.L80B476DC:
/* 0368C 80B476DC C60A0080 */  lwc1    $f10, 0x0080($s0)          ## 00000080
/* 03690 80B476E0 E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 03694 80B476E4 8E0303E4 */  lw      $v1, 0x03E4($s0)           ## 000003E4
/* 03698 80B476E8 10000011 */  beq     $zero, $zero, .L80B47730
/* 0369C 80B476EC E60A0028 */  swc1    $f10, 0x0028($s0)          ## 00000028
.L80B476F0:
/* 036A0 80B476F0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 036A4 80B476F4 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 036A8 80B476F8 C610040C */  lwc1    $f16, 0x040C($s0)          ## 0000040C
/* 036AC 80B476FC C6060408 */  lwc1    $f6, 0x0408($s0)           ## 00000408
/* 036B0 80B47700 E6020408 */  swc1    $f2, 0x0408($s0)           ## 00000408
/* 036B4 80B47704 46128100 */  add.s   $f4, $f16, $f18
/* 036B8 80B47708 E602040C */  swc1    $f2, 0x040C($s0)           ## 0000040C
/* 036BC 80B4770C 8E0303E4 */  lw      $v1, 0x03E4($s0)           ## 000003E4
/* 036C0 80B47710 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 036C4 80B47714 10000006 */  beq     $zero, $zero, .L80B47730
/* 036C8 80B47718 E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 036CC 80B4771C C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
.L80B47720:
/* 036D0 80B47720 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 036D4 80B47724 44810000 */  mtc1    $at, $f0                   ## $f0 = 3.00
/* 036D8 80B47728 8E0303E4 */  lw      $v1, 0x03E4($s0)           ## 000003E4
/* 036DC 80B4772C E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L80B47730:
/* 036E0 80B47730 00036880 */  sll     $t5, $v1,  2
.L80B47734:
/* 036E4 80B47734 3C0580B5 */  lui     $a1, %hi(D_80B4A280)       ## $a1 = 80B50000
/* 036E8 80B47738 00AD2821 */  addu    $a1, $a1, $t5
/* 036EC 80B4773C 44071000 */  mfc1    $a3, $f2
/* 036F0 80B47740 240E0002 */  addiu   $t6, $zero, 0x0002         ## $t6 = 00000002
/* 036F4 80B47744 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 036F8 80B47748 8CA5A280 */  lw      $a1, %lo(D_80B4A280)($a1)
/* 036FC 80B4774C 8FA40034 */  lw      $a0, 0x0034($sp)
/* 03700 80B47750 3C063FC0 */  lui     $a2, 0x3FC0                ## $a2 = 3FC00000
/* 03704 80B47754 E7A00010 */  swc1    $f0, 0x0010($sp)
/* 03708 80B47758 0C029468 */  jal     Animation_Change

/* 0370C 80B4775C E7A20018 */  swc1    $f2, 0x0018($sp)
/* 03710 80B47760 8FAF004C */  lw      $t7, 0x004C($sp)
.L80B47764:
/* 03714 80B47764 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 03718 80B47768 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0371C 80B4776C 030FC021 */  addu    $t8, $t8, $t7
/* 03720 80B47770 8F181DE4 */  lw      $t8, 0x1DE4($t8)           ## 00011DE4
/* 03724 80B47774 3319005F */  andi    $t9, $t8, 0x005F           ## $t9 = 00000000
/* 03728 80B47778 57200004 */  bnel    $t9, $zero, .L80B4778C
/* 0372C 80B4777C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 03730 80B47780 0C00BE0A */  jal     Audio_PlayActorSound2

/* 03734 80B47784 24053829 */  addiu   $a1, $zero, 0x3829         ## $a1 = 00003829
/* 03738 80B47788 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B4778C:
/* 0373C 80B4778C 8FB00028 */  lw      $s0, 0x0028($sp)
/* 03740 80B47790 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 03744 80B47794 03E00008 */  jr      $ra
/* 03748 80B47798 00000000 */  nop

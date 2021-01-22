.rdata
glabel D_8013C66C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C67C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C68C
    .asciz "../z_kankyo.c"
    .balign 4

.late_rodata
glabel D_8013C800
    .float 5000

glabel D_8013C804
    .float 9500

glabel D_8013C808
    .float 0.017453292

.text
glabel func_8007542C
/* AEC5CC 8007542C 27BDFF20 */  addiu $sp, $sp, -0xe0
/* AEC5D0 80075430 3C0F8012 */  lui   $t7, %hi(D_8011FE88) # $t7, 0x8012
/* AEC5D4 80075434 AFBF0064 */  sw    $ra, 0x64($sp)
/* AEC5D8 80075438 AFB70060 */  sw    $s7, 0x60($sp)
/* AEC5DC 8007543C AFB6005C */  sw    $s6, 0x5c($sp)
/* AEC5E0 80075440 AFB50058 */  sw    $s5, 0x58($sp)
/* AEC5E4 80075444 AFB40054 */  sw    $s4, 0x54($sp)
/* AEC5E8 80075448 AFB30050 */  sw    $s3, 0x50($sp)
/* AEC5EC 8007544C AFB2004C */  sw    $s2, 0x4c($sp)
/* AEC5F0 80075450 AFB10048 */  sw    $s1, 0x48($sp)
/* AEC5F4 80075454 AFB00044 */  sw    $s0, 0x44($sp)
/* AEC5F8 80075458 F7BE0038 */  sdc1  $f30, 0x38($sp)
/* AEC5FC 8007545C F7BC0030 */  sdc1  $f28, 0x30($sp)
/* AEC600 80075460 F7BA0028 */  sdc1  $f26, 0x28($sp)
/* AEC604 80075464 F7B80020 */  sdc1  $f24, 0x20($sp)
/* AEC608 80075468 F7B60018 */  sdc1  $f22, 0x18($sp)
/* AEC60C 8007546C F7B40010 */  sdc1  $f20, 0x10($sp)
/* AEC610 80075470 AFA500E4 */  sw    $a1, 0xe4($sp)
/* AEC614 80075474 25EFFE88 */  addiu $t7, %lo(D_8011FE88) # addiu $t7, $t7, -0x178
/* AEC618 80075478 8DF90000 */  lw    $t9, ($t7)
/* AEC61C 8007547C 27AE00B8 */  addiu $t6, $sp, 0xb8
/* AEC620 80075480 8DF80004 */  lw    $t8, 4($t7)
/* AEC624 80075484 ADD90000 */  sw    $t9, ($t6)
/* AEC628 80075488 8DF90008 */  lw    $t9, 8($t7)
/* AEC62C 8007548C 3C098012 */  lui   $t1, %hi(D_8011FE94) # $t1, 0x8012
/* AEC630 80075490 2529FE94 */  addiu $t1, %lo(D_8011FE94) # addiu $t1, $t1, -0x16c
/* AEC634 80075494 ADD80004 */  sw    $t8, 4($t6)
/* AEC638 80075498 ADD90008 */  sw    $t9, 8($t6)
/* AEC63C 8007549C 8D2B0000 */  lw    $t3, ($t1)
/* AEC640 800754A0 27A800AC */  addiu $t0, $sp, 0xac
/* AEC644 800754A4 8D2A0004 */  lw    $t2, 4($t1)
/* AEC648 800754A8 AD0B0000 */  sw    $t3, ($t0)
/* AEC64C 800754AC 8D2B0008 */  lw    $t3, 8($t1)
/* AEC650 800754B0 AD0A0004 */  sw    $t2, 4($t0)
/* AEC654 800754B4 00809825 */  move  $s3, $a0
/* AEC658 800754B8 AD0B0008 */  sw    $t3, 8($t0)
/* AEC65C 800754BC 8C850000 */  lw    $a1, ($a0)
/* AEC660 800754C0 3C068014 */  lui   $a2, %hi(D_8013C66C) # $a2, 0x8014
/* AEC664 800754C4 24C6C66C */  addiu $a2, %lo(D_8013C66C) # addiu $a2, $a2, -0x3994
/* AEC668 800754C8 27A40098 */  addiu $a0, $sp, 0x98
/* AEC66C 800754CC 24070CB5 */  li    $a3, 3253
/* AEC670 800754D0 0C031AB1 */  jal   Graph_OpenDisps
/* AEC674 800754D4 00A09025 */   move  $s2, $a1
/* AEC678 800754D8 3C018014 */  lui   $at, %hi(D_8013C800)
/* AEC67C 800754DC C43EC800 */  lwc1  $f30, %lo(D_8013C800)($at)
/* AEC680 800754E0 3C018014 */  lui   $at, %hi(D_8013C804)
/* AEC684 800754E4 C43CC804 */  lwc1  $f28, %lo(D_8013C804)($at)
/* AEC688 800754E8 3C0141B0 */  li    $at, 0x41B00000 # 0.000000
/* AEC68C 800754EC 4481D000 */  mtc1  $at, $f26
/* AEC690 800754F0 3C018014 */  lui   $at, %hi(D_8013C808)
/* AEC694 800754F4 C438C808 */  lwc1  $f24, %lo(D_8013C808)($at)
/* AEC698 800754F8 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AEC69C 800754FC 4481B000 */  mtc1  $at, $f22
/* AEC6A0 80075500 0000A025 */  move  $s4, $zero
/* AEC6A4 80075504 24170002 */  li    $s7, 2
.L80075508:
/* AEC6A8 80075508 3C0D8016 */  lui   $t5, %hi(D_8015FD10)
/* AEC6AC 8007550C 25ADFD10 */  addiu $t5, %lo(D_8015FD10) # addiu $t5, $t5, -0x2f0
/* AEC6B0 80075510 00146140 */  sll   $t4, $s4, 5
/* AEC6B4 80075514 018D8021 */  addu  $s0, $t4, $t5
/* AEC6B8 80075518 92030000 */  lbu   $v1, ($s0)
/* AEC6BC 8007551C 24010001 */  li    $at, 1
/* AEC6C0 80075520 50600008 */  beql  $v1, $zero, .L80075544
/* AEC6C4 80075524 C66E00E0 */   lwc1  $f14, 0xe0($s3)
/* AEC6C8 80075528 50610047 */  beql  $v1, $at, .L80075648
/* AEC6CC 8007552C 920C001F */   lbu   $t4, 0x1f($s0)
/* AEC6D0 80075530 5077004F */  beql  $v1, $s7, .L80075670
/* AEC6D4 80075534 9202001E */   lbu   $v0, 0x1e($s0)
/* AEC6D8 80075538 10000055 */  b     .L80075690
/* AEC6DC 8007553C 00000000 */   nop   
/* AEC6E0 80075540 C66E00E0 */  lwc1  $f14, 0xe0($s3)
.L80075544:
/* AEC6E4 80075544 C66400EC */  lwc1  $f4, 0xec($s3)
/* AEC6E8 80075548 C66600F4 */  lwc1  $f6, 0xf4($s3)
/* AEC6EC 8007554C C66800E8 */  lwc1  $f8, 0xe8($s3)
/* AEC6F0 80075550 460E2081 */  sub.s $f2, $f4, $f14
/* AEC6F4 80075554 46083301 */  sub.s $f12, $f6, $f8
/* AEC6F8 80075558 46021282 */  mul.s $f10, $f2, $f2
/* AEC6FC 8007555C 00000000 */  nop   
/* AEC700 80075560 460C6402 */  mul.s $f16, $f12, $f12
/* AEC704 80075564 46105000 */  add.s $f0, $f10, $f16
/* AEC708 80075568 46000004 */  sqrt.s $f0, $f0
/* AEC70C 8007556C 46001483 */  div.s $f18, $f2, $f0
/* AEC710 80075570 46006503 */  div.s $f20, $f12, $f0
/* AEC714 80075574 461C9102 */  mul.s $f4, $f18, $f28
/* AEC718 80075578 46047180 */  add.s $f6, $f14, $f4
/* AEC71C 8007557C 0C03F66B */  jal   Rand_ZeroOne
/* AEC720 80075580 E6060010 */   swc1  $f6, 0x10($s0)
/* AEC724 80075584 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AEC728 80075588 44814000 */  mtc1  $at, $f8
/* AEC72C 8007558C 3C01457A */  li    $at, 0x457A0000 # 0.000000
/* AEC730 80075590 44818000 */  mtc1  $at, $f16
/* AEC734 80075594 46080282 */  mul.s $f10, $f0, $f8
/* AEC738 80075598 46105480 */  add.s $f18, $f10, $f16
/* AEC73C 8007559C 461CA182 */  mul.s $f6, $f20, $f28
/* AEC740 800755A0 E6120014 */  swc1  $f18, 0x14($s0)
/* AEC744 800755A4 C66400E8 */  lwc1  $f4, 0xe8($s3)
/* AEC748 800755A8 46062200 */  add.s $f8, $f4, $f6
/* AEC74C 800755AC 0C03F66B */  jal   Rand_ZeroOne
/* AEC750 800755B0 E6080018 */   swc1  $f8, 0x18($s0)
/* AEC754 800755B4 46160281 */  sub.s $f10, $f0, $f22
/* AEC758 800755B8 44809000 */  mtc1  $zero, $f18
/* AEC75C 800755BC 461E5402 */  mul.s $f16, $f10, $f30
/* AEC760 800755C0 E6120008 */  swc1  $f18, 8($s0)
/* AEC764 800755C4 0C03F66B */  jal   Rand_ZeroOne
/* AEC768 800755C8 E6100004 */   swc1  $f16, 4($s0)
/* AEC76C 800755CC 46160101 */  sub.s $f4, $f0, $f22
/* AEC770 800755D0 A200001E */  sb    $zero, 0x1e($s0)
/* AEC774 800755D4 461E2182 */  mul.s $f6, $f4, $f30
/* AEC778 800755D8 0C03F66B */  jal   Rand_ZeroOne
/* AEC77C 800755DC E606000C */   swc1  $f6, 0xc($s0)
/* AEC780 800755E0 46160201 */  sub.s $f8, $f0, $f22
/* AEC784 800755E4 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AEC788 800755E8 44815000 */  mtc1  $at, $f10
/* AEC78C 800755EC 00000000 */  nop   
/* AEC790 800755F0 460A4402 */  mul.s $f16, $f8, $f10
/* AEC794 800755F4 4600848D */  trunc.w.s $f18, $f16
/* AEC798 800755F8 440F9000 */  mfc1  $t7, $f18
/* AEC79C 800755FC 0C03F66B */  jal   Rand_ZeroOne
/* AEC7A0 80075600 A20F001C */   sb    $t7, 0x1c($s0)
/* AEC7A4 80075604 46160101 */  sub.s $f4, $f0, $f22
/* AEC7A8 80075608 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AEC7AC 8007560C 44813000 */  mtc1  $at, $f6
/* AEC7B0 80075610 920A0000 */  lbu   $t2, ($s0)
/* AEC7B4 80075614 00144080 */  sll   $t0, $s4, 2
/* AEC7B8 80075618 46062202 */  mul.s $f8, $f4, $f6
/* AEC7BC 8007561C 01144023 */  subu  $t0, $t0, $s4
/* AEC7C0 80075620 25090003 */  addiu $t1, $t0, 3
/* AEC7C4 80075624 254B0001 */  addiu $t3, $t2, 1
/* AEC7C8 80075628 A209001F */  sb    $t1, 0x1f($s0)
/* AEC7CC 8007562C A20B0000 */  sb    $t3, ($s0)
/* AEC7D0 80075630 316300FF */  andi  $v1, $t3, 0xff
/* AEC7D4 80075634 4600428D */  trunc.w.s $f10, $f8
/* AEC7D8 80075638 44195000 */  mfc1  $t9, $f10
/* AEC7DC 8007563C 10000014 */  b     .L80075690
/* AEC7E0 80075640 A219001D */   sb    $t9, 0x1d($s0)
/* AEC7E4 80075644 920C001F */  lbu   $t4, 0x1f($s0)
.L80075648:
/* AEC7E8 80075648 258DFFFF */  addiu $t5, $t4, -1
/* AEC7EC 8007564C 31AE00FF */  andi  $t6, $t5, 0xff
/* AEC7F0 80075650 1DC00004 */  bgtz  $t6, .L80075664
/* AEC7F4 80075654 A20D001F */   sb    $t5, 0x1f($s0)
/* AEC7F8 80075658 920F0000 */  lbu   $t7, ($s0)
/* AEC7FC 8007565C 25F80001 */  addiu $t8, $t7, 1
/* AEC800 80075660 A2180000 */  sb    $t8, ($s0)
.L80075664:
/* AEC804 80075664 1000000A */  b     .L80075690
/* AEC808 80075668 92030000 */   lbu   $v1, ($s0)
/* AEC80C 8007566C 9202001E */  lbu   $v0, 0x1e($s0)
.L80075670:
/* AEC810 80075670 240800FF */  li    $t0, 255
/* AEC814 80075674 28410007 */  slti  $at, $v0, 7
/* AEC818 80075678 10200003 */  beqz  $at, .L80075688
/* AEC81C 8007567C 24590001 */   addiu $t9, $v0, 1
/* AEC820 80075680 10000002 */  b     .L8007568C
/* AEC824 80075684 A219001E */   sb    $t9, 0x1e($s0)
.L80075688:
/* AEC828 80075688 A2080000 */  sb    $t0, ($s0)
.L8007568C:
/* AEC82C 8007568C 92030000 */  lbu   $v1, ($s0)
.L80075690:
/* AEC830 80075690 16E30069 */  bne   $s7, $v1, .L80075838
/* AEC834 80075694 00003825 */   move  $a3, $zero
/* AEC838 80075698 C6100004 */  lwc1  $f16, 4($s0)
/* AEC83C 8007569C C6120010 */  lwc1  $f18, 0x10($s0)
/* AEC840 800756A0 C608000C */  lwc1  $f8, 0xc($s0)
/* AEC844 800756A4 C60A0018 */  lwc1  $f10, 0x18($s0)
/* AEC848 800756A8 46128300 */  add.s $f12, $f16, $f18
/* AEC84C 800756AC C6040008 */  lwc1  $f4, 8($s0)
/* AEC850 800756B0 C6060014 */  lwc1  $f6, 0x14($s0)
/* AEC854 800756B4 460A4400 */  add.s $f16, $f8, $f10
/* AEC858 800756B8 3C150100 */  lui   $s5, 0x100
/* AEC85C 800756BC 3C160403 */  lui   $s6, %hi(gEffLightningDL) # $s6, 0x403
/* AEC860 800756C0 26D6CF30 */  addiu $s6, %lo(gEffLightningDL) # addiu $s6, $s6, -0x30d0
/* AEC864 800756C4 44068000 */  mfc1  $a2, $f16
/* AEC868 800756C8 26B50000 */  addiu $s5, $s5, 0
/* AEC86C 800756CC 0C034261 */  jal   Matrix_Translate
/* AEC870 800756D0 46062380 */   add.s $f14, $f4, $f6
/* AEC874 800756D4 8209001C */  lb    $t1, 0x1c($s0)
/* AEC878 800756D8 24050001 */  li    $a1, 1
/* AEC87C 800756DC 44899000 */  mtc1  $t1, $f18
/* AEC880 800756E0 00000000 */  nop   
/* AEC884 800756E4 46809120 */  cvt.s.w $f4, $f18
/* AEC888 800756E8 46182302 */  mul.s $f12, $f4, $f24
/* AEC88C 800756EC 0C0342DC */  jal   Matrix_RotateX
/* AEC890 800756F0 00000000 */   nop   
/* AEC894 800756F4 820A001D */  lb    $t2, 0x1d($s0)
/* AEC898 800756F8 24050001 */  li    $a1, 1
/* AEC89C 800756FC 448A3000 */  mtc1  $t2, $f6
/* AEC8A0 80075700 00000000 */  nop   
/* AEC8A4 80075704 46803220 */  cvt.s.w $f8, $f6
/* AEC8A8 80075708 46184302 */  mul.s $f12, $f8, $f24
/* AEC8AC 8007570C 0C0343B5 */  jal   Matrix_RotateZ
/* AEC8B0 80075710 00000000 */   nop   
/* AEC8B4 80075714 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* AEC8B8 80075718 44817000 */  mtc1  $at, $f14
/* AEC8BC 8007571C 4406D000 */  mfc1  $a2, $f26
/* AEC8C0 80075720 4600D306 */  mov.s $f12, $f26
/* AEC8C4 80075724 0C0342A3 */  jal   Matrix_Scale
/* AEC8C8 80075728 24070001 */   li    $a3, 1
/* AEC8CC 8007572C 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC8D0 80075730 3C0CFA00 */  lui   $t4, 0xfa00
/* AEC8D4 80075734 240DFF80 */  li    $t5, -128
/* AEC8D8 80075738 244B0008 */  addiu $t3, $v0, 8
/* AEC8DC 8007573C AE4B02D0 */  sw    $t3, 0x2d0($s2)
/* AEC8E0 80075740 AC4C0000 */  sw    $t4, ($v0)
/* AEC8E4 80075744 AC4D0004 */  sw    $t5, 4($v0)
/* AEC8E8 80075748 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC8EC 8007574C 3C1800FF */  lui   $t8, (0x00FFFF80 >> 16) # lui $t8, 0xff
/* AEC8F0 80075750 3718FF80 */  ori   $t8, (0x00FFFF80 & 0xFFFF) # ori $t8, $t8, 0xff80
/* AEC8F4 80075754 244E0008 */  addiu $t6, $v0, 8
/* AEC8F8 80075758 AE4E02D0 */  sw    $t6, 0x2d0($s2)
/* AEC8FC 8007575C 3C0FFB00 */  lui   $t7, 0xfb00
/* AEC900 80075760 AC4F0000 */  sw    $t7, ($v0)
/* AEC904 80075764 AC580004 */  sw    $t8, 4($v0)
/* AEC908 80075768 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC90C 8007576C 3C08DA38 */  lui   $t0, (0xDA380003 >> 16) # lui $t0, 0xda38
/* AEC910 80075770 35080003 */  ori   $t0, (0xDA380003 & 0xFFFF) # ori $t0, $t0, 3
/* AEC914 80075774 24590008 */  addiu $t9, $v0, 8
/* AEC918 80075778 AE5902D0 */  sw    $t9, 0x2d0($s2)
/* AEC91C 8007577C 3C058014 */  lui   $a1, %hi(D_8013C67C) # $a1, 0x8014
/* AEC920 80075780 AC480000 */  sw    $t0, ($v0)
/* AEC924 80075784 8E640000 */  lw    $a0, ($s3)
/* AEC928 80075788 24A5C67C */  addiu $a1, %lo(D_8013C67C) # addiu $a1, $a1, -0x3984
/* AEC92C 8007578C 24060D05 */  li    $a2, 3333
/* AEC930 80075790 0C0346A2 */  jal   Matrix_NewMtx
/* AEC934 80075794 00408825 */   move  $s1, $v0
/* AEC938 80075798 AE220004 */  sw    $v0, 4($s1)
/* AEC93C 8007579C 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC940 800757A0 3C0ADB06 */  lui   $t2, (0xDB060020 >> 16) # lui $t2, 0xdb06
/* AEC944 800757A4 354A0020 */  ori   $t2, (0xDB060020 & 0xFFFF) # ori $t2, $t2, 0x20
/* AEC948 800757A8 24490008 */  addiu $t1, $v0, 8
/* AEC94C 800757AC AE4902D0 */  sw    $t1, 0x2d0($s2)
/* AEC950 800757B0 AC4A0000 */  sw    $t2, ($v0)
/* AEC954 800757B4 920B001E */  lbu   $t3, 0x1e($s0)
/* AEC958 800757B8 3C048012 */  lui   $a0, %hi(D_8011FEA0)
/* AEC95C 800757BC 3C198016 */  lui   $t9, %hi(gSegments)
/* AEC960 800757C0 000B6080 */  sll   $t4, $t3, 2
/* AEC964 800757C4 008C2021 */  addu  $a0, $a0, $t4
/* AEC968 800757C8 8C84FEA0 */  lw    $a0, %lo(D_8011FEA0)($a0)
/* AEC96C 800757CC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* AEC970 800757D0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* AEC974 800757D4 00047100 */  sll   $t6, $a0, 4
/* AEC978 800757D8 000E7F02 */  srl   $t7, $t6, 0x1c
/* AEC97C 800757DC 000FC080 */  sll   $t8, $t7, 2
/* AEC980 800757E0 0338C821 */  addu  $t9, $t9, $t8
/* AEC984 800757E4 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* AEC988 800757E8 00816824 */  and   $t5, $a0, $at
/* AEC98C 800757EC 3C018000 */  lui   $at, 0x8000
/* AEC990 800757F0 01B94021 */  addu  $t0, $t5, $t9
/* AEC994 800757F4 01014821 */  addu  $t1, $t0, $at
/* AEC998 800757F8 AC490004 */  sw    $t1, 4($v0)
/* AEC99C 800757FC 0C025314 */  jal   func_80094C50
/* AEC9A0 80075800 8E640000 */   lw    $a0, ($s3)
/* AEC9A4 80075804 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC9A8 80075808 3C0BDA38 */  lui   $t3, (0xDA380001 >> 16) # lui $t3, 0xda38
/* AEC9AC 8007580C 356B0001 */  ori   $t3, (0xDA380001 & 0xFFFF) # ori $t3, $t3, 1
/* AEC9B0 80075810 244A0008 */  addiu $t2, $v0, 8
/* AEC9B4 80075814 AE4A02D0 */  sw    $t2, 0x2d0($s2)
/* AEC9B8 80075818 AC550004 */  sw    $s5, 4($v0)
/* AEC9BC 8007581C AC4B0000 */  sw    $t3, ($v0)
/* AEC9C0 80075820 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* AEC9C4 80075824 3C0EDE00 */  lui   $t6, 0xde00
/* AEC9C8 80075828 244C0008 */  addiu $t4, $v0, 8
/* AEC9CC 8007582C AE4C02D0 */  sw    $t4, 0x2d0($s2)
/* AEC9D0 80075830 AC560004 */  sw    $s6, 4($v0)
/* AEC9D4 80075834 AC4E0000 */  sw    $t6, ($v0)
.L80075838:
/* AEC9D8 80075838 26940001 */  addiu $s4, $s4, 1
/* AEC9DC 8007583C 0014A400 */  sll   $s4, $s4, 0x10
/* AEC9E0 80075840 0014A403 */  sra   $s4, $s4, 0x10
/* AEC9E4 80075844 2A810003 */  slti  $at, $s4, 3
/* AEC9E8 80075848 1420FF2F */  bnez  $at, .L80075508
/* AEC9EC 8007584C 00000000 */   nop   
/* AEC9F0 80075850 3C068014 */  lui   $a2, %hi(D_8013C68C) # $a2, 0x8014
/* AEC9F4 80075854 24C6C68C */  addiu $a2, %lo(D_8013C68C) # addiu $a2, $a2, -0x3974
/* AEC9F8 80075858 27A40098 */  addiu $a0, $sp, 0x98
/* AEC9FC 8007585C 8E650000 */  lw    $a1, ($s3)
/* AECA00 80075860 0C031AD5 */  jal   Graph_CloseDisps
/* AECA04 80075864 24070D19 */   li    $a3, 3353
/* AECA08 80075868 8FBF0064 */  lw    $ra, 0x64($sp)
/* AECA0C 8007586C D7B40010 */  ldc1  $f20, 0x10($sp)
/* AECA10 80075870 D7B60018 */  ldc1  $f22, 0x18($sp)
/* AECA14 80075874 D7B80020 */  ldc1  $f24, 0x20($sp)
/* AECA18 80075878 D7BA0028 */  ldc1  $f26, 0x28($sp)
/* AECA1C 8007587C D7BC0030 */  ldc1  $f28, 0x30($sp)
/* AECA20 80075880 D7BE0038 */  ldc1  $f30, 0x38($sp)
/* AECA24 80075884 8FB00044 */  lw    $s0, 0x44($sp)
/* AECA28 80075888 8FB10048 */  lw    $s1, 0x48($sp)
/* AECA2C 8007588C 8FB2004C */  lw    $s2, 0x4c($sp)
/* AECA30 80075890 8FB30050 */  lw    $s3, 0x50($sp)
/* AECA34 80075894 8FB40054 */  lw    $s4, 0x54($sp)
/* AECA38 80075898 8FB50058 */  lw    $s5, 0x58($sp)
/* AECA3C 8007589C 8FB6005C */  lw    $s6, 0x5c($sp)
/* AECA40 800758A0 8FB70060 */  lw    $s7, 0x60($sp)
/* AECA44 800758A4 03E00008 */  jr    $ra
/* AECA48 800758A8 27BD00E0 */   addiu $sp, $sp, 0xe0


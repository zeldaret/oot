glabel func_800E5584
/* B5C724 800E5584 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B5C728 800E5588 AFBF001C */  sw    $ra, 0x1c($sp)
/* B5C72C 800E558C AFB00018 */  sw    $s0, 0x18($sp)
/* B5C730 800E5590 90830000 */  lbu   $v1, ($a0)
/* B5C734 800E5594 00808025 */  move  $s0, $a0
/* B5C738 800E5598 28610091 */  slti  $at, $v1, 0x91
/* B5C73C 800E559C 1420000A */  bnez  $at, .L800E55C8
/* B5C740 800E55A0 00601025 */   move  $v0, $v1
/* B5C744 800E55A4 244EFF20 */  addiu $t6, $v0, -0xe0
/* B5C748 800E55A8 2DC1001F */  sltiu $at, $t6, 0x1f
/* B5C74C 800E55AC 102000E5 */  beqz  $at, .L800E5944
/* B5C750 800E55B0 000E7080 */   sll   $t6, $t6, 2
/* B5C754 800E55B4 3C018015 */  lui   $at, %hi(jtbl_80149490)
/* B5C758 800E55B8 002E0821 */  addu  $at, $at, $t6
/* B5C75C 800E55BC 8C2E9490 */  lw    $t6, %lo(jtbl_80149490)($at)
/* B5C760 800E55C0 01C00008 */  jr    $t6
/* B5C764 800E55C4 00000000 */   nop
.L800E55C8:
/* B5C768 800E55C8 244FFF7F */  addiu $t7, $v0, -0x81
/* B5C76C 800E55CC 2DE10010 */  sltiu $at, $t7, 0x10
/* B5C770 800E55D0 102000DC */  beqz  $at, .L800E5944
/* B5C774 800E55D4 000F7880 */   sll   $t7, $t7, 2
/* B5C778 800E55D8 3C018015 */  lui   $at, %hi(jtbl_8014950C)
/* B5C77C 800E55DC 002F0821 */  addu  $at, $at, $t7
/* B5C780 800E55E0 8C2F950C */  lw    $t7, %lo(jtbl_8014950C)($at)
/* B5C784 800E55E4 01E00008 */  jr    $t7
/* B5C788 800E55E8 00000000 */   nop
glabel L800E55EC
/* B5C78C 800E55EC 92040002 */  lbu   $a0, 2($s0)
/* B5C790 800E55F0 0C038706 */  jal   func_800E1C18
/* B5C794 800E55F4 92050003 */   lbu   $a1, 3($s0)
/* B5C798 800E55F8 100000D3 */  b     .L800E5948
/* B5C79C 800E55FC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5600
/* B5C7A0 800E5600 92040001 */  lbu   $a0, 1($s0)
/* B5C7A4 800E5604 92050002 */  lbu   $a1, 2($s0)
/* B5C7A8 800E5608 0C038835 */  jal   func_800E20D4
/* B5C7AC 800E560C 92060003 */   lbu   $a2, 3($s0)
/* B5C7B0 800E5610 92040001 */  lbu   $a0, 1($s0)
/* B5C7B4 800E5614 0C03966B */  jal   func_800E59AC
/* B5C7B8 800E5618 8E050004 */   lw    $a1, 4($s0)
/* B5C7BC 800E561C 100000CA */  b     .L800E5948
/* B5C7C0 800E5620 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5624
/* B5C7C4 800E5624 92040001 */  lbu   $a0, 1($s0)
/* B5C7C8 800E5628 92050002 */  lbu   $a1, 2($s0)
/* B5C7CC 800E562C 0C038849 */  jal   func_800E2124
/* B5C7D0 800E5630 8E060004 */   lw    $a2, 4($s0)
/* B5C7D4 800E5634 100000C4 */  b     .L800E5948
/* B5C7D8 800E5638 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E563C
/* B5C7DC 800E563C 92020001 */  lbu   $v0, 1($s0)
/* B5C7E0 800E5640 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5C7E4 800E5644 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5C7E8 800E5648 0002C080 */  sll   $t8, $v0, 2
/* B5C7EC 800E564C 0302C023 */  subu  $t8, $t8, $v0
/* B5C7F0 800E5650 0018C080 */  sll   $t8, $t8, 2
/* B5C7F4 800E5654 0302C023 */  subu  $t8, $t8, $v0
/* B5C7F8 800E5658 0018C140 */  sll   $t8, $t8, 5
/* B5C7FC 800E565C 00F81821 */  addu  $v1, $a3, $t8
/* B5C800 800E5660 8C793530 */  lw    $t9, 0x3530($v1)
/* B5C804 800E5664 001947C2 */  srl   $t0, $t9, 0x1f
/* B5C808 800E5668 510000B7 */  beql  $t0, $zero, .L800E5948
/* B5C80C 800E566C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B5C810 800E5670 8E050004 */  lw    $a1, 4($s0)
/* B5C814 800E5674 14A00005 */  bnez  $a1, .L800E568C
/* B5C818 800E5678 00000000 */   nop
/* B5C81C 800E567C 0C03A6D1 */  jal   func_800E9B44
/* B5C820 800E5680 24643530 */   addiu $a0, $v1, 0x3530
/* B5C824 800E5684 100000B0 */  b     .L800E5948
/* B5C828 800E5688 8FBF001C */   lw    $ra, 0x1c($sp)
.L800E568C:
/* B5C82C 800E568C 0C039656 */  jal   func_800E5958
/* B5C830 800E5690 00402025 */   move  $a0, $v0
/* B5C834 800E5694 100000AC */  b     .L800E5948
/* B5C838 800E5698 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E569C
/* B5C83C 800E569C 8E090004 */  lw    $t1, 4($s0)
/* B5C840 800E56A0 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5C844 800E56A4 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5C848 800E56A8 100000A6 */  b     .L800E5944
/* B5C84C 800E56AC A0E9289A */   sb    $t1, 0x289a($a3)
glabel L800E56B0
/* B5C850 800E56B0 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5C854 800E56B4 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5C858 800E56B8 84EA285C */  lh    $t2, 0x285c($a3)
/* B5C85C 800E56BC 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5C860 800E56C0 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
/* B5C864 800E56C4 1940009F */  blez  $t2, .L800E5944
/* B5C868 800E56C8 00002825 */   move  $a1, $zero
/* B5C86C 800E56CC 920C3530 */  lbu   $t4, 0x3530($s0)
.L800E56D0:
/* B5C870 800E56D0 24A50001 */  addiu $a1, $a1, 1
/* B5C874 800E56D4 26100160 */  addiu $s0, $s0, 0x160
/* B5C878 800E56D8 358F0020 */  ori   $t7, $t4, 0x20
/* B5C87C 800E56DC A20F33D0 */  sb    $t7, 0x33d0($s0)
/* B5C880 800E56E0 35F80004 */  ori   $t8, $t7, 4
/* B5C884 800E56E4 A21833D0 */  sb    $t8, 0x33d0($s0)
/* B5C888 800E56E8 84F9285C */  lh    $t9, 0x285c($a3)
/* B5C88C 800E56EC 00B9082A */  slt   $at, $a1, $t9
/* B5C890 800E56F0 5420FFF7 */  bnezl $at, .L800E56D0
/* B5C894 800E56F4 920C3530 */   lbu   $t4, 0x3530($s0)
/* B5C898 800E56F8 10000093 */  b     .L800E5948
/* B5C89C 800E56FC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5700
/* B5C8A0 800E5700 8E080004 */  lw    $t0, 4($s0)
/* B5C8A4 800E5704 24010001 */  li    $at, 1
/* B5C8A8 800E5708 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5C8AC 800E570C 1501001E */  bne   $t0, $at, .L800E5788
/* B5C8B0 800E5710 24E7F180 */   addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5C8B4 800E5714 8CE62894 */  lw    $a2, 0x2894($a3)
/* B5C8B8 800E5718 00002825 */  move  $a1, $zero
/* B5C8BC 800E571C 00002025 */  move  $a0, $zero
/* B5C8C0 800E5720 18C00019 */  blez  $a2, .L800E5788
/* B5C8C4 800E5724 00000000 */   nop
.L800E5728:
/* B5C8C8 800E5728 8CE9352C */  lw    $t1, 0x352c($a3)
/* B5C8CC 800E572C 24A50001 */  addiu $a1, $a1, 1
/* B5C8D0 800E5730 00891821 */  addu  $v1, $a0, $t1
/* B5C8D4 800E5734 8C6A00C0 */  lw    $t2, 0xc0($v1)
/* B5C8D8 800E5738 000A5FC2 */  srl   $t3, $t2, 0x1f
/* B5C8DC 800E573C 51600010 */  beql  $t3, $zero, .L800E5780
/* B5C8E0 800E5740 00A6082A */   slt   $at, $a1, $a2
/* B5C8E4 800E5744 906C0034 */  lbu   $t4, 0x34($v1)
/* B5C8E8 800E5748 5580000D */  bnezl $t4, .L800E5780
/* B5C8EC 800E574C 00A6082A */   slt   $at, $a1, $a2
/* B5C8F0 800E5750 8C6D0044 */  lw    $t5, 0x44($v1)
/* B5C8F4 800E5754 246200C0 */  addiu $v0, $v1, 0xc0
/* B5C8F8 800E5758 8DAE0050 */  lw    $t6, 0x50($t5)
/* B5C8FC 800E575C 91CF0003 */  lbu   $t7, 3($t6)
/* B5C900 800E5760 31F80008 */  andi  $t8, $t7, 8
/* B5C904 800E5764 53000006 */  beql  $t8, $zero, .L800E5780
/* B5C908 800E5768 00A6082A */   slt   $at, $a1, $a2
/* B5C90C 800E576C 90480000 */  lbu   $t0, ($v0)
/* B5C910 800E5770 35090020 */  ori   $t1, $t0, 0x20
/* B5C914 800E5774 A0490000 */  sb    $t1, ($v0)
/* B5C918 800E5778 8CE62894 */  lw    $a2, 0x2894($a3)
/* B5C91C 800E577C 00A6082A */  slt   $at, $a1, $a2
.L800E5780:
/* B5C920 800E5780 1420FFE9 */  bnez  $at, .L800E5728
/* B5C924 800E5784 248400E0 */   addiu $a0, $a0, 0xe0
.L800E5788:
/* B5C928 800E5788 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5C92C 800E578C 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5C930 800E5790 84EA285C */  lh    $t2, 0x285c($a3)
/* B5C934 800E5794 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5C938 800E5798 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
/* B5C93C 800E579C 19400069 */  blez  $t2, .L800E5944
/* B5C940 800E57A0 00002825 */   move  $a1, $zero
/* B5C944 800E57A4 920B3530 */  lbu   $t3, 0x3530($s0)
.L800E57A8:
/* B5C948 800E57A8 24A50001 */  addiu $a1, $a1, 1
/* B5C94C 800E57AC 26100160 */  addiu $s0, $s0, 0x160
/* B5C950 800E57B0 316EFFDF */  andi  $t6, $t3, 0xffdf
/* B5C954 800E57B4 A20E33D0 */  sb    $t6, 0x33d0($s0)
/* B5C958 800E57B8 35CF0004 */  ori   $t7, $t6, 4
/* B5C95C 800E57BC A20F33D0 */  sb    $t7, 0x33d0($s0)
/* B5C960 800E57C0 84F8285C */  lh    $t8, 0x285c($a3)
/* B5C964 800E57C4 00B8082A */  slt   $at, $a1, $t8
/* B5C968 800E57C8 5420FFF7 */  bnezl $at, .L800E57A8
/* B5C96C 800E57CC 920B3530 */   lbu   $t3, 0x3530($s0)
/* B5C970 800E57D0 1000005D */  b     .L800E5948
/* B5C974 800E57D4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E57D8
/* B5C978 800E57D8 92040001 */  lbu   $a0, 1($s0)
/* B5C97C 800E57DC 92050002 */  lbu   $a1, 2($s0)
/* B5C980 800E57E0 0C038759 */  jal   func_800E1D64
/* B5C984 800E57E4 92060003 */   lbu   $a2, 3($s0)
/* B5C988 800E57E8 10000057 */  b     .L800E5948
/* B5C98C 800E57EC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E57F0
/* B5C990 800E57F0 3C078017 */  lui   $a3, %hi(D_80170FA0) # $a3, 0x8017
/* B5C994 800E57F4 24E70FA0 */  addiu $a3, %lo(D_80170FA0) # addiu $a3, $a3, 0xfa0
/* B5C998 800E57F8 92040001 */  lbu   $a0, 1($s0)
/* B5C99C 800E57FC 92050002 */  lbu   $a1, 2($s0)
/* B5C9A0 800E5800 0C0387AC */  jal   func_800E1EB0
/* B5C9A4 800E5804 92060003 */   lbu   $a2, 3($s0)
/* B5C9A8 800E5808 1000004F */  b     .L800E5948
/* B5C9AC 800E580C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5810
/* B5C9B0 800E5810 3C078017 */  lui   $a3, %hi(D_80170FA0) # $a3, 0x8017
/* B5C9B4 800E5814 24E70FA0 */  addiu $a3, %lo(D_80170FA0) # addiu $a3, $a3, 0xfa0
/* B5C9B8 800E5818 92040001 */  lbu   $a0, 1($s0)
/* B5C9BC 800E581C 92050002 */  lbu   $a1, 2($s0)
/* B5C9C0 800E5820 0C0387BD */  jal   func_800E1EF4
/* B5C9C4 800E5824 92060003 */   lbu   $a2, 3($s0)
/* B5C9C8 800E5828 10000047 */  b     .L800E5948
/* B5C9CC 800E582C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5830
/* B5C9D0 800E5830 3C078017 */  lui   $a3, %hi(D_80170FA0) # $a3, 0x8017
/* B5C9D4 800E5834 24E70FA0 */  addiu $a3, %lo(D_80170FA0) # addiu $a3, $a3, 0xfa0
/* B5C9D8 800E5838 92040001 */  lbu   $a0, 1($s0)
/* B5C9DC 800E583C 92050002 */  lbu   $a1, 2($s0)
/* B5C9E0 800E5840 0C03879B */  jal   func_800E1E6C
/* B5C9E4 800E5844 92060003 */   lbu   $a2, 3($s0)
/* B5C9E8 800E5848 1000003F */  b     .L800E5948
/* B5C9EC 800E584C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5850
/* B5C9F0 800E5850 0C0387DF */  jal   func_800E1F7C
/* B5C9F4 800E5854 92040002 */   lbu   $a0, 2($s0)
/* B5C9F8 800E5858 1000003B */  b     .L800E5948
/* B5C9FC 800E585C 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E5860
/* B5CA00 800E5860 92080001 */  lbu   $t0, 1($s0)
/* B5CA04 800E5864 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5CA08 800E5868 96190004 */  lhu   $t9, 4($s0)
/* B5CA0C 800E586C 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5CA10 800E5870 00084840 */  sll   $t1, $t0, 1
/* B5CA14 800E5874 00E95021 */  addu  $t2, $a3, $t1
/* B5CA18 800E5878 10000032 */  b     .L800E5944
/* B5CA1C 800E587C A5595BDC */   sh    $t9, 0x5bdc($t2)
glabel L800E5880
/* B5CA20 800E5880 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5CA24 800E5884 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5CA28 800E5888 240B0005 */  li    $t3, 5
/* B5CA2C 800E588C A0EB3518 */  sb    $t3, 0x3518($a3)
/* B5CA30 800E5890 8E0C0004 */  lw    $t4, 4($s0)
/* B5CA34 800E5894 1000002B */  b     .L800E5944
/* B5CA38 800E5898 A0EC3519 */   sb    $t4, 0x3519($a3)
glabel L800E589C
/* B5CA3C 800E589C 8E0D0004 */  lw    $t5, 4($s0)
/* B5CA40 800E58A0 3C018017 */  lui   $at, %hi(D_801755D0) # $at, 0x8017
/* B5CA44 800E58A4 10000027 */  b     .L800E5944
/* B5CA48 800E58A8 AC2D55D0 */   sw    $t5, %lo(D_801755D0)($at)
glabel L800E58AC
/* B5CA4C 800E58AC 2464FF20 */  addiu $a0, $v1, -0xe0
/* B5CA50 800E58B0 92050001 */  lbu   $a1, 1($s0)
/* B5CA54 800E58B4 92060002 */  lbu   $a2, 2($s0)
/* B5CA58 800E58B8 0C039DD1 */  jal   func_800E7744
/* B5CA5C 800E58BC 8E070004 */   lw    $a3, 4($s0)
/* B5CA60 800E58C0 10000021 */  b     .L800E5948
/* B5CA64 800E58C4 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E58C8
/* B5CA68 800E58C8 8E0E0004 */  lw    $t6, 4($s0)
/* B5CA6C 800E58CC 24010001 */  li    $at, 1
/* B5CA70 800E58D0 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5CA74 800E58D4 15C10015 */  bne   $t6, $at, .L800E592C
/* B5CA78 800E58D8 AFAE0024 */   sw    $t6, 0x24($sp)
/* B5CA7C 800E58DC 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5CA80 800E58E0 84E2285C */  lh    $v0, 0x285c($a3)
/* B5CA84 800E58E4 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B5CA88 800E58E8 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
/* B5CA8C 800E58EC 1840000F */  blez  $v0, .L800E592C
/* B5CA90 800E58F0 00002825 */   move  $a1, $zero
.L800E58F4:
/* B5CA94 800E58F4 8E183530 */  lw    $t8, 0x3530($s0)
/* B5CA98 800E58F8 26043530 */  addiu $a0, $s0, 0x3530
/* B5CA9C 800E58FC 001847C2 */  srl   $t0, $t8, 0x1f
/* B5CAA0 800E5900 51000007 */  beql  $t0, $zero, .L800E5920
/* B5CAA4 800E5904 24A50001 */   addiu $a1, $a1, 1
/* B5CAA8 800E5908 0C03A6D1 */  jal   func_800E9B44
/* B5CAAC 800E590C AFA50034 */   sw    $a1, 0x34($sp)
/* B5CAB0 800E5910 3C028017 */  lui   $v0, %hi(D_801719DC) # $v0, 0x8017
/* B5CAB4 800E5914 844219DC */  lh    $v0, %lo(D_801719DC)($v0)
/* B5CAB8 800E5918 8FA50034 */  lw    $a1, 0x34($sp)
/* B5CABC 800E591C 24A50001 */  addiu $a1, $a1, 1
.L800E5920:
/* B5CAC0 800E5920 00A2082A */  slt   $at, $a1, $v0
/* B5CAC4 800E5924 1420FFF3 */  bnez  $at, .L800E58F4
/* B5CAC8 800E5928 26100160 */   addiu $s0, $s0, 0x160
.L800E592C:
/* B5CACC 800E592C 0C0399B0 */  jal   func_800E66C0
/* B5CAD0 800E5930 8FA40024 */   lw    $a0, 0x24($sp)
/* B5CAD4 800E5934 10000004 */  b     .L800E5948
/* B5CAD8 800E5938 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L800E593C
/* B5CADC 800E593C 0C03792C */  jal   func_800DE4B0
/* B5CAE0 800E5940 8E040004 */   lw    $a0, 4($s0)
glabel L800E5944
.L800E5944:
/* B5CAE4 800E5944 8FBF001C */  lw    $ra, 0x1c($sp)
.L800E5948:
/* B5CAE8 800E5948 8FB00018 */  lw    $s0, 0x18($sp)
/* B5CAEC 800E594C 27BD0038 */  addiu $sp, $sp, 0x38
/* B5CAF0 800E5950 03E00008 */  jr    $ra
/* B5CAF4 800E5954 00000000 */   nop


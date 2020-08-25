.late_rodata
glabel D_8013A19C
    .float 0.1

glabel D_8013A1A0
    .float 0.01

glabel D_8013A1A4
    .float 0.01

glabel D_8013A1A8
    .float 0.01

glabel D_8013A1AC
    .float 0.01

.text
glabel Camera_Subj3
/* AC763C 8005049C 27BDFF50 */  addiu $sp, $sp, -0xb0
/* AC7640 800504A0 AFB10018 */  sw    $s1, 0x18($sp)
/* AC7644 800504A4 AFB00014 */  sw    $s0, 0x14($sp)
/* AC7648 800504A8 00808025 */  move  $s0, $a0
/* AC764C 800504AC 27B10060 */  addiu $s1, $sp, 0x60
/* AC7650 800504B0 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC7654 800504B4 8E050090 */  lw    $a1, 0x90($s0)
/* AC7658 800504B8 0C00BBB9 */  jal   func_8002EEE4
/* AC765C 800504BC 02202025 */   move  $a0, $s1
/* AC7660 800504C0 0C00B721 */  jal   Player_GetCameraYOffset
/* AC7664 800504C4 8E040090 */   lw    $a0, 0x90($s0)
/* AC7668 800504C8 E7A0003C */  swc1  $f0, 0x3c($sp)
/* AC766C 800504CC 8E03008C */  lw    $v1, 0x8c($s0)
/* AC7670 800504D0 8C6E01DC */  lw    $t6, 0x1dc($v1)
/* AC7674 800504D4 15C00006 */  bnez  $t6, .L800504F0
/* AC7678 800504D8 00000000 */   nop
/* AC767C 800504DC 860F0164 */  lh    $t7, 0x164($s0)
/* AC7680 800504E0 24020001 */  li    $v0, 1
/* AC7684 800504E4 35F80050 */  ori   $t8, $t7, 0x50
/* AC7688 800504E8 10000189 */  b     .L80050B10
/* AC768C 800504EC AC7801DC */   sw    $t8, 0x1dc($v1)
.L800504F0:
/* AC7690 800504F0 0C010EAF */  jal   func_80043ABC
/* AC7694 800504F4 02002025 */   move  $a0, $s0
/* AC7698 800504F8 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC769C 800504FC 02002025 */   move  $a0, $s0
/* AC76A0 80050500 86190142 */  lh    $t9, 0x142($s0)
/* AC76A4 80050504 3C0B8012 */  lui   $t3, %hi(sCameraSettings+4)
/* AC76A8 80050508 860C0144 */  lh    $t4, 0x144($s0)
/* AC76AC 8005050C 001950C0 */  sll   $t2, $t9, 3
/* AC76B0 80050510 016A5821 */  addu  $t3, $t3, $t2
/* AC76B4 80050514 8D6BD068 */  lw    $t3, %lo(sCameraSettings+4)($t3)
/* AC76B8 80050518 000C68C0 */  sll   $t5, $t4, 3
/* AC76BC 8005051C 3C018014 */  lui   $at, %hi(D_8013A19C)
/* AC76C0 80050520 016D7021 */  addu  $t6, $t3, $t5
/* AC76C4 80050524 8DC30004 */  lw    $v1, 4($t6)
/* AC76C8 80050528 C420A19C */  lwc1  $f0, %lo(D_8013A19C)($at)
/* AC76CC 8005052C 3C018014 */  lui   $at, %hi(D_8013A1A0)
/* AC76D0 80050530 846F0000 */  lh    $t7, ($v1)
/* AC76D4 80050534 C428A1A0 */  lwc1  $f8, %lo(D_8013A1A0)($at)
/* AC76D8 80050538 27A50098 */  addiu $a1, $sp, 0x98
/* AC76DC 8005053C 448F2000 */  mtc1  $t7, $f4
/* AC76E0 80050540 27A4008C */  addiu $a0, $sp, 0x8c
/* AC76E4 80050544 27A60084 */  addiu $a2, $sp, 0x84
/* AC76E8 80050548 468021A0 */  cvt.s.w $f6, $f4
/* AC76EC 8005054C C7A4003C */  lwc1  $f4, 0x3c($sp)
/* AC76F0 80050550 24630020 */  addiu $v1, $v1, 0x20
/* AC76F4 80050554 46083282 */  mul.s $f10, $f6, $f8
/* AC76F8 80050558 00000000 */  nop
/* AC76FC 8005055C 46045182 */  mul.s $f6, $f10, $f4
/* AC7700 80050560 E6060000 */  swc1  $f6, ($s0)
/* AC7704 80050564 8478FFE4 */  lh    $t8, -0x1c($v1)
/* AC7708 80050568 44984000 */  mtc1  $t8, $f8
/* AC770C 8005056C 00000000 */  nop
/* AC7710 80050570 468042A0 */  cvt.s.w $f10, $f8
/* AC7714 80050574 E60A0004 */  swc1  $f10, 4($s0)
/* AC7718 80050578 8479FFE8 */  lh    $t9, -0x18($v1)
/* AC771C 8005057C 44992000 */  mtc1  $t9, $f4
/* AC7720 80050580 00000000 */  nop
/* AC7724 80050584 468021A0 */  cvt.s.w $f6, $f4
/* AC7728 80050588 E6060008 */  swc1  $f6, 8($s0)
/* AC772C 8005058C 846AFFEC */  lh    $t2, -0x14($v1)
/* AC7730 80050590 448A4000 */  mtc1  $t2, $f8
/* AC7734 80050594 00000000 */  nop
/* AC7738 80050598 468042A0 */  cvt.s.w $f10, $f8
/* AC773C 8005059C E60A000C */  swc1  $f10, 0xc($s0)
/* AC7740 800505A0 846CFFF0 */  lh    $t4, -0x10($v1)
/* AC7744 800505A4 448C2000 */  mtc1  $t4, $f4
/* AC7748 800505A8 00000000 */  nop
/* AC774C 800505AC 468021A0 */  cvt.s.w $f6, $f4
/* AC7750 800505B0 46003202 */  mul.s $f8, $f6, $f0
/* AC7754 800505B4 E6080010 */  swc1  $f8, 0x10($s0)
/* AC7758 800505B8 846BFFF4 */  lh    $t3, -0xc($v1)
/* AC775C 800505BC 448B5000 */  mtc1  $t3, $f10
/* AC7760 800505C0 00000000 */  nop
/* AC7764 800505C4 46805120 */  cvt.s.w $f4, $f10
/* AC7768 800505C8 46002182 */  mul.s $f6, $f4, $f0
/* AC776C 800505CC E6060014 */  swc1  $f6, 0x14($s0)
/* AC7770 800505D0 846DFFF8 */  lh    $t5, -8($v1)
/* AC7774 800505D4 448D4000 */  mtc1  $t5, $f8
/* AC7778 800505D8 00000000 */  nop
/* AC777C 800505DC 468042A0 */  cvt.s.w $f10, $f8
/* AC7780 800505E0 46005102 */  mul.s $f4, $f10, $f0
/* AC7784 800505E4 C60A0008 */  lwc1  $f10, 8($s0)
/* AC7788 800505E8 E6040018 */  swc1  $f4, 0x18($s0)
/* AC778C 800505EC 846EFFFC */  lh    $t6, -4($v1)
/* AC7790 800505F0 448E3000 */  mtc1  $t6, $f6
/* AC7794 800505F4 00000000 */  nop
/* AC7798 800505F8 46803220 */  cvt.s.w $f8, $f6
/* AC779C 800505FC E608001C */  swc1  $f8, 0x1c($s0)
/* AC77A0 80050600 846F0000 */  lh    $t7, ($v1)
/* AC77A4 80050604 A60F0020 */  sh    $t7, 0x20($s0)
/* AC77A8 80050608 87B8006E */  lh    $t8, 0x6e($sp)
/* AC77AC 8005060C 87AA006C */  lh    $t2, 0x6c($sp)
/* AC77B0 80050610 E7AA0084 */  swc1  $f10, 0x84($sp)
/* AC77B4 80050614 27198001 */  addiu $t9, $t8, -0x7fff
/* AC77B8 80050618 A7B9008A */  sh    $t9, 0x8a($sp)
/* AC77BC 8005061C A7AA0088 */  sh    $t2, 0x88($sp)
/* AC77C0 80050620 8E2B0000 */  lw    $t3, ($s1)
/* AC77C4 80050624 8E2C0004 */  lw    $t4, 4($s1)
/* AC77C8 80050628 ACAB0000 */  sw    $t3, ($a1)
/* AC77CC 8005062C 8E2B0008 */  lw    $t3, 8($s1)
/* AC77D0 80050630 ACAC0004 */  sw    $t4, 4($a1)
/* AC77D4 80050634 ACAB0008 */  sw    $t3, 8($a1)
/* AC77D8 80050638 C7A4009C */  lwc1  $f4, 0x9c($sp)
/* AC77DC 8005063C C6060000 */  lwc1  $f6, ($s0)
/* AC77E0 80050640 46062200 */  add.s $f8, $f4, $f6
/* AC77E4 80050644 0C010F0A */  jal   func_80043C28
/* AC77E8 80050648 E7A8009C */   swc1  $f8, 0x9c($sp)
/* AC77EC 8005064C 26110050 */  addiu $s1, $s0, 0x50
/* AC77F0 80050650 2606005C */  addiu $a2, $s0, 0x5c
/* AC77F4 80050654 AFA60038 */  sw    $a2, 0x38($sp)
/* AC77F8 80050658 02202825 */  move  $a1, $s1
/* AC77FC 8005065C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC7800 80050660 27A4007C */   addiu $a0, $sp, 0x7c
/* AC7804 80050664 860D0020 */  lh    $t5, 0x20($s0)
/* AC7808 80050668 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* AC780C 8005066C C7AA007C */  lwc1  $f10, 0x7c($sp)
/* AC7810 80050670 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* AC7814 80050674 8603015E */  lh    $v1, 0x15e($s0)
/* AC7818 80050678 2401000A */  li    $at, 10
/* AC781C 8005067C 50600005 */  beql  $v1, $zero, .L80050694
/* AC7820 80050680 26030024 */   addiu $v1, $s0, 0x24
/* AC7824 80050684 10610002 */  beq   $v1, $at, .L80050690
/* AC7828 80050688 24010014 */   li    $at, 20
/* AC782C 8005068C 14610014 */  bne   $v1, $at, .L800506E0
.L80050690:
/* AC7830 80050690 26030024 */   addiu $v1, $s0, 0x24
.L80050694:
/* AC7834 80050694 E46A0000 */  swc1  $f10, ($v1)
/* AC7838 80050698 87AE0082 */  lh    $t6, 0x82($sp)
/* AC783C 8005069C 3C188016 */  lui   $t8, %hi(gGameInfo) # $t8, 0x8016
/* AC7840 800506A0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC7844 800506A4 A46E0004 */  sh    $t6, 4($v1)
/* AC7848 800506A8 87AF0080 */  lh    $t7, 0x80($sp)
/* AC784C 800506AC 44813000 */  mtc1  $at, $f6
/* AC7850 800506B0 A46F0006 */  sh    $t7, 6($v1)
/* AC7854 800506B4 8F18FA90 */  lw    $t8, %lo(gGameInfo)($t8)
/* AC7858 800506B8 871901C2 */  lh    $t9, 0x1c2($t8)
/* AC785C 800506BC A4790008 */  sh    $t9, 8($v1)
/* AC7860 800506C0 C6040008 */  lwc1  $f4, 8($s0)
/* AC7864 800506C4 860A015E */  lh    $t2, 0x15e($s0)
/* AC7868 800506C8 C6080008 */  lwc1  $f8, 8($s0)
/* AC786C 800506CC E60400DC */  swc1  $f4, 0xdc($s0)
/* AC7870 800506D0 254C0001 */  addiu $t4, $t2, 1
/* AC7874 800506D4 A60C015E */  sh    $t4, 0x15e($s0)
/* AC7878 800506D8 E60600C0 */  swc1  $f6, 0xc0($s0)
/* AC787C 800506DC E60800DC */  swc1  $f8, 0xdc($s0)
.L800506E0:
/* AC7880 800506E0 26030024 */  addiu $v1, $s0, 0x24
/* AC7884 800506E4 84640008 */  lh    $a0, 8($v1)
/* AC7888 800506E8 C4720000 */  lwc1  $f18, ($v1)
/* AC788C 800506EC 84650004 */  lh    $a1, 4($v1)
/* AC7890 800506F0 1080009D */  beqz  $a0, .L80050968
/* AC7894 800506F4 84680006 */   lh    $t0, 6($v1)
/* AC7898 800506F8 44842000 */  mtc1  $a0, $f4
/* AC789C 800506FC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC78A0 80050700 44815000 */  mtc1  $at, $f10
/* AC78A4 80050704 468021A0 */  cvt.s.w $f6, $f4
/* AC78A8 80050708 C6220000 */  lwc1  $f2, ($s1)
/* AC78AC 8005070C C7A80098 */  lwc1  $f8, 0x98($sp)
/* AC78B0 80050710 C62C0004 */  lwc1  $f12, 4($s1)
/* AC78B4 80050714 C62E0008 */  lwc1  $f14, 8($s1)
/* AC78B8 80050718 46024101 */  sub.s $f4, $f8, $f2
/* AC78BC 8005071C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC78C0 80050720 3C073F80 */  li    $a3, 0x3F800000 # 0.000000
/* AC78C4 80050724 46065003 */  div.s $f0, $f10, $f6
/* AC78C8 80050728 46002282 */  mul.s $f10, $f4, $f0
/* AC78CC 8005072C 460A1180 */  add.s $f6, $f2, $f10
/* AC78D0 80050730 E6260000 */  swc1  $f6, ($s1)
/* AC78D4 80050734 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC78D8 80050738 460C4101 */  sub.s $f4, $f8, $f12
/* AC78DC 8005073C 46002282 */  mul.s $f10, $f4, $f0
/* AC78E0 80050740 460A6180 */  add.s $f6, $f12, $f10
/* AC78E4 80050744 E6260004 */  swc1  $f6, 4($s1)
/* AC78E8 80050748 C7A800A0 */  lwc1  $f8, 0xa0($sp)
/* AC78EC 8005074C 460E4101 */  sub.s $f4, $f8, $f14
/* AC78F0 80050750 44814000 */  mtc1  $at, $f8
/* AC78F4 80050754 3C018014 */  lui   $at, %hi(D_8013A1A4)
/* AC78F8 80050758 46002282 */  mul.s $f10, $f4, $f0
/* AC78FC 8005075C 460A7180 */  add.s $f6, $f14, $f10
/* AC7900 80050760 E6260008 */  swc1  $f6, 8($s1)
/* AC7904 80050764 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC7908 80050768 87AD008A */  lh    $t5, 0x8a($sp)
/* AC790C 8005076C C7A60084 */  lwc1  $f6, 0x84($sp)
/* AC7910 80050770 844B01C2 */  lh    $t3, 0x1c2($v0)
/* AC7914 80050774 00AD7023 */  subu  $t6, $a1, $t5
/* AC7918 80050778 000E7C00 */  sll   $t7, $t6, 0x10
/* AC791C 8005077C 448B2000 */  mtc1  $t3, $f4
/* AC7920 80050780 000FC403 */  sra   $t8, $t7, 0x10
/* AC7924 80050784 87AA0088 */  lh    $t2, 0x88($sp)
/* AC7928 80050788 468022A0 */  cvt.s.w $f10, $f4
/* AC792C 8005078C C7AE007C */  lwc1  $f14, 0x7c($sp)
/* AC7930 80050790 010A6023 */  subu  $t4, $t0, $t2
/* AC7934 80050794 000C5C00 */  sll   $t3, $t4, 0x10
/* AC7938 80050798 000B6C03 */  sra   $t5, $t3, 0x10
/* AC793C 8005079C 46069101 */  sub.s $f4, $f18, $f6
/* AC7940 800507A0 460A4003 */  div.s $f0, $f8, $f10
/* AC7944 800507A4 44984000 */  mtc1  $t8, $f8
/* AC7948 800507A8 00000000 */  nop
/* AC794C 800507AC 468042A0 */  cvt.s.w $f10, $f8
/* AC7950 800507B0 46002402 */  mul.s $f16, $f4, $f0
/* AC7954 800507B4 00000000 */  nop
/* AC7958 800507B8 46005102 */  mul.s $f4, $f10, $f0
/* AC795C 800507BC 448D5000 */  mtc1  $t5, $f10
/* AC7960 800507C0 4600220D */  trunc.w.s $f8, $f4
/* AC7964 800507C4 46805120 */  cvt.s.w $f4, $f10
/* AC7968 800507C8 44094000 */  mfc1  $t1, $f8
/* AC796C 800507CC 00000000 */  nop
/* AC7970 800507D0 00094C00 */  sll   $t1, $t1, 0x10
/* AC7974 800507D4 00094C03 */  sra   $t1, $t1, 0x10
/* AC7978 800507D8 46002202 */  mul.s $f8, $f4, $f0
/* AC797C 800507DC 4600428D */  trunc.w.s $f10, $f8
/* AC7980 800507E0 440F5000 */  mfc1  $t7, $f10
/* AC7984 800507E4 00000000 */  nop
/* AC7988 800507E8 A7AF0050 */  sh    $t7, 0x50($sp)
/* AC798C 800507EC 84780008 */  lh    $t8, 8($v1)
/* AC7990 800507F0 845901CC */  lh    $t9, 0x1cc($v0)
/* AC7994 800507F4 A7A90052 */  sh    $t1, 0x52($sp)
/* AC7998 800507F8 44982000 */  mtc1  $t8, $f4
/* AC799C 800507FC AFA3002C */  sw    $v1, 0x2c($sp)
/* AC79A0 80050800 46802220 */  cvt.s.w $f8, $f4
/* AC79A4 80050804 44992000 */  mtc1  $t9, $f4
/* AC79A8 80050808 46104282 */  mul.s $f10, $f8, $f16
/* AC79AC 8005080C 46802220 */  cvt.s.w $f8, $f4
/* AC79B0 80050810 46065300 */  add.s $f12, $f10, $f6
/* AC79B4 80050814 C42AA1A4 */  lwc1  $f10, %lo(D_8013A1A4)($at)
/* AC79B8 80050818 460A4182 */  mul.s $f6, $f8, $f10
/* AC79BC 8005081C 44063000 */  mfc1  $a2, $f6
/* AC79C0 80050820 0C010E27 */  jal   func_8004389C
/* AC79C4 80050824 00000000 */   nop
/* AC79C8 80050828 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* AC79CC 8005082C 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* AC79D0 80050830 E7A0007C */  swc1  $f0, 0x7c($sp)
/* AC79D4 80050834 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC79D8 80050838 85AE01CC */  lh    $t6, 0x1cc($t5)
/* AC79DC 8005083C 87A90052 */  lh    $t1, 0x52($sp)
/* AC79E0 80050840 846C0008 */  lh    $t4, 8($v1)
/* AC79E4 80050844 448E2000 */  mtc1  $t6, $f4
/* AC79E8 80050848 3C018014 */  lui   $at, %hi(D_8013A1A8)
/* AC79EC 8005084C 012C0019 */  multu $t1, $t4
/* AC79F0 80050850 46802220 */  cvt.s.w $f8, $f4
/* AC79F4 80050854 C42AA1A8 */  lwc1  $f10, %lo(D_8013A1A8)($at)
/* AC79F8 80050858 87AA008A */  lh    $t2, 0x8a($sp)
/* AC79FC 8005085C 87A50082 */  lh    $a1, 0x82($sp)
/* AC7A00 80050860 2407000A */  li    $a3, 10
/* AC7A04 80050864 460A4182 */  mul.s $f6, $f8, $f10
/* AC7A08 80050868 00005812 */  mflo  $t3
/* AC7A0C 8005086C 014B2021 */  addu  $a0, $t2, $t3
/* AC7A10 80050870 00042400 */  sll   $a0, $a0, 0x10
/* AC7A14 80050874 00042403 */  sra   $a0, $a0, 0x10
/* AC7A18 80050878 44063000 */  mfc1  $a2, $f6
/* AC7A1C 8005087C 0C010E47 */  jal   func_8004391C
/* AC7A20 80050880 00000000 */   nop
/* AC7A24 80050884 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC7A28 80050888 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC7A2C 8005088C A7A20082 */  sh    $v0, 0x82($sp)
/* AC7A30 80050890 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC7A34 80050894 854B01CC */  lh    $t3, 0x1cc($t2)
/* AC7A38 80050898 87AF0050 */  lh    $t7, 0x50($sp)
/* AC7A3C 8005089C 84780008 */  lh    $t8, 8($v1)
/* AC7A40 800508A0 448B2000 */  mtc1  $t3, $f4
/* AC7A44 800508A4 3C018014 */  lui   $at, %hi(D_8013A1AC)
/* AC7A48 800508A8 01F80019 */  multu $t7, $t8
/* AC7A4C 800508AC 46802220 */  cvt.s.w $f8, $f4
/* AC7A50 800508B0 C42AA1AC */  lwc1  $f10, %lo(D_8013A1AC)($at)
/* AC7A54 800508B4 87AC0088 */  lh    $t4, 0x88($sp)
/* AC7A58 800508B8 87A50080 */  lh    $a1, 0x80($sp)
/* AC7A5C 800508BC 2407000A */  li    $a3, 10
/* AC7A60 800508C0 460A4182 */  mul.s $f6, $f8, $f10
/* AC7A64 800508C4 0000C812 */  mflo  $t9
/* AC7A68 800508C8 01992021 */  addu  $a0, $t4, $t9
/* AC7A6C 800508CC 00042400 */  sll   $a0, $a0, 0x10
/* AC7A70 800508D0 00042403 */  sra   $a0, $a0, 0x10
/* AC7A74 800508D4 44063000 */  mfc1  $a2, $f6
/* AC7A78 800508D8 0C010E47 */  jal   func_8004391C
/* AC7A7C 800508DC 00000000 */   nop
/* AC7A80 800508E0 26040074 */  addiu $a0, $s0, 0x74
/* AC7A84 800508E4 A7A20080 */  sh    $v0, 0x80($sp)
/* AC7A88 800508E8 AFA40030 */  sw    $a0, 0x30($sp)
/* AC7A8C 800508EC 02202825 */  move  $a1, $s1
/* AC7A90 800508F0 0C010F0A */  jal   func_80043C28
/* AC7A94 800508F4 27A6007C */   addiu $a2, $sp, 0x7c
/* AC7A98 800508F8 8FA40030 */  lw    $a0, 0x30($sp)
/* AC7A9C 800508FC 8FA60038 */  lw    $a2, 0x38($sp)
/* AC7AA0 80050900 8FA3002C */  lw    $v1, 0x2c($sp)
/* AC7AA4 80050904 8C8E0000 */  lw    $t6, ($a0)
/* AC7AA8 80050908 3C190001 */  lui   $t9, 1
/* AC7AAC 8005090C 02202825 */  move  $a1, $s1
/* AC7AB0 80050910 ACCE0000 */  sw    $t6, ($a2)
/* AC7AB4 80050914 8C8D0004 */  lw    $t5, 4($a0)
/* AC7AB8 80050918 ACCD0004 */  sw    $t5, 4($a2)
/* AC7ABC 8005091C 8C8E0008 */  lw    $t6, 8($a0)
/* AC7AC0 80050920 02002025 */  move  $a0, $s0
/* AC7AC4 80050924 ACCE0008 */  sw    $t6, 8($a2)
/* AC7AC8 80050928 846F0008 */  lh    $t7, 8($v1)
/* AC7ACC 8005092C 25F8FFFF */  addiu $t8, $t7, -1
/* AC7AD0 80050930 A4780008 */  sh    $t8, 8($v1)
/* AC7AD4 80050934 8E0C008C */  lw    $t4, 0x8c($s0)
/* AC7AD8 80050938 032CC821 */  addu  $t9, $t9, $t4
/* AC7ADC 8005093C 93390A39 */  lbu   $t9, 0xa39($t9)
/* AC7AE0 80050940 17200005 */  bnez  $t9, .L80050958
/* AC7AE4 80050944 00000000 */   nop
/* AC7AE8 80050948 0C010FCD */  jal   func_80043F34
/* AC7AEC 8005094C 02002025 */   move  $a0, $s0
/* AC7AF0 80050950 10000059 */  b     .L80050AB8
/* AC7AF4 80050954 26020094 */   addiu $v0, $s0, 0x94
.L80050958:
/* AC7AF8 80050958 0C0110D0 */  jal   func_80044340
/* AC7AFC 8005095C 02202825 */   move  $a1, $s1
/* AC7B00 80050960 10000055 */  b     .L80050AB8
/* AC7B04 80050964 26020094 */   addiu $v0, $s0, 0x94
.L80050968:
/* AC7B08 80050968 87A4006C */  lh    $a0, 0x6c($sp)
/* AC7B0C 8005096C 00042023 */  negu  $a0, $a0
/* AC7B10 80050970 00042400 */  sll   $a0, $a0, 0x10
/* AC7B14 80050974 0C01DE1C */  jal   Math_Sins
/* AC7B18 80050978 00042403 */   sra   $a0, $a0, 0x10
/* AC7B1C 8005097C 87A4006C */  lh    $a0, 0x6c($sp)
/* AC7B20 80050980 E7A00058 */  swc1  $f0, 0x58($sp)
/* AC7B24 80050984 00042023 */  negu  $a0, $a0
/* AC7B28 80050988 00042400 */  sll   $a0, $a0, 0x10
/* AC7B2C 8005098C 0C01DE0D */  jal   Math_Coss
/* AC7B30 80050990 00042403 */   sra   $a0, $a0, 0x10
/* AC7B34 80050994 C6040010 */  lwc1  $f4, 0x10($s0)
/* AC7B38 80050998 C7B00058 */  lwc1  $f16, 0x58($sp)
/* AC7B3C 8005099C 87A4006E */  lh    $a0, 0x6e($sp)
/* AC7B40 800509A0 E7A40098 */  swc1  $f4, 0x98($sp)
/* AC7B44 800509A4 C6080014 */  lwc1  $f8, 0x14($s0)
/* AC7B48 800509A8 C6060018 */  lwc1  $f6, 0x18($s0)
/* AC7B4C 800509AC 24848001 */  addiu $a0, $a0, -0x7fff
/* AC7B50 800509B0 46004282 */  mul.s $f10, $f8, $f0
/* AC7B54 800509B4 00042400 */  sll   $a0, $a0, 0x10
/* AC7B58 800509B8 00042403 */  sra   $a0, $a0, 0x10
/* AC7B5C 800509BC 46103102 */  mul.s $f4, $f6, $f16
/* AC7B60 800509C0 46045201 */  sub.s $f8, $f10, $f4
/* AC7B64 800509C4 E7A8009C */  swc1  $f8, 0x9c($sp)
/* AC7B68 800509C8 C6060014 */  lwc1  $f6, 0x14($s0)
/* AC7B6C 800509CC C6040018 */  lwc1  $f4, 0x18($s0)
/* AC7B70 800509D0 46103282 */  mul.s $f10, $f6, $f16
/* AC7B74 800509D4 00000000 */  nop
/* AC7B78 800509D8 46002202 */  mul.s $f8, $f4, $f0
/* AC7B7C 800509DC 46085180 */  add.s $f6, $f10, $f8
/* AC7B80 800509E0 0C01DE1C */  jal   Math_Sins
/* AC7B84 800509E4 E7A600A0 */   swc1  $f6, 0xa0($sp)
/* AC7B88 800509E8 87A4006E */  lh    $a0, 0x6e($sp)
/* AC7B8C 800509EC E7A00058 */  swc1  $f0, 0x58($sp)
/* AC7B90 800509F0 24848001 */  addiu $a0, $a0, -0x7fff
/* AC7B94 800509F4 00042400 */  sll   $a0, $a0, 0x10
/* AC7B98 800509F8 0C01DE0D */  jal   Math_Coss
/* AC7B9C 800509FC 00042403 */   sra   $a0, $a0, 0x10
/* AC7BA0 80050A00 C7B00058 */  lwc1  $f16, 0x58($sp)
/* AC7BA4 80050A04 C7A400A0 */  lwc1  $f4, 0xa0($sp)
/* AC7BA8 80050A08 C7A80098 */  lwc1  $f8, 0x98($sp)
/* AC7BAC 80050A0C 26040074 */  addiu $a0, $s0, 0x74
/* AC7BB0 80050A10 46102282 */  mul.s $f10, $f4, $f16
/* AC7BB4 80050A14 02202825 */  move  $a1, $s1
/* AC7BB8 80050A18 27A6007C */  addiu $a2, $sp, 0x7c
/* AC7BBC 80050A1C 46004182 */  mul.s $f6, $f8, $f0
/* AC7BC0 80050A20 46065100 */  add.s $f4, $f10, $f6
/* AC7BC4 80050A24 E6040010 */  swc1  $f4, 0x10($s0)
/* AC7BC8 80050A28 C7A8009C */  lwc1  $f8, 0x9c($sp)
/* AC7BCC 80050A2C E6080014 */  swc1  $f8, 0x14($s0)
/* AC7BD0 80050A30 C7AA00A0 */  lwc1  $f10, 0xa0($sp)
/* AC7BD4 80050A34 C7A40098 */  lwc1  $f4, 0x98($sp)
/* AC7BD8 80050A38 46005182 */  mul.s $f6, $f10, $f0
/* AC7BDC 80050A3C 00000000 */  nop
/* AC7BE0 80050A40 46102202 */  mul.s $f8, $f4, $f16
/* AC7BE4 80050A44 C6040010 */  lwc1  $f4, 0x10($s0)
/* AC7BE8 80050A48 46083281 */  sub.s $f10, $f6, $f8
/* AC7BEC 80050A4C E60A0018 */  swc1  $f10, 0x18($s0)
/* AC7BF0 80050A50 C7A60060 */  lwc1  $f6, 0x60($sp)
/* AC7BF4 80050A54 46062200 */  add.s $f8, $f4, $f6
/* AC7BF8 80050A58 E6280000 */  swc1  $f8, ($s1)
/* AC7BFC 80050A5C C7A40064 */  lwc1  $f4, 0x64($sp)
/* AC7C00 80050A60 C60A0014 */  lwc1  $f10, 0x14($s0)
/* AC7C04 80050A64 46045180 */  add.s $f6, $f10, $f4
/* AC7C08 80050A68 E6260004 */  swc1  $f6, 4($s1)
/* AC7C0C 80050A6C C7AA0068 */  lwc1  $f10, 0x68($sp)
/* AC7C10 80050A70 C6080018 */  lwc1  $f8, 0x18($s0)
/* AC7C14 80050A74 460A4100 */  add.s $f4, $f8, $f10
/* AC7C18 80050A78 E6240008 */  swc1  $f4, 8($s1)
/* AC7C1C 80050A7C 87AA006E */  lh    $t2, 0x6e($sp)
/* AC7C20 80050A80 C6060008 */  lwc1  $f6, 8($s0)
/* AC7C24 80050A84 87AD006C */  lh    $t5, 0x6c($sp)
/* AC7C28 80050A88 254B8001 */  addiu $t3, $t2, -0x7fff
/* AC7C2C 80050A8C A7AB0082 */  sh    $t3, 0x82($sp)
/* AC7C30 80050A90 E7A6007C */  swc1  $f6, 0x7c($sp)
/* AC7C34 80050A94 0C010F0A */  jal   func_80043C28
/* AC7C38 80050A98 A7AD0080 */   sh    $t5, 0x80($sp)
/* AC7C3C 80050A9C C6080004 */  lwc1  $f8, 4($s0)
/* AC7C40 80050AA0 8FA40038 */  lw    $a0, 0x38($sp)
/* AC7C44 80050AA4 02202825 */  move  $a1, $s1
/* AC7C48 80050AA8 27A6007C */  addiu $a2, $sp, 0x7c
/* AC7C4C 80050AAC 0C010F0A */  jal   func_80043C28
/* AC7C50 80050AB0 E7A8007C */   swc1  $f8, 0x7c($sp)
/* AC7C54 80050AB4 26020094 */  addiu $v0, $s0, 0x94
.L80050AB8:
/* AC7C58 80050AB8 C4440000 */  lwc1  $f4, ($v0)
/* AC7C5C 80050ABC C60A0050 */  lwc1  $f10, 0x50($s0)
/* AC7C60 80050AC0 C6080054 */  lwc1  $f8, 0x54($s0)
/* AC7C64 80050AC4 C60C001C */  lwc1  $f12, 0x1c($s0)
/* AC7C68 80050AC8 46045181 */  sub.s $f6, $f10, $f4
/* AC7C6C 80050ACC C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC7C70 80050AD0 3C063E80 */  lui   $a2, 0x3e80
/* AC7C74 80050AD4 3C073F80 */  li    $a3, 0x3F800000 # 0.000000
/* AC7C78 80050AD8 E60600E4 */  swc1  $f6, 0xe4($s0)
/* AC7C7C 80050ADC C44A0004 */  lwc1  $f10, 4($v0)
/* AC7C80 80050AE0 C6060058 */  lwc1  $f6, 0x58($s0)
/* AC7C84 80050AE4 460A4101 */  sub.s $f4, $f8, $f10
/* AC7C88 80050AE8 E60400E8 */  swc1  $f4, 0xe8($s0)
/* AC7C8C 80050AEC C4480008 */  lwc1  $f8, 8($v0)
/* AC7C90 80050AF0 46083281 */  sub.s $f10, $f6, $f8
/* AC7C94 80050AF4 0C010E27 */  jal   func_8004389C
/* AC7C98 80050AF8 E60A00EC */   swc1  $f10, 0xec($s0)
/* AC7C9C 80050AFC 44802000 */  mtc1  $zero, $f4
/* AC7CA0 80050B00 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC7CA4 80050B04 A600015A */  sh    $zero, 0x15a($s0)
/* AC7CA8 80050B08 24020001 */  li    $v0, 1
/* AC7CAC 80050B0C E6040100 */  swc1  $f4, 0x100($s0)
.L80050B10:
/* AC7CB0 80050B10 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC7CB4 80050B14 8FB00014 */  lw    $s0, 0x14($sp)
/* AC7CB8 80050B18 8FB10018 */  lw    $s1, 0x18($sp)
/* AC7CBC 80050B1C 03E00008 */  jr    $ra
/* AC7CC0 80050B20 27BD00B0 */   addiu $sp, $sp, 0xb0

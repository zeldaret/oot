.late_rodata
glabel D_8013A3D0
    .float 0.01

glabel jtbl_8013A3D4
.word L8005763C
.word L80057694
.word L80057878
.word L80057910
.word L80057A38

glabel D_8013A3E8
    .float 0.1

glabel D_8013A3EC
    .float 0.1

glabel D_8013A3F0
    .float 0.001

.text
glabel Camera_Special9
/* ACE5E8 80057448 27BDFF38 */  addiu $sp, $sp, -0xc8
/* ACE5EC 8005744C AFB00020 */  sw    $s0, 0x20($sp)
/* ACE5F0 80057450 00808025 */  move  $s0, $a0
/* ACE5F4 80057454 AFBF0024 */  sw    $ra, 0x24($sp)
/* ACE5F8 80057458 0C00B721 */  jal   Player_GetCameraYOffset
/* ACE5FC 8005745C 8C840090 */   lw    $a0, 0x90($a0)
/* ACE600 80057460 3C018014 */  lui   $at, %hi(D_8013A3D0)
/* ACE604 80057464 C42CA3D0 */  lwc1  $f12, %lo(D_8013A3D0)($at)
/* ACE608 80057468 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACE60C 8005746C 44814000 */  mtc1  $at, $f8
/* ACE610 80057470 E7A00098 */  swc1  $f0, 0x98($sp)
/* ACE614 80057474 860E014C */  lh    $t6, 0x14c($s0)
/* ACE618 80057478 3C014288 */  li    $at, 0x42880000 # 0.000000
/* ACE61C 8005747C 44818000 */  mtc1  $at, $f16
/* ACE620 80057480 31CFFFEF */  andi  $t7, $t6, 0xffef
/* ACE624 80057484 A60F014C */  sh    $t7, 0x14c($s0)
/* ACE628 80057488 46008483 */  div.s $f18, $f16, $f0
/* ACE62C 8005748C 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ACE630 80057490 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ACE634 80057494 2401000A */  li    $at, 10
/* ACE638 80057498 845801F0 */  lh    $t8, 0x1f0($v0)
/* ACE63C 8005749C 44982000 */  mtc1  $t8, $f4
/* ACE640 800574A0 00000000 */  nop
/* ACE644 800574A4 468021A0 */  cvt.s.w $f6, $f4
/* ACE648 800574A8 460C3082 */  mul.s $f2, $f6, $f12
/* ACE64C 800574AC 00000000 */  nop
/* ACE650 800574B0 46121102 */  mul.s $f4, $f2, $f18
/* ACE654 800574B4 46024280 */  add.s $f10, $f8, $f2
/* ACE658 800574B8 46045181 */  sub.s $f6, $f10, $f4
/* ACE65C 800574BC E7A60078 */  swc1  $f6, 0x78($sp)
/* ACE660 800574C0 8603015E */  lh    $v1, 0x15e($s0)
/* ACE664 800574C4 10600008 */  beqz  $v1, .L800574E8
/* ACE668 800574C8 00000000 */   nop
/* ACE66C 800574CC 10610006 */  beq   $v1, $at, .L800574E8
/* ACE670 800574D0 24010014 */   li    $at, 20
/* ACE674 800574D4 50610005 */  beql  $v1, $at, .L800574EC
/* ACE678 800574D8 86190142 */   lh    $t9, 0x142($s0)
/* ACE67C 800574DC 84430314 */  lh    $v1, 0x314($v0)
/* ACE680 800574E0 50600022 */  beql  $v1, $zero, .L8005756C
/* ACE684 800574E4 260C000C */   addiu $t4, $s0, 0xc
.L800574E8:
/* ACE688 800574E8 86190142 */  lh    $t9, 0x142($s0)
.L800574EC:
/* ACE68C 800574EC 3C0C8012 */  lui   $t4, %hi(sCameraSettings)
/* ACE690 800574F0 860D0144 */  lh    $t5, 0x144($s0)
/* ACE694 800574F4 001958C0 */  sll   $t3, $t9, 3
/* ACE698 800574F8 018B6021 */  addu  $t4, $t4, $t3
/* ACE69C 800574FC 8D8CD068 */  lw    $t4, %lo(sCameraSettings+4)($t4)
/* ACE6A0 80057500 000D70C0 */  sll   $t6, $t5, 3
/* ACE6A4 80057504 C7A40078 */  lwc1  $f4, 0x78($sp)
/* ACE6A8 80057508 018E7821 */  addu  $t7, $t4, $t6
/* ACE6AC 8005750C 8DE20004 */  lw    $v0, 4($t7)
/* ACE6B0 80057510 2604000C */  addiu $a0, $s0, 0xc
/* ACE6B4 80057514 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* ACE6B8 80057518 84580000 */  lh    $t8, ($v0)
/* ACE6BC 8005751C 24420008 */  addiu $v0, $v0, 8
/* ACE6C0 80057520 44984000 */  mtc1  $t8, $f8
/* ACE6C4 80057524 00000000 */  nop
/* ACE6C8 80057528 46804420 */  cvt.s.w $f16, $f8
/* ACE6CC 8005752C 460C8482 */  mul.s $f18, $f16, $f12
/* ACE6D0 80057530 00000000 */  nop
/* ACE6D4 80057534 46009282 */  mul.s $f10, $f18, $f0
/* ACE6D8 80057538 00000000 */  nop
/* ACE6DC 8005753C 46045182 */  mul.s $f6, $f10, $f4
/* ACE6E0 80057540 E4860000 */  swc1  $f6, ($a0)
/* ACE6E4 80057544 8459FFFC */  lh    $t9, -4($v0)
/* ACE6E8 80057548 44994000 */  mtc1  $t9, $f8
/* ACE6EC 8005754C 00000000 */  nop
/* ACE6F0 80057550 46804420 */  cvt.s.w $f16, $f8
/* ACE6F4 80057554 E4900004 */  swc1  $f16, 4($a0)
/* ACE6F8 80057558 844B0000 */  lh    $t3, ($v0)
/* ACE6FC 8005755C A48B0008 */  sh    $t3, 8($a0)
/* ACE700 80057560 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* ACE704 80057564 85A30314 */  lh    $v1, 0x314($t5)
/* ACE708 80057568 260C000C */  addiu $t4, $s0, 0xc
.L8005756C:
/* ACE70C 8005756C 10600003 */  beqz  $v1, .L8005757C
/* ACE710 80057570 AFAC0038 */   sw    $t4, 0x38($sp)
/* ACE714 80057574 0C011495 */  jal   Camera_CopyPREGToModeValues
/* ACE718 80057578 02002025 */   move  $a0, $s0
.L8005757C:
/* ACE71C 8005757C 8E050000 */  lw    $a1, ($s0)
/* ACE720 80057580 26020094 */  addiu $v0, $s0, 0x94
/* ACE724 80057584 50A00007 */  beql  $a1, $zero, .L800575A4
/* ACE728 80057588 8C590000 */   lw    $t9, ($v0)
/* ACE72C 8005758C 0C00BBD1 */  jal   func_8002EF44
/* ACE730 80057590 27A4007C */   addiu $a0, $sp, 0x7c
/* ACE734 80057594 260E0094 */  addiu $t6, $s0, 0x94
/* ACE738 80057598 10000015 */  b     .L800575F0
/* ACE73C 8005759C AFAE003C */   sw    $t6, 0x3c($sp)
/* ACE740 800575A0 8C590000 */  lw    $t9, ($v0)
.L800575A4:
/* ACE744 800575A4 27AF007C */  addiu $t7, $sp, 0x7c
/* ACE748 800575A8 ADF90000 */  sw    $t9, ($t7)
/* ACE74C 800575AC 8C580004 */  lw    $t8, 4($v0)
/* ACE750 800575B0 ADF80004 */  sw    $t8, 4($t7)
/* ACE754 800575B4 8C590008 */  lw    $t9, 8($v0)
/* ACE758 800575B8 ADF90008 */  sw    $t9, 8($t7)
/* ACE75C 800575BC 8C58000C */  lw    $t8, 0xc($v0)
/* ACE760 800575C0 ADF8000C */  sw    $t8, 0xc($t7)
/* ACE764 800575C4 8C590010 */  lw    $t9, 0x10($v0)
/* ACE768 800575C8 ADF90010 */  sw    $t9, 0x10($t7)
/* ACE76C 800575CC 8FAB0038 */  lw    $t3, 0x38($sp)
/* ACE770 800575D0 C7B20098 */  lwc1  $f18, 0x98($sp)
/* ACE774 800575D4 C7A60080 */  lwc1  $f6, 0x80($sp)
/* ACE778 800575D8 C56A0000 */  lwc1  $f10, ($t3)
/* ACE77C 800575DC AFA2003C */  sw    $v0, 0x3c($sp)
/* ACE780 800575E0 A7A00088 */  sh    $zero, 0x88($sp)
/* ACE784 800575E4 460A9100 */  add.s $f4, $f18, $f10
/* ACE788 800575E8 46043200 */  add.s $f8, $f6, $f4
/* ACE78C 800575EC E7A80080 */  swc1  $f8, 0x80($sp)
.L800575F0:
/* ACE790 800575F0 26050050 */  addiu $a1, $s0, 0x50
/* ACE794 800575F4 2606005C */  addiu $a2, $s0, 0x5c
/* ACE798 800575F8 AFA60048 */  sw    $a2, 0x48($sp)
/* ACE79C 800575FC AFA50044 */  sw    $a1, 0x44($sp)
/* ACE7A0 80057600 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* ACE7A4 80057604 27A4009C */   addiu $a0, $sp, 0x9c
/* ACE7A8 80057608 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACE7AC 8005760C 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACE7B0 80057610 854D0008 */  lh    $t5, 8($t2)
/* ACE7B4 80057614 AC2DD3A0 */  sw    $t5, %lo(D_8011D3A0)($at)
/* ACE7B8 80057618 8603015E */  lh    $v1, 0x15e($s0)
/* ACE7BC 8005761C 2C610005 */  sltiu $at, $v1, 5
/* ACE7C0 80057620 10200107 */  beqz  $at, .L80057A40
/* ACE7C4 80057624 00036080 */   sll   $t4, $v1, 2
/* ACE7C8 80057628 3C018014 */  lui   $at, %hi(jtbl_8013A3D4)
/* ACE7CC 8005762C 002C0821 */  addu  $at, $at, $t4
/* ACE7D0 80057630 8C2CA3D4 */  lw    $t4, %lo(jtbl_8013A3D4)($at)
/* ACE7D4 80057634 01800008 */  jr    $t4
/* ACE7D8 80057638 00000000 */   nop
glabel L8005763C
/* ACE7DC 8005763C 860E014C */  lh    $t6, 0x14c($s0)
/* ACE7E0 80057640 24780001 */  addiu $t8, $v1, 1
/* ACE7E4 80057644 A618015E */  sh    $t8, 0x15e($s0)
/* ACE7E8 80057648 31CFFFF9 */  andi  $t7, $t6, 0xfff9
/* ACE7EC 8005764C A60F014C */  sh    $t7, 0x14c($s0)
/* ACE7F0 80057650 8FB9003C */  lw    $t9, 0x3c($sp)
/* ACE7F4 80057654 87AD008A */  lh    $t5, 0x8a($sp)
/* ACE7F8 80057658 87AC008A */  lh    $t4, 0x8a($sp)
/* ACE7FC 8005765C 872B000E */  lh    $t3, 0xe($t9)
/* ACE800 80057660 87AF008A */  lh    $t7, 0x8a($sp)
/* ACE804 80057664 258E8001 */  addiu $t6, $t4, -0x7fff
/* ACE808 80057668 016D1023 */  subu  $v0, $t3, $t5
/* ACE80C 8005766C 04400003 */  bltz  $v0, .L8005767C
/* ACE810 80057670 00023823 */   negu  $a3, $v0
/* ACE814 80057674 10000001 */  b     .L8005767C
/* ACE818 80057678 00403825 */   move  $a3, $v0
.L8005767C:
/* ACE81C 8005767C 28E14000 */  slti  $at, $a3, 0x4000
/* ACE820 80057680 54200004 */  bnezl $at, .L80057694
/* ACE824 80057684 A60F0018 */   sh    $t7, 0x18($s0)
/* ACE828 80057688 10000002 */  b     .L80057694
/* ACE82C 8005768C A60E0018 */   sh    $t6, 0x18($s0)
/* ACE830 80057690 A60F0018 */  sh    $t7, 0x18($s0)
.L80057694:
glabel L80057694
/* ACE834 80057694 86180006 */  lh    $t8, 6($s0)
/* ACE838 80057698 2719FFFF */  addiu $t9, $t8, -1
/* ACE83C 8005769C A6190006 */  sh    $t9, 6($s0)
/* ACE840 800576A0 860B0006 */  lh    $t3, 6($s0)
/* ACE844 800576A4 5D60011B */  bgtzl $t3, .L80057B14
/* ACE848 800576A8 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACE84C 800576AC 860D015E */  lh    $t5, 0x15e($s0)
/* ACE850 800576B0 25AC0001 */  addiu $t4, $t5, 1
/* ACE854 800576B4 A60C015E */  sh    $t4, 0x15e($s0)
/* ACE858 800576B8 854E0008 */  lh    $t6, 8($t2)
/* ACE85C 800576BC 31CF0001 */  andi  $t7, $t6, 1
/* ACE860 800576C0 51E0001F */  beql  $t7, $zero, .L80057740
/* ACE864 800576C4 240B0E38 */   li    $t3, 3640
/* ACE868 800576C8 0C0111DB */  jal   func_8004476C
/* ACE86C 800576CC 02002025 */   move  $a0, $s0
/* ACE870 800576D0 26040074 */  addiu $a0, $s0, 0x74
/* ACE874 800576D4 AFA40040 */  sw    $a0, 0x40($sp)
/* ACE878 800576D8 0C010EF1 */  jal   Camera_Vec3sToVec3f
/* ACE87C 800576DC 00402825 */   move  $a1, $v0
/* ACE880 800576E0 8FB80040 */  lw    $t8, 0x40($sp)
/* ACE884 800576E4 27A7004C */  addiu $a3, $sp, 0x4c
/* ACE888 800576E8 27AF00AC */  addiu $t7, $sp, 0xac
/* ACE88C 800576EC 8F0B0000 */  lw    $t3, ($t8)
/* ACE890 800576F0 ACEB0000 */  sw    $t3, ($a3)
/* ACE894 800576F4 8F190004 */  lw    $t9, 4($t8)
/* ACE898 800576F8 8CEE0000 */  lw    $t6, ($a3)
/* ACE89C 800576FC ACF90004 */  sw    $t9, 4($a3)
/* ACE8A0 80057700 8F0B0008 */  lw    $t3, 8($t8)
/* ACE8A4 80057704 ACEB0008 */  sw    $t3, 8($a3)
/* ACE8A8 80057708 8FAD0048 */  lw    $t5, 0x48($sp)
/* ACE8AC 8005770C ADAE0000 */  sw    $t6, ($t5)
/* ACE8B0 80057710 8CEC0004 */  lw    $t4, 4($a3)
/* ACE8B4 80057714 ADAC0004 */  sw    $t4, 4($t5)
/* ACE8B8 80057718 8CEE0008 */  lw    $t6, 8($a3)
/* ACE8BC 8005771C ADAE0008 */  sw    $t6, 8($t5)
/* ACE8C0 80057720 8CF90000 */  lw    $t9, ($a3)
/* ACE8C4 80057724 ADF90000 */  sw    $t9, ($t7)
/* ACE8C8 80057728 8CF80004 */  lw    $t8, 4($a3)
/* ACE8CC 8005772C ADF80004 */  sw    $t8, 4($t7)
/* ACE8D0 80057730 8CF90008 */  lw    $t9, 8($a3)
/* ACE8D4 80057734 1000004F */  b     .L80057874
/* ACE8D8 80057738 ADF90008 */   sw    $t9, 8($t7)
/* ACE8DC 8005773C 240B0E38 */  li    $t3, 3640
.L80057740:
/* ACE8E0 80057740 A7AB00A8 */  sh    $t3, 0xa8($sp)
/* ACE8E4 80057744 8E0D008C */  lw    $t5, 0x8c($s0)
/* ACE8E8 80057748 26030018 */  addiu $v1, $s0, 0x18
/* ACE8EC 8005774C 24010AAA */  li    $at, 2730
/* ACE8F0 80057750 8DAC009C */  lw    $t4, 0x9c($t5)
/* ACE8F4 80057754 26040074 */  addiu $a0, $s0, 0x74
/* ACE8F8 80057758 318E0001 */  andi  $t6, $t4, 1
/* ACE8FC 8005775C 51C00004 */  beql  $t6, $zero, .L80057770
/* ACE900 80057760 2407FFFF */   li    $a3, -1
/* ACE904 80057764 10000002 */  b     .L80057770
/* ACE908 80057768 24070001 */   li    $a3, 1
/* ACE90C 8005776C 2407FFFF */  li    $a3, -1
.L80057770:
/* ACE910 80057770 00E10019 */  multu $a3, $at
/* ACE914 80057774 3C014348 */  li    $at, 0x43480000 # 0.000000
/* ACE918 80057778 44818000 */  mtc1  $at, $f16
/* ACE91C 8005777C C7B20078 */  lwc1  $f18, 0x78($sp)
/* ACE920 80057780 846F0000 */  lh    $t7, ($v1)
/* ACE924 80057784 AFA40040 */  sw    $a0, 0x40($sp)
/* ACE928 80057788 46128282 */  mul.s $f10, $f16, $f18
/* ACE92C 8005778C AFA30034 */  sw    $v1, 0x34($sp)
/* ACE930 80057790 8FA50044 */  lw    $a1, 0x44($sp)
/* ACE934 80057794 27A600A4 */  addiu $a2, $sp, 0xa4
/* ACE938 80057798 00001012 */  mflo  $v0
/* ACE93C 8005779C 00024C00 */  sll   $t1, $v0, 0x10
/* ACE940 800577A0 00094C03 */  sra   $t1, $t1, 0x10
/* ACE944 800577A4 01E9C021 */  addu  $t8, $t7, $t1
/* ACE948 800577A8 A7B800AA */  sh    $t8, 0xaa($sp)
/* ACE94C 800577AC E7AA00A4 */  swc1  $f10, 0xa4($sp)
/* ACE950 800577B0 0C010F0A */  jal   Camera_Vec3fVecSphAdd
/* ACE954 800577B4 AFA90030 */   sw    $t1, 0x30($sp)
/* ACE958 800577B8 8FB90040 */  lw    $t9, 0x40($sp)
/* ACE95C 800577BC 27A7004C */  addiu $a3, $sp, 0x4c
/* ACE960 800577C0 27B800AC */  addiu $t8, $sp, 0xac
/* ACE964 800577C4 8F2D0000 */  lw    $t5, ($t9)
/* ACE968 800577C8 02002025 */  move  $a0, $s0
/* ACE96C 800577CC 27A500AC */  addiu $a1, $sp, 0xac
/* ACE970 800577D0 ACED0000 */  sw    $t5, ($a3)
/* ACE974 800577D4 8F2B0004 */  lw    $t3, 4($t9)
/* ACE978 800577D8 8CEF0000 */  lw    $t7, ($a3)
/* ACE97C 800577DC ACEB0004 */  sw    $t3, 4($a3)
/* ACE980 800577E0 8F2D0008 */  lw    $t5, 8($t9)
/* ACE984 800577E4 ACED0008 */  sw    $t5, 8($a3)
/* ACE988 800577E8 8FAC0048 */  lw    $t4, 0x48($sp)
/* ACE98C 800577EC AD8F0000 */  sw    $t7, ($t4)
/* ACE990 800577F0 8CEE0004 */  lw    $t6, 4($a3)
/* ACE994 800577F4 AD8E0004 */  sw    $t6, 4($t4)
/* ACE998 800577F8 8CEF0008 */  lw    $t7, 8($a3)
/* ACE99C 800577FC AD8F0008 */  sw    $t7, 8($t4)
/* ACE9A0 80057800 8CEB0000 */  lw    $t3, ($a3)
/* ACE9A4 80057804 AF0B0000 */  sw    $t3, ($t8)
/* ACE9A8 80057808 8CF90004 */  lw    $t9, 4($a3)
/* ACE9AC 8005780C AF190004 */  sw    $t9, 4($t8)
/* ACE9B0 80057810 8CEB0008 */  lw    $t3, 8($a3)
/* ACE9B4 80057814 AF0B0008 */  sw    $t3, 8($t8)
/* ACE9B8 80057818 0C0110E8 */  jal   func_800443A0
/* ACE9BC 8005781C 8FA6003C */   lw    $a2, 0x3c($sp)
/* ACE9C0 80057820 10400014 */  beqz  $v0, .L80057874
/* ACE9C4 80057824 8FA30034 */   lw    $v1, 0x34($sp)
/* ACE9C8 80057828 8FA80030 */  lw    $t0, 0x30($sp)
/* ACE9CC 8005782C 846D0000 */  lh    $t5, ($v1)
/* ACE9D0 80057830 8FA40040 */  lw    $a0, 0x40($sp)
/* ACE9D4 80057834 00084023 */  negu  $t0, $t0
/* ACE9D8 80057838 00084400 */  sll   $t0, $t0, 0x10
/* ACE9DC 8005783C 00084403 */  sra   $t0, $t0, 0x10
/* ACE9E0 80057840 01A86021 */  addu  $t4, $t5, $t0
/* ACE9E4 80057844 A7AC00AA */  sh    $t4, 0xaa($sp)
/* ACE9E8 80057848 8FA50044 */  lw    $a1, 0x44($sp)
/* ACE9EC 8005784C 0C010F0A */  jal   Camera_Vec3fVecSphAdd
/* ACE9F0 80057850 27A600A4 */   addiu $a2, $sp, 0xa4
/* ACE9F4 80057854 8FAF0040 */  lw    $t7, 0x40($sp)
/* ACE9F8 80057858 8FAE0048 */  lw    $t6, 0x48($sp)
/* ACE9FC 8005785C 8DF90000 */  lw    $t9, ($t7)
/* ACEA00 80057860 ADD90000 */  sw    $t9, ($t6)
/* ACEA04 80057864 8DF80004 */  lw    $t8, 4($t7)
/* ACEA08 80057868 ADD80004 */  sw    $t8, 4($t6)
/* ACEA0C 8005786C 8DF90008 */  lw    $t9, 8($t7)
/* ACEA10 80057870 ADD90008 */  sw    $t9, 8($t6)
.L80057874:
/* ACEA14 80057874 8FAA0038 */  lw    $t2, 0x38($sp)
glabel L80057878
/* ACEA18 80057878 8FAD003C */  lw    $t5, 0x3c($sp)
/* ACEA1C 8005787C 27AB00AC */  addiu $t3, $sp, 0xac
/* ACEA20 80057880 3C013E80 */  li    $at, 0x3E800000 # 0.000000
/* ACEA24 80057884 8DAE0000 */  lw    $t6, ($t5)
/* ACEA28 80057888 44810000 */  mtc1  $at, $f0
/* ACEA2C 8005788C 3C018014 */  lui   $at, %hi(D_8013A3E8)
/* ACEA30 80057890 AD6E0000 */  sw    $t6, ($t3)
/* ACEA34 80057894 8DAC0004 */  lw    $t4, 4($t5)
/* ACEA38 80057898 44060000 */  mfc1  $a2, $f0
/* ACEA3C 8005789C 44070000 */  mfc1  $a3, $f0
/* ACEA40 800578A0 AD6C0004 */  sw    $t4, 4($t3)
/* ACEA44 800578A4 8DAE0008 */  lw    $t6, 8($t5)
/* ACEA48 800578A8 27A400AC */  addiu $a0, $sp, 0xac
/* ACEA4C 800578AC AD6E0008 */  sw    $t6, 8($t3)
/* ACEA50 800578B0 C5440000 */  lwc1  $f4, ($t2)
/* ACEA54 800578B4 C7A60098 */  lwc1  $f6, 0x98($sp)
/* ACEA58 800578B8 C7B000B0 */  lwc1  $f16, 0xb0($sp)
/* ACEA5C 800578BC C42AA3E8 */  lwc1  $f10, %lo(D_8013A3E8)($at)
/* ACEA60 800578C0 46043200 */  add.s $f8, $f6, $f4
/* ACEA64 800578C4 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEA68 800578C8 E7AA0010 */  swc1  $f10, 0x10($sp)
/* ACEA6C 800578CC 46088480 */  add.s $f18, $f16, $f8
/* ACEA70 800578D0 0C010E8F */  jal   func_80043A3C
/* ACEA74 800578D4 E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACEA78 800578D8 860F0008 */  lh    $t7, 8($s0)
/* ACEA7C 800578DC 25F8FFFF */  addiu $t8, $t7, -1
/* ACEA80 800578E0 A6180008 */  sh    $t8, 8($s0)
/* ACEA84 800578E4 86190008 */  lh    $t9, 8($s0)
/* ACEA88 800578E8 5F20008A */  bgtzl $t9, .L80057B14
/* ACEA8C 800578EC 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACEA90 800578F0 860B015E */  lh    $t3, 0x15e($s0)
/* ACEA94 800578F4 26030018 */  addiu $v1, $s0, 0x18
/* ACEA98 800578F8 256D0001 */  addiu $t5, $t3, 1
/* ACEA9C 800578FC A60D015E */  sh    $t5, 0x15e($s0)
/* ACEAA0 80057900 846C0000 */  lh    $t4, ($v1)
/* ACEAA4 80057904 258E8001 */  addiu $t6, $t4, -0x7fff
/* ACEAA8 80057908 A46E0000 */  sh    $t6, ($v1)
/* ACEAAC 8005790C 8FAA0038 */  lw    $t2, 0x38($sp)
glabel L80057910
/* ACEAB0 80057910 8FB8003C */  lw    $t8, 0x3c($sp)
/* ACEAB4 80057914 27AF00AC */  addiu $t7, $sp, 0xac
/* ACEAB8 80057918 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* ACEABC 8005791C 8F0B0000 */  lw    $t3, ($t8)
/* ACEAC0 80057920 44810000 */  mtc1  $at, $f0
/* ACEAC4 80057924 3C018014 */  lui   $at, %hi(D_8013A3EC)
/* ACEAC8 80057928 ADEB0000 */  sw    $t3, ($t7)
/* ACEACC 8005792C 8F190004 */  lw    $t9, 4($t8)
/* ACEAD0 80057930 260D0074 */  addiu $t5, $s0, 0x74
/* ACEAD4 80057934 26030018 */  addiu $v1, $s0, 0x18
/* ACEAD8 80057938 ADF90004 */  sw    $t9, 4($t7)
/* ACEADC 8005793C 8F0B0008 */  lw    $t3, 8($t8)
/* ACEAE0 80057940 44060000 */  mfc1  $a2, $f0
/* ACEAE4 80057944 44070000 */  mfc1  $a3, $f0
/* ACEAE8 80057948 ADEB0008 */  sw    $t3, 8($t7)
/* ACEAEC 8005794C C5440000 */  lwc1  $f4, ($t2)
/* ACEAF0 80057950 C7A60098 */  lwc1  $f6, 0x98($sp)
/* ACEAF4 80057954 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* ACEAF8 80057958 C42AA3EC */  lwc1  $f10, %lo(D_8013A3EC)($at)
/* ACEAFC 8005795C 46043400 */  add.s $f16, $f6, $f4
/* ACEB00 80057960 AFA30034 */  sw    $v1, 0x34($sp)
/* ACEB04 80057964 AFAD0040 */  sw    $t5, 0x40($sp)
/* ACEB08 80057968 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEB0C 8005796C 46104480 */  add.s $f18, $f8, $f16
/* ACEB10 80057970 27A400AC */  addiu $a0, $sp, 0xac
/* ACEB14 80057974 E7AA0010 */  swc1  $f10, 0x10($sp)
/* ACEB18 80057978 0C010E8F */  jal   func_80043A3C
/* ACEB1C 8005797C E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACEB20 80057980 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB24 80057984 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB28 80057988 24040AAA */  li    $a0, 2730
/* ACEB2C 8005798C 87A500A0 */  lh    $a1, 0xa0($sp)
/* ACEB30 80057990 0C010E47 */  jal   func_8004391C
/* ACEB34 80057994 2407000A */   li    $a3, 10
/* ACEB38 80057998 8FA30034 */  lw    $v1, 0x34($sp)
/* ACEB3C 8005799C A7A200A8 */  sh    $v0, 0xa8($sp)
/* ACEB40 800579A0 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB44 800579A4 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB48 800579A8 87A500A2 */  lh    $a1, 0xa2($sp)
/* ACEB4C 800579AC 2407000A */  li    $a3, 10
/* ACEB50 800579B0 0C010E47 */  jal   func_8004391C
/* ACEB54 800579B4 84640000 */   lh    $a0, ($v1)
/* ACEB58 800579B8 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ACEB5C 800579BC 44816000 */  mtc1  $at, $f12
/* ACEB60 800579C0 3C063E99 */  lui   $a2, (0x3E99999A >> 16) # lui $a2, 0x3e99
/* ACEB64 800579C4 A7A200AA */  sh    $v0, 0xaa($sp)
/* ACEB68 800579C8 34C6999A */  ori   $a2, (0x3E99999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* ACEB6C 800579CC C7AE009C */  lwc1  $f14, 0x9c($sp)
/* ACEB70 800579D0 0C010E27 */  jal   func_8004389C
/* ACEB74 800579D4 3C073F80 */   lui   $a3, 0x3f80
/* ACEB78 800579D8 E7A000A4 */  swc1  $f0, 0xa4($sp)
/* ACEB7C 800579DC 8FA40040 */  lw    $a0, 0x40($sp)
/* ACEB80 800579E0 8FA50044 */  lw    $a1, 0x44($sp)
/* ACEB84 800579E4 0C010F0A */  jal   Camera_Vec3fVecSphAdd
/* ACEB88 800579E8 27A600A4 */   addiu $a2, $sp, 0xa4
/* ACEB8C 800579EC 8FAE0040 */  lw    $t6, 0x40($sp)
/* ACEB90 800579F0 8FAC0048 */  lw    $t4, 0x48($sp)
/* ACEB94 800579F4 8DD80000 */  lw    $t8, ($t6)
/* ACEB98 800579F8 AD980000 */  sw    $t8, ($t4)
/* ACEB9C 800579FC 8DCF0004 */  lw    $t7, 4($t6)
/* ACEBA0 80057A00 AD8F0004 */  sw    $t7, 4($t4)
/* ACEBA4 80057A04 8DD80008 */  lw    $t8, 8($t6)
/* ACEBA8 80057A08 AD980008 */  sw    $t8, 8($t4)
/* ACEBAC 80057A0C 8619000A */  lh    $t9, 0xa($s0)
/* ACEBB0 80057A10 272BFFFF */  addiu $t3, $t9, -1
/* ACEBB4 80057A14 A60B000A */  sh    $t3, 0xa($s0)
/* ACEBB8 80057A18 860D000A */  lh    $t5, 0xa($s0)
/* ACEBBC 80057A1C 5DA0003D */  bgtzl $t5, .L80057B14
/* ACEBC0 80057A20 8FB9003C */   lw    $t9, 0x3c($sp)
/* ACEBC4 80057A24 860C015E */  lh    $t4, 0x15e($s0)
/* ACEBC8 80057A28 258E0001 */  addiu $t6, $t4, 1
/* ACEBCC 80057A2C A60E015E */  sh    $t6, 0x15e($s0)
/* ACEBD0 80057A30 8FAA0038 */  lw    $t2, 0x38($sp)
/* ACEBD4 80057A34 8603015E */  lh    $v1, 0x15e($s0)
glabel L80057A38
/* ACEBD8 80057A38 246F0001 */  addiu $t7, $v1, 1
/* ACEBDC 80057A3C A60F015E */  sh    $t7, 0x15e($s0)
.L80057A40:
/* ACEBE0 80057A40 8618014C */  lh    $t8, 0x14c($s0)
/* ACEBE4 80057A44 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACEBE8 80057A48 3C0B8016 */  lui   $t3, %hi(D_8015BD7C) # $t3, 0x8016
/* ACEBEC 80057A4C 37190410 */  ori   $t9, $t8, 0x410
/* ACEBF0 80057A50 A619014C */  sh    $t9, 0x14c($s0)
/* ACEBF4 80057A54 AC20D3A0 */  sw    $zero, %lo(D_8011D3A0)($at)
/* ACEBF8 80057A58 3C018014 */  lui   $at, %hi(D_8013A3F0)
/* ACEBFC 80057A5C C426A3F0 */  lwc1  $f6, %lo(D_8013A3F0)($at)
/* ACEC00 80057A60 C60400D8 */  lwc1  $f4, 0xd8($s0)
/* ACEC04 80057A64 02002025 */  move  $a0, $s0
/* ACEC08 80057A68 24060002 */  li    $a2, 2
/* ACEC0C 80057A6C 4604303C */  c.lt.s $f6, $f4
/* ACEC10 80057A70 00000000 */  nop
/* ACEC14 80057A74 45010021 */  bc1t  .L80057AFC
/* ACEC18 80057A78 00000000 */   nop
/* ACEC1C 80057A7C 8D6BBD7C */  lw    $t3, %lo(D_8015BD7C)($t3)
/* ACEC20 80057A80 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* ACEC24 80057A84 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* ACEC28 80057A88 95620020 */  lhu   $v0, 0x20($t3)
/* ACEC2C 80057A8C 00416827 */  nor   $t5, $v0, $at
/* ACEC30 80057A90 11A0001A */  beqz  $t5, .L80057AFC
/* ACEC34 80057A94 2401BFFF */   li    $at, -16385
/* ACEC38 80057A98 00416027 */  nor   $t4, $v0, $at
/* ACEC3C 80057A9C 11800017 */  beqz  $t4, .L80057AFC
/* ACEC40 80057AA0 2401FFFD */   li    $at, -3
/* ACEC44 80057AA4 00417027 */  nor   $t6, $v0, $at
/* ACEC48 80057AA8 11C00014 */  beqz  $t6, .L80057AFC
/* ACEC4C 80057AAC 2401FFFB */   li    $at, -5
/* ACEC50 80057AB0 00417827 */  nor   $t7, $v0, $at
/* ACEC54 80057AB4 11E00011 */  beqz  $t7, .L80057AFC
/* ACEC58 80057AB8 2401FFF7 */   li    $at, -9
/* ACEC5C 80057ABC 0041C027 */  nor   $t8, $v0, $at
/* ACEC60 80057AC0 1300000E */  beqz  $t8, .L80057AFC
/* ACEC64 80057AC4 2401FFFE */   li    $at, -2
/* ACEC68 80057AC8 0041C827 */  nor   $t9, $v0, $at
/* ACEC6C 80057ACC 1320000B */  beqz  $t9, .L80057AFC
/* ACEC70 80057AD0 2401FFEF */   li    $at, -17
/* ACEC74 80057AD4 00415827 */  nor   $t3, $v0, $at
/* ACEC78 80057AD8 11600008 */  beqz  $t3, .L80057AFC
/* ACEC7C 80057ADC 2401DFFF */   li    $at, -8193
/* ACEC80 80057AE0 00416827 */  nor   $t5, $v0, $at
/* ACEC84 80057AE4 11A00005 */  beqz  $t5, .L80057AFC
/* ACEC88 80057AE8 00000000 */   nop
/* ACEC8C 80057AEC 854C0008 */  lh    $t4, 8($t2)
/* ACEC90 80057AF0 318E0008 */  andi  $t6, $t4, 8
/* ACEC94 80057AF4 51C00007 */  beql  $t6, $zero, .L80057B14
/* ACEC98 80057AF8 8FB9003C */   lw    $t9, 0x3c($sp)
.L80057AFC:
/* ACEC9C 80057AFC 0C016952 */  jal   Camera_ChangeSetting
/* ACECA0 80057B00 86050154 */   lh    $a1, 0x154($s0)
/* ACECA4 80057B04 860F014C */  lh    $t7, 0x14c($s0)
/* ACECA8 80057B08 35F80006 */  ori   $t8, $t7, 6
/* ACECAC 80057B0C A618014C */  sh    $t8, 0x14c($s0)
/* ACECB0 80057B10 8FB9003C */  lw    $t9, 0x3c($sp)
.L80057B14:
/* ACECB4 80057B14 27A400AC */  addiu $a0, $sp, 0xac
/* ACECB8 80057B18 8F2D0000 */  lw    $t5, ($t9)
/* ACECBC 80057B1C AC8D0000 */  sw    $t5, ($a0)
/* ACECC0 80057B20 8F2B0004 */  lw    $t3, 4($t9)
/* ACECC4 80057B24 AC8B0004 */  sw    $t3, 4($a0)
/* ACECC8 80057B28 8F2D0008 */  lw    $t5, 8($t9)
/* ACECCC 80057B2C AC8D0008 */  sw    $t5, 8($a0)
/* ACECD0 80057B30 C7A800B0 */  lwc1  $f8, 0xb0($sp)
/* ACECD4 80057B34 C7B00098 */  lwc1  $f16, 0x98($sp)
/* ACECD8 80057B38 8FA50048 */  lw    $a1, 0x48($sp)
/* ACECDC 80057B3C 46104480 */  add.s $f18, $f8, $f16
/* ACECE0 80057B40 0C01EFE4 */  jal   OLib_Vec3fDist
/* ACECE4 80057B44 E7B200B0 */   swc1  $f18, 0xb0($sp)
/* ACECE8 80057B48 8FA3003C */  lw    $v1, 0x3c($sp)
/* ACECEC 80057B4C E60000DC */  swc1  $f0, 0xdc($s0)
/* ACECF0 80057B50 C60A0050 */  lwc1  $f10, 0x50($s0)
/* ACECF4 80057B54 C4660000 */  lwc1  $f6, ($v1)
/* ACECF8 80057B58 C6080054 */  lwc1  $f8, 0x54($s0)
/* ACECFC 80057B5C 24020001 */  li    $v0, 1
/* ACED00 80057B60 46065101 */  sub.s $f4, $f10, $f6
/* ACED04 80057B64 C60A0058 */  lwc1  $f10, 0x58($s0)
/* ACED08 80057B68 E60400E4 */  swc1  $f4, 0xe4($s0)
/* ACED0C 80057B6C C4700004 */  lwc1  $f16, 4($v1)
/* ACED10 80057B70 46104481 */  sub.s $f18, $f8, $f16
/* ACED14 80057B74 E61200E8 */  swc1  $f18, 0xe8($s0)
/* ACED18 80057B78 C4660008 */  lwc1  $f6, 8($v1)
/* ACED1C 80057B7C 46065101 */  sub.s $f4, $f10, $f6
/* ACED20 80057B80 E60400EC */  swc1  $f4, 0xec($s0)
/* ACED24 80057B84 8FBF0024 */  lw    $ra, 0x24($sp)
/* ACED28 80057B88 8FB00020 */  lw    $s0, 0x20($sp)
/* ACED2C 80057B8C 27BD00C8 */  addiu $sp, $sp, 0xc8
/* ACED30 80057B90 03E00008 */  jr    $ra
/* ACED34 80057B94 00000000 */   nop

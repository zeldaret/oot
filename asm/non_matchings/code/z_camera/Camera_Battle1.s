.rdata
glabel D_80139168
    .asciz "\x1b[43;30mcamera: warning: battle: target is not valid, change parallel\n\x1b[m"
    .balign 4

glabel D_801391B4
    .asciz "camera: battle: target actor name \x1b[34m%d\x1b[m\n"
    .balign 4

glabel D_801391E4
    .asciz "camera: battle: target actor name \x1b[41;37m%d\x1b[m\n"
    .balign 4

glabel D_80139218
    .asciz "camera: battle: change target %d -> \x1b[34m%d\x1b[m\n"
    .balign 4

.late_rodata
glabel D_80139FD4
    .float 0.01

glabel D_80139FD8
    .float 0.01

glabel D_80139FDC
    .float 0.01

glabel D_80139FE0
    .float 0.2

glabel D_80139FE4
    .float 0.01

glabel D_80139FE8
    .float 0.2

glabel D_80139FEC
    .float 0.01

glabel D_80139FF0
    .float 0.01

glabel D_80139FF4
    .float 0.01

glabel D_80139FF8
    .float 0.01

glabel D_80139FFC
    .float 0.01

glabel D_8013A000
    .float 0.01

glabel D_8013A004
    .float 0.01

glabel D_8013A008
    .float 0.05

glabel D_8013A00C
    .float -0.1

glabel D_8013A010
    .float 1.1

glabel D_8013A014
    .float 0.01

glabel D_8013A018
    .float 0.01

glabel D_8013A01C
    .float 0.01

glabel D_8013A020
    .float 0.01

glabel D_8013A024
    .float 182.041671753

glabel D_8013A028
    .float 0.00549325020984

glabel D_8013A02C
    .float 182.041671753

glabel D_8013A030
    .float 182.041671753

glabel D_8013A034
    .float 0.05

glabel D_8013A038
    .float 182.041671753

glabel D_8013A03C
    .float 0.01

glabel D_8013A040
    .float 182.041671753

glabel D_8013A044
    .float 0.8

glabel D_8013A048
    .float 0.8

glabel D_8013A04C
    .float 0.05

.text
glabel Camera_Battle1
/* AC2740 8004B5A0 27BDFEC0 */  addiu $sp, $sp, -0x140
/* AC2744 8004B5A4 AFB00024 */  sw    $s0, 0x24($sp)
/* AC2748 8004B5A8 00808025 */  move  $s0, $a0
/* AC274C 8004B5AC AFBF002C */  sw    $ra, 0x2c($sp)
/* AC2750 8004B5B0 AFB10028 */  sw    $s1, 0x28($sp)
/* AC2754 8004B5B4 AFA000E8 */  sw    $zero, 0xe8($sp)
/* AC2758 8004B5B8 8C840090 */  lw    $a0, 0x90($a0)
/* AC275C 8004B5BC 0C00B721 */  jal   Player_GetCameraYOffset
/* AC2760 8004B5C0 AFA40088 */   sw    $a0, 0x88($sp)
/* AC2764 8004B5C4 E7A00064 */  swc1  $f0, 0x64($sp)
/* AC2768 8004B5C8 8602015E */  lh    $v0, 0x15e($s0)
/* AC276C 8004B5CC 2401000A */  li    $at, 10
/* AC2770 8004B5D0 1040000A */  beqz  $v0, .L8004B5FC
/* AC2774 8004B5D4 00000000 */   nop
/* AC2778 8004B5D8 10410008 */  beq   $v0, $at, .L8004B5FC
/* AC277C 8004B5DC 24010014 */   li    $at, 20
/* AC2780 8004B5E0 10410006 */  beq   $v0, $at, .L8004B5FC
/* AC2784 8004B5E4 3C058016 */   lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2788 8004B5E8 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC278C 8004B5EC 8CAE0000 */  lw    $t6, ($a1)
/* AC2790 8004B5F0 85C30314 */  lh    $v1, 0x314($t6)
/* AC2794 8004B5F4 1060006C */  beqz  $v1, .L8004B7A8
/* AC2798 8004B5F8 00000000 */   nop
.L8004B5FC:
/* AC279C 8004B5FC 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC27A0 8004B600 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC27A4 8004B604 8CAC0000 */  lw    $t4, ($a1)
/* AC27A8 8004B608 3C018014 */  lui   $at, %hi(D_80139FD4)
/* AC27AC 8004B60C C4309FD4 */  lwc1  $f16, %lo(D_80139FD4)($at)
/* AC27B0 8004B610 858D01F0 */  lh    $t5, 0x1f0($t4)
/* AC27B4 8004B614 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC27B8 8004B618 44814000 */  mtc1  $at, $f8
/* AC27BC 8004B61C 448D2000 */  mtc1  $t5, $f4
/* AC27C0 8004B620 3C014288 */  li    $at, 0x42880000 # 0.000000
/* AC27C4 8004B624 860F0142 */  lh    $t7, 0x142($s0)
/* AC27C8 8004B628 468021A0 */  cvt.s.w $f6, $f4
/* AC27CC 8004B62C 44812000 */  mtc1  $at, $f4
/* AC27D0 8004B630 3C198012 */  lui   $t9, %hi(sCameraSettings+4)
/* AC27D4 8004B634 000FC0C0 */  sll   $t8, $t7, 3
/* AC27D8 8004B638 86090144 */  lh    $t1, 0x144($s0)
/* AC27DC 8004B63C 0338C821 */  addu  $t9, $t9, $t8
/* AC27E0 8004B640 46103082 */  mul.s $f2, $f6, $f16
/* AC27E4 8004B644 46002183 */  div.s $f6, $f4, $f0
/* AC27E8 8004B648 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* AC27EC 8004B64C 000950C0 */  sll   $t2, $t1, 3
/* AC27F0 8004B650 26110030 */  addiu $s1, $s0, 0x30
/* AC27F4 8004B654 032A5821 */  addu  $t3, $t9, $t2
/* AC27F8 8004B658 8D620004 */  lw    $v0, 4($t3)
/* AC27FC 8004B65C 46024280 */  add.s $f10, $f8, $f2
/* AC2800 8004B660 844E0000 */  lh    $t6, ($v0)
/* AC2804 8004B664 2442002C */  addiu $v0, $v0, 0x2c
/* AC2808 8004B668 448E2000 */  mtc1  $t6, $f4
/* AC280C 8004B66C 46061202 */  mul.s $f8, $f2, $f6
/* AC2810 8004B670 468021A0 */  cvt.s.w $f6, $f4
/* AC2814 8004B674 46085301 */  sub.s $f12, $f10, $f8
/* AC2818 8004B678 46103282 */  mul.s $f10, $f6, $f16
/* AC281C 8004B67C 00000000 */  nop
/* AC2820 8004B680 46005202 */  mul.s $f8, $f10, $f0
/* AC2824 8004B684 00000000 */  nop
/* AC2828 8004B688 460C4102 */  mul.s $f4, $f8, $f12
/* AC282C 8004B68C E6040000 */  swc1  $f4, ($s0)
/* AC2830 8004B690 844FFFD8 */  lh    $t7, -0x28($v0)
/* AC2834 8004B694 448F3000 */  mtc1  $t7, $f6
/* AC2838 8004B698 00000000 */  nop
/* AC283C 8004B69C 468032A0 */  cvt.s.w $f10, $f6
/* AC2840 8004B6A0 E60A0004 */  swc1  $f10, 4($s0)
/* AC2844 8004B6A4 8458FFDC */  lh    $t8, -0x24($v0)
/* AC2848 8004B6A8 44984000 */  mtc1  $t8, $f8
/* AC284C 8004B6AC 00000000 */  nop
/* AC2850 8004B6B0 46804120 */  cvt.s.w $f4, $f8
/* AC2854 8004B6B4 E6040008 */  swc1  $f4, 8($s0)
/* AC2858 8004B6B8 8449FFE0 */  lh    $t1, -0x20($v0)
/* AC285C 8004B6BC 44893000 */  mtc1  $t1, $f6
/* AC2860 8004B6C0 24090028 */  li    $t1, 40
/* AC2864 8004B6C4 468032A0 */  cvt.s.w $f10, $f6
/* AC2868 8004B6C8 E60A000C */  swc1  $f10, 0xc($s0)
/* AC286C 8004B6CC 8459FFE4 */  lh    $t9, -0x1c($v0)
/* AC2870 8004B6D0 44994000 */  mtc1  $t9, $f8
/* AC2874 8004B6D4 00000000 */  nop
/* AC2878 8004B6D8 46804120 */  cvt.s.w $f4, $f8
/* AC287C 8004B6DC E6040010 */  swc1  $f4, 0x10($s0)
/* AC2880 8004B6E0 844AFFE8 */  lh    $t2, -0x18($v0)
/* AC2884 8004B6E4 448A3000 */  mtc1  $t2, $f6
/* AC2888 8004B6E8 00000000 */  nop
/* AC288C 8004B6EC 468032A0 */  cvt.s.w $f10, $f6
/* AC2890 8004B6F0 E60A0014 */  swc1  $f10, 0x14($s0)
/* AC2894 8004B6F4 844BFFEC */  lh    $t3, -0x14($v0)
/* AC2898 8004B6F8 448B4000 */  mtc1  $t3, $f8
/* AC289C 8004B6FC 00000000 */  nop
/* AC28A0 8004B700 46804120 */  cvt.s.w $f4, $f8
/* AC28A4 8004B704 46102182 */  mul.s $f6, $f4, $f16
/* AC28A8 8004B708 E6060018 */  swc1  $f6, 0x18($s0)
/* AC28AC 8004B70C 844CFFF0 */  lh    $t4, -0x10($v0)
/* AC28B0 8004B710 448C5000 */  mtc1  $t4, $f10
/* AC28B4 8004B714 00000000 */  nop
/* AC28B8 8004B718 46805220 */  cvt.s.w $f8, $f10
/* AC28BC 8004B71C E608001C */  swc1  $f8, 0x1c($s0)
/* AC28C0 8004B720 844DFFF4 */  lh    $t5, -0xc($v0)
/* AC28C4 8004B724 448D2000 */  mtc1  $t5, $f4
/* AC28C8 8004B728 00000000 */  nop
/* AC28CC 8004B72C 468021A0 */  cvt.s.w $f6, $f4
/* AC28D0 8004B730 46103282 */  mul.s $f10, $f6, $f16
/* AC28D4 8004B734 E60A0020 */  swc1  $f10, 0x20($s0)
/* AC28D8 8004B738 844EFFF8 */  lh    $t6, -8($v0)
/* AC28DC 8004B73C A60E002C */  sh    $t6, 0x2c($s0)
/* AC28E0 8004B740 844FFFFC */  lh    $t7, -4($v0)
/* AC28E4 8004B744 448F4000 */  mtc1  $t7, $f8
/* AC28E8 8004B748 00000000 */  nop
/* AC28EC 8004B74C 46804120 */  cvt.s.w $f4, $f8
/* AC28F0 8004B750 46102182 */  mul.s $f6, $f4, $f16
/* AC28F4 8004B754 00000000 */  nop
/* AC28F8 8004B758 46003282 */  mul.s $f10, $f6, $f0
/* AC28FC 8004B75C 00000000 */  nop
/* AC2900 8004B760 460C5202 */  mul.s $f8, $f10, $f12
/* AC2904 8004B764 E6080024 */  swc1  $f8, 0x24($s0)
/* AC2908 8004B768 84580000 */  lh    $t8, ($v0)
/* AC290C 8004B76C 44982000 */  mtc1  $t8, $f4
/* AC2910 8004B770 00000000 */  nop
/* AC2914 8004B774 468021A0 */  cvt.s.w $f6, $f4
/* AC2918 8004B778 46103282 */  mul.s $f10, $f6, $f16
/* AC291C 8004B77C E60A0028 */  swc1  $f10, 0x28($s0)
/* AC2920 8004B780 A629001C */  sh    $t1, 0x1c($s1)
/* AC2924 8004B784 8CB90000 */  lw    $t9, ($a1)
/* AC2928 8004B788 872A01AC */  lh    $t2, 0x1ac($t9)
/* AC292C 8004B78C 448A4000 */  mtc1  $t2, $f8
/* AC2930 8004B790 00000000 */  nop
/* AC2934 8004B794 46804120 */  cvt.s.w $f4, $f8
/* AC2938 8004B798 46102182 */  mul.s $f6, $f4, $f16
/* AC293C 8004B79C E6260010 */  swc1  $f6, 0x10($s1)
/* AC2940 8004B7A0 8CAB0000 */  lw    $t3, ($a1)
/* AC2944 8004B7A4 85630314 */  lh    $v1, 0x314($t3)
.L8004B7A8:
/* AC2948 8004B7A8 3C018014 */  lui   $at, %hi(D_80139FD8)
/* AC294C 8004B7AC C4309FD8 */  lwc1  $f16, %lo(D_80139FD8)($at)
/* AC2950 8004B7B0 10600007 */  beqz  $v1, .L8004B7D0
/* AC2954 8004B7B4 26110030 */   addiu $s1, $s0, 0x30
/* AC2958 8004B7B8 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC295C 8004B7BC 02002025 */   move  $a0, $s0
/* AC2960 8004B7C0 3C018014 */  lui   $at, %hi(D_80139FDC)
/* AC2964 8004B7C4 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2968 8004B7C8 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC296C 8004B7CC C4309FDC */  lwc1  $f16, %lo(D_80139FDC)($at)
.L8004B7D0:
/* AC2970 8004B7D0 C60A0004 */  lwc1  $f10, 4($s0)
/* AC2974 8004B7D4 E7AA0080 */  swc1  $f10, 0x80($sp)
/* AC2978 8004B7D8 C6080010 */  lwc1  $f8, 0x10($s0)
/* AC297C 8004B7DC E7A8007C */  swc1  $f8, 0x7c($sp)
/* AC2980 8004B7E0 C6040014 */  lwc1  $f4, 0x14($s0)
/* AC2984 8004B7E4 E7A40078 */  swc1  $f4, 0x78($sp)
/* AC2988 8004B7E8 C606001C */  lwc1  $f6, 0x1c($s0)
/* AC298C 8004B7EC E7A60074 */  swc1  $f6, 0x74($sp)
/* AC2990 8004B7F0 8E0C0090 */  lw    $t4, 0x90($s0)
/* AC2994 8004B7F4 8D8D067C */  lw    $t5, 0x67c($t4)
/* AC2998 8004B7F8 31AE1000 */  andi  $t6, $t5, 0x1000
/* AC299C 8004B7FC 51C0004F */  beql  $t6, $zero, .L8004B93C
/* AC29A0 8004B800 8622001C */   lh    $v0, 0x1c($s1)
/* AC29A4 8004B804 8CA30000 */  lw    $v1, ($a1)
/* AC29A8 8004B808 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC29AC 8004B80C 44813000 */  mtc1  $at, $f6
/* AC29B0 8004B810 846F01AC */  lh    $t7, 0x1ac($v1)
/* AC29B4 8004B814 847801C6 */  lh    $t8, 0x1c6($v1)
/* AC29B8 8004B818 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC29BC 8004B81C 448F5000 */  mtc1  $t7, $f10
/* AC29C0 8004B820 34E7CCCD */  ori   $a3, $a3, 0xcccd
/* AC29C4 8004B824 C62E0010 */  lwc1  $f14, 0x10($s1)
/* AC29C8 8004B828 46805220 */  cvt.s.w $f8, $f10
/* AC29CC 8004B82C 44985000 */  mtc1  $t8, $f10
/* AC29D0 8004B830 46104102 */  mul.s $f4, $f8, $f16
/* AC29D4 8004B834 46805220 */  cvt.s.w $f8, $f10
/* AC29D8 8004B838 46062302 */  mul.s $f12, $f4, $f6
/* AC29DC 8004B83C 00000000 */  nop
/* AC29E0 8004B840 46104102 */  mul.s $f4, $f8, $f16
/* AC29E4 8004B844 44062000 */  mfc1  $a2, $f4
/* AC29E8 8004B848 0C010E27 */  jal   Camera_LERPCeilF
/* AC29EC 8004B84C 00000000 */   nop
/* AC29F0 8004B850 E6200010 */  swc1  $f0, 0x10($s1)
/* AC29F4 8004B854 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AC29F8 8004B858 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC29FC 8004B85C 3C018014 */  lui   $at, %hi(D_80139FE0)
/* AC2A00 8004B860 C42C9FE0 */  lwc1  $f12, %lo(D_80139FE0)($at)
/* AC2A04 8004B864 853901C6 */  lh    $t9, 0x1c6($t1)
/* AC2A08 8004B868 3C018014 */  lui   $at, %hi(D_80139FE4)
/* AC2A0C 8004B86C C4289FE4 */  lwc1  $f8, %lo(D_80139FE4)($at)
/* AC2A10 8004B870 44993000 */  mtc1  $t9, $f6
/* AC2A14 8004B874 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2A18 8004B878 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2A1C 8004B87C 468032A0 */  cvt.s.w $f10, $f6
/* AC2A20 8004B880 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2A24 8004B884 46085102 */  mul.s $f4, $f10, $f8
/* AC2A28 8004B888 44062000 */  mfc1  $a2, $f4
/* AC2A2C 8004B88C 0C010E27 */  jal   Camera_LERPCeilF
/* AC2A30 8004B890 00000000 */   nop
/* AC2A34 8004B894 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2A38 8004B898 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* AC2A3C 8004B89C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* AC2A40 8004B8A0 3C018014 */  lui   $at, %hi(D_80139FE8)
/* AC2A44 8004B8A4 C42C9FE8 */  lwc1  $f12, %lo(D_80139FE8)($at)
/* AC2A48 8004B8A8 854B01C6 */  lh    $t3, 0x1c6($t2)
/* AC2A4C 8004B8AC 3C018014 */  lui   $at, %hi(D_80139FEC)
/* AC2A50 8004B8B0 C4289FEC */  lwc1  $f8, %lo(D_80139FEC)($at)
/* AC2A54 8004B8B4 448B3000 */  mtc1  $t3, $f6
/* AC2A58 8004B8B8 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2A5C 8004B8BC 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2A60 8004B8C0 468032A0 */  cvt.s.w $f10, $f6
/* AC2A64 8004B8C4 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2A68 8004B8C8 46085102 */  mul.s $f4, $f10, $f8
/* AC2A6C 8004B8CC 44062000 */  mfc1  $a2, $f4
/* AC2A70 8004B8D0 0C010E27 */  jal   Camera_LERPCeilF
/* AC2A74 8004B8D4 00000000 */   nop
/* AC2A78 8004B8D8 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2A7C 8004B8DC 8622001C */  lh    $v0, 0x1c($s1)
/* AC2A80 8004B8E0 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2A84 8004B8E4 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC2A88 8004B8E8 2841FFED */  slti  $at, $v0, -0x13
/* AC2A8C 8004B8EC 14200003 */  bnez  $at, .L8004B8FC
/* AC2A90 8004B8F0 244CFFFF */   addiu $t4, $v0, -1
/* AC2A94 8004B8F4 1000000D */  b     .L8004B92C
/* AC2A98 8004B8F8 A62C001C */   sh    $t4, 0x1c($s1)
.L8004B8FC:
/* AC2A9C 8004B8FC 3C01437A */  li    $at, 0x437A0000 # 0.000000
/* AC2AA0 8004B900 44813000 */  mtc1  $at, $f6
/* AC2AA4 8004B904 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC2AA8 8004B908 44815000 */  mtc1  $at, $f10
/* AC2AAC 8004B90C 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2AB0 8004B910 44814000 */  mtc1  $at, $f8
/* AC2AB4 8004B914 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AC2AB8 8004B918 44812000 */  mtc1  $at, $f4
/* AC2ABC 8004B91C E7A60080 */  swc1  $f6, 0x80($sp)
/* AC2AC0 8004B920 E7AA007C */  swc1  $f10, 0x7c($sp)
/* AC2AC4 8004B924 E7A80078 */  swc1  $f8, 0x78($sp)
/* AC2AC8 8004B928 E7A40074 */  swc1  $f4, 0x74($sp)
.L8004B92C:
/* AC2ACC 8004B92C 3C018014 */  lui   $at, %hi(D_80139FF0)
/* AC2AD0 8004B930 10000059 */  b     .L8004BA98
/* AC2AD4 8004B934 C4309FF0 */   lwc1  $f16, %lo(D_80139FF0)($at)
/* AC2AD8 8004B938 8622001C */  lh    $v0, 0x1c($s1)
.L8004B93C:
/* AC2ADC 8004B93C 3C01437A */  li    $at, 0x437A0000 # 0.000000
/* AC2AE0 8004B940 240E0028 */  li    $t6, 40
/* AC2AE4 8004B944 0441000E */  bgez  $v0, .L8004B980
/* AC2AE8 8004B948 244D0001 */   addiu $t5, $v0, 1
/* AC2AEC 8004B94C 44813000 */  mtc1  $at, $f6
/* AC2AF0 8004B950 3C014248 */  li    $at, 0x42480000 # 0.000000
/* AC2AF4 8004B954 44815000 */  mtc1  $at, $f10
/* AC2AF8 8004B958 3C014220 */  li    $at, 0x42200000 # 0.000000
/* AC2AFC 8004B95C 44814000 */  mtc1  $at, $f8
/* AC2B00 8004B960 3C014270 */  li    $at, 0x42700000 # 0.000000
/* AC2B04 8004B964 44812000 */  mtc1  $at, $f4
/* AC2B08 8004B968 E7A60080 */  swc1  $f6, 0x80($sp)
/* AC2B0C 8004B96C E7AA007C */  swc1  $f10, 0x7c($sp)
/* AC2B10 8004B970 E7A80078 */  swc1  $f8, 0x78($sp)
/* AC2B14 8004B974 E7A40074 */  swc1  $f4, 0x74($sp)
/* AC2B18 8004B978 10000047 */  b     .L8004BA98
/* AC2B1C 8004B97C A62D001C */   sh    $t5, 0x1c($s1)
.L8004B980:
/* AC2B20 8004B980 A62E001C */  sh    $t6, 0x1c($s1)
/* AC2B24 8004B984 8CA30000 */  lw    $v1, ($a1)
/* AC2B28 8004B988 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2B2C 8004B98C 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2B30 8004B990 846F01AC */  lh    $t7, 0x1ac($v1)
/* AC2B34 8004B994 847801C6 */  lh    $t8, 0x1c6($v1)
/* AC2B38 8004B998 C62E0010 */  lwc1  $f14, 0x10($s1)
/* AC2B3C 8004B99C 448F3000 */  mtc1  $t7, $f6
/* AC2B40 8004B9A0 44984000 */  mtc1  $t8, $f8
/* AC2B44 8004B9A4 468032A0 */  cvt.s.w $f10, $f6
/* AC2B48 8004B9A8 46804120 */  cvt.s.w $f4, $f8
/* AC2B4C 8004B9AC 46105302 */  mul.s $f12, $f10, $f16
/* AC2B50 8004B9B0 00000000 */  nop
/* AC2B54 8004B9B4 46102182 */  mul.s $f6, $f4, $f16
/* AC2B58 8004B9B8 44063000 */  mfc1  $a2, $f6
/* AC2B5C 8004B9BC 0C010E27 */  jal   Camera_LERPCeilF
/* AC2B60 8004B9C0 00000000 */   nop
/* AC2B64 8004B9C4 E6200010 */  swc1  $f0, 0x10($s1)
/* AC2B68 8004B9C8 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC2B6C 8004B9CC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2B70 8004B9D0 3C018014 */  lui   $at, %hi(D_80139FF4)
/* AC2B74 8004B9D4 C4249FF4 */  lwc1  $f4, %lo(D_80139FF4)($at)
/* AC2B78 8004B9D8 846901E4 */  lh    $t1, 0x1e4($v1)
/* AC2B7C 8004B9DC 847901C6 */  lh    $t9, 0x1c6($v1)
/* AC2B80 8004B9E0 3C018014 */  lui   $at, %hi(D_80139FF8)
/* AC2B84 8004B9E4 44895000 */  mtc1  $t1, $f10
/* AC2B88 8004B9E8 44993000 */  mtc1  $t9, $f6
/* AC2B8C 8004B9EC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2B90 8004B9F0 46805220 */  cvt.s.w $f8, $f10
/* AC2B94 8004B9F4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2B98 8004B9F8 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC2B9C 8004B9FC 468032A0 */  cvt.s.w $f10, $f6
/* AC2BA0 8004BA00 46044302 */  mul.s $f12, $f8, $f4
/* AC2BA4 8004BA04 C4289FF8 */  lwc1  $f8, %lo(D_80139FF8)($at)
/* AC2BA8 8004BA08 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC2BAC 8004BA0C 46085102 */  mul.s $f4, $f10, $f8
/* AC2BB0 8004BA10 00000000 */  nop
/* AC2BB4 8004BA14 46062282 */  mul.s $f10, $f4, $f6
/* AC2BB8 8004BA18 44065000 */  mfc1  $a2, $f10
/* AC2BBC 8004BA1C 0C010E27 */  jal   Camera_LERPCeilF
/* AC2BC0 8004BA20 00000000 */   nop
/* AC2BC4 8004BA24 E60000CC */  swc1  $f0, 0xcc($s0)
/* AC2BC8 8004BA28 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC2BCC 8004BA2C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2BD0 8004BA30 3C018014 */  lui   $at, %hi(D_80139FFC)
/* AC2BD4 8004BA34 C4269FFC */  lwc1  $f6, %lo(D_80139FFC)($at)
/* AC2BD8 8004BA38 846A01E4 */  lh    $t2, 0x1e4($v1)
/* AC2BDC 8004BA3C 846B01C8 */  lh    $t3, 0x1c8($v1)
/* AC2BE0 8004BA40 3C018014 */  lui   $at, %hi(D_8013A000)
/* AC2BE4 8004BA44 448A4000 */  mtc1  $t2, $f8
/* AC2BE8 8004BA48 448B5000 */  mtc1  $t3, $f10
/* AC2BEC 8004BA4C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC2BF0 8004BA50 46804120 */  cvt.s.w $f4, $f8
/* AC2BF4 8004BA54 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2BF8 8004BA58 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC2BFC 8004BA5C 46805220 */  cvt.s.w $f8, $f10
/* AC2C00 8004BA60 46062302 */  mul.s $f12, $f4, $f6
/* AC2C04 8004BA64 C424A000 */  lwc1  $f4, %lo(D_8013A000)($at)
/* AC2C08 8004BA68 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC2C0C 8004BA6C 46044182 */  mul.s $f6, $f8, $f4
/* AC2C10 8004BA70 00000000 */  nop
/* AC2C14 8004BA74 460A3202 */  mul.s $f8, $f6, $f10
/* AC2C18 8004BA78 44064000 */  mfc1  $a2, $f8
/* AC2C1C 8004BA7C 0C010E27 */  jal   Camera_LERPCeilF
/* AC2C20 8004BA80 00000000 */   nop
/* AC2C24 8004BA84 E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC2C28 8004BA88 3C018014 */  lui   $at, %hi(D_8013A004)
/* AC2C2C 8004BA8C 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* AC2C30 8004BA90 24A5FA90 */  addiu $a1, %lo(gGameInfo) # addiu $a1, $a1, -0x570
/* AC2C34 8004BA94 C430A004 */  lwc1  $f16, %lo(D_8013A004)($at)
.L8004BA98:
/* AC2C38 8004BA98 8CAC0000 */  lw    $t4, ($a1)
/* AC2C3C 8004BA9C 3C018014 */  lui   $at, %hi(D_8013A008)
/* AC2C40 8004BAA0 C428A008 */  lwc1  $f8, %lo(D_8013A008)($at)
/* AC2C44 8004BAA4 858D019C */  lh    $t5, 0x19c($t4)
/* AC2C48 8004BAA8 C60A00E0 */  lwc1  $f10, 0xe0($s0)
/* AC2C4C 8004BAAC 3C073DCC */  li    $a3, 0x3DCC0000 # 0.000000
/* AC2C50 8004BAB0 448D2000 */  mtc1  $t5, $f4
/* AC2C54 8004BAB4 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC2C58 8004BAB8 C60E00D4 */  lwc1  $f14, 0xd4($s0)
/* AC2C5C 8004BABC 468021A0 */  cvt.s.w $f6, $f4
/* AC2C60 8004BAC0 46103302 */  mul.s $f12, $f6, $f16
/* AC2C64 8004BAC4 00000000 */  nop
/* AC2C68 8004BAC8 46085102 */  mul.s $f4, $f10, $f8
/* AC2C6C 8004BACC 44062000 */  mfc1  $a2, $f4
/* AC2C70 8004BAD0 0C010E27 */  jal   Camera_LERPCeilF
/* AC2C74 8004BAD4 00000000 */   nop
/* AC2C78 8004BAD8 E60000D4 */  swc1  $f0, 0xd4($s0)
/* AC2C7C 8004BADC C7A60064 */  lwc1  $f6, 0x64($sp)
/* AC2C80 8004BAE0 C60A0000 */  lwc1  $f10, ($s0)
/* AC2C84 8004BAE4 26050050 */  addiu $a1, $s0, 0x50
/* AC2C88 8004BAE8 2606005C */  addiu $a2, $s0, 0x5c
/* AC2C8C 8004BAEC 460A3200 */  add.s $f8, $f6, $f10
/* AC2C90 8004BAF0 AFA6004C */  sw    $a2, 0x4c($sp)
/* AC2C94 8004BAF4 AFA50048 */  sw    $a1, 0x48($sp)
/* AC2C98 8004BAF8 27A4009C */  addiu $a0, $sp, 0x9c
/* AC2C9C 8004BAFC 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC2CA0 8004BB00 E7A80064 */   swc1  $f8, 0x64($sp)
/* AC2CA4 8004BB04 26060074 */  addiu $a2, $s0, 0x74
/* AC2CA8 8004BB08 AFA60044 */  sw    $a2, 0x44($sp)
/* AC2CAC 8004BB0C 27A40094 */  addiu $a0, $sp, 0x94
/* AC2CB0 8004BB10 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC2CB4 8004BB14 8FA50048 */   lw    $a1, 0x48($sp)
/* AC2CB8 8004BB18 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC2CBC 8004BB1C 10600004 */  beqz  $v1, .L8004BB30
/* AC2CC0 8004BB20 00000000 */   nop
/* AC2CC4 8004BB24 8C6E0130 */  lw    $t6, 0x130($v1)
/* AC2CC8 8004BB28 55C0000C */  bnezl $t6, .L8004BB5C
/* AC2CCC 8004BB2C 860F002C */   lh    $t7, 0x2c($s0)
.L8004BB30:
/* AC2CD0 8004BB30 14600003 */  bnez  $v1, .L8004BB40
/* AC2CD4 8004BB34 3C048014 */   lui   $a0, %hi(D_80139168)
/* AC2CD8 8004BB38 0C00084C */  jal   osSyncPrintf
/* AC2CDC 8004BB3C 24849168 */   addiu $a0, %lo(D_80139168) # addiu $a0, $a0, -0x6e98
.L8004BB40:
/* AC2CE0 8004BB40 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC2CE4 8004BB44 02002025 */  move  $a0, $s0
/* AC2CE8 8004BB48 0C016911 */  jal   Camera_ChangeModeDefaultFlags
/* AC2CEC 8004BB4C 24050001 */   li    $a1, 1
/* AC2CF0 8004BB50 100002A3 */  b     .L8004C5E0
/* AC2CF4 8004BB54 24020001 */   li    $v0, 1
/* AC2CF8 8004BB58 860F002C */  lh    $t7, 0x2c($s0)
.L8004BB5C:
/* AC2CFC 8004BB5C 3C018012 */  lui   $at, %hi(sCameraInterfaceFlags)
/* AC2D00 8004BB60 AC2FD3A0 */  sw    $t7, %lo(sCameraInterfaceFlags)($at)
/* AC2D04 8004BB64 8602015E */  lh    $v0, 0x15e($s0)
/* AC2D08 8004BB68 2401000A */  li    $at, 10
/* AC2D0C 8004BB6C 50400006 */  beql  $v0, $zero, .L8004BB88
/* AC2D10 8004BB70 44802000 */   mtc1  $zero, $f4
/* AC2D14 8004BB74 10410003 */  beq   $v0, $at, .L8004BB84
/* AC2D18 8004BB78 24010014 */   li    $at, 20
/* AC2D1C 8004BB7C 5441002B */  bnel  $v0, $at, .L8004BC2C
/* AC2D20 8004BB80 86180140 */   lh    $t8, 0x140($s0)
.L8004BB84:
/* AC2D24 8004BB84 44802000 */  mtc1  $zero, $f4
.L8004BB88:
/* AC2D28 8004BB88 A6200014 */  sh    $zero, 0x14($s1)
/* AC2D2C 8004BB8C 3C048014 */  lui   $a0, %hi(D_801391E4)
/* AC2D30 8004BB90 E6240004 */  swc1  $f4, 4($s1)
/* AC2D34 8004BB94 8E1800A8 */  lw    $t8, 0xa8($s0)
/* AC2D38 8004BB98 AE38000C */  sw    $t8, 0xc($s1)
/* AC2D3C 8004BB9C 8609015E */  lh    $t1, 0x15e($s0)
/* AC2D40 8004BBA0 25390001 */  addiu $t9, $t1, 1
/* AC2D44 8004BBA4 A619015E */  sh    $t9, 0x15e($s0)
/* AC2D48 8004BBA8 8E2A000C */  lw    $t2, 0xc($s1)
/* AC2D4C 8004BBAC 85450000 */  lh    $a1, ($t2)
/* AC2D50 8004BBB0 18A00006 */  blez  $a1, .L8004BBCC
/* AC2D54 8004BBB4 00000000 */   nop
/* AC2D58 8004BBB8 3C048014 */  lui   $a0, %hi(D_801391B4) # $a0, 0x8014
/* AC2D5C 8004BBBC 0C00084C */  jal   osSyncPrintf
/* AC2D60 8004BBC0 248491B4 */   addiu $a0, %lo(D_801391B4) # addiu $a0, $a0, -0x6e4c
/* AC2D64 8004BBC4 10000009 */  b     .L8004BBEC
/* AC2D68 8004BBC8 3C038016 */   lui   $v1, %hi(gGameInfo) # $v1, 0x8016
.L8004BBCC:
/* AC2D6C 8004BBCC 0C00084C */  jal   osSyncPrintf
/* AC2D70 8004BBD0 248491E4 */   addiu $a0, %lo(D_801391E4)
/* AC2D74 8004BBD4 AE0000A8 */  sw    $zero, 0xa8($s0)
/* AC2D78 8004BBD8 02002025 */  move  $a0, $s0
/* AC2D7C 8004BBDC 0C016911 */  jal   Camera_ChangeModeDefaultFlags
/* AC2D80 8004BBE0 24050001 */   li    $a1, 1
/* AC2D84 8004BBE4 1000027E */  b     .L8004C5E0
/* AC2D88 8004BBE8 24020001 */   li    $v0, 1
.L8004BBEC:
/* AC2D8C 8004BBEC 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC2D90 8004BBF0 846B01C4 */  lh    $t3, 0x1c4($v1)
/* AC2D94 8004BBF4 846C01C2 */  lh    $t4, 0x1c2($v1)
/* AC2D98 8004BBF8 016C6821 */  addu  $t5, $t3, $t4
/* AC2D9C 8004BBFC A62D001A */  sh    $t5, 0x1a($s1)
/* AC2DA0 8004BC00 87AE00A2 */  lh    $t6, 0xa2($sp)
/* AC2DA4 8004BC04 A62E0016 */  sh    $t6, 0x16($s1)
/* AC2DA8 8004BC08 87AF00A0 */  lh    $t7, 0xa0($sp)
/* AC2DAC 8004BC0C A62F0018 */  sh    $t7, 0x18($s1)
/* AC2DB0 8004BC10 C7A6009C */  lwc1  $f6, 0x9c($sp)
/* AC2DB4 8004BC14 E6260000 */  swc1  $f6, ($s1)
/* AC2DB8 8004BC18 C60800F4 */  lwc1  $f8, 0xf4($s0)
/* AC2DBC 8004BC1C C60A0098 */  lwc1  $f10, 0x98($s0)
/* AC2DC0 8004BC20 46085101 */  sub.s $f4, $f10, $f8
/* AC2DC4 8004BC24 E6240008 */  swc1  $f4, 8($s1)
/* AC2DC8 8004BC28 86180140 */  lh    $t8, 0x140($s0)
.L8004BC2C:
/* AC2DCC 8004BC2C 24010007 */  li    $at, 7
/* AC2DD0 8004BC30 24090001 */  li    $t1, 1
/* AC2DD4 8004BC34 5701000B */  bnel  $t8, $at, .L8004BC64
/* AC2DD8 8004BC38 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2DDC 8004BC3C 87B900A0 */  lh    $t9, 0xa0($sp)
/* AC2DE0 8004BC40 3C018012 */  lui   $at, %hi(sUpdateCameraDirection) # $at, 0x8012
/* AC2DE4 8004BC44 AC29D3E8 */  sw    $t1, %lo(sUpdateCameraDirection)($at)
/* AC2DE8 8004BC48 00195023 */  negu  $t2, $t9
/* AC2DEC 8004BC4C A60A0134 */  sh    $t2, 0x134($s0)
/* AC2DF0 8004BC50 87AB00A2 */  lh    $t3, 0xa2($sp)
/* AC2DF4 8004BC54 A6000138 */  sh    $zero, 0x138($s0)
/* AC2DF8 8004BC58 256C8001 */  addiu $t4, $t3, -0x7fff
/* AC2DFC 8004BC5C A60C0136 */  sh    $t4, 0x136($s0)
/* AC2E00 8004BC60 C6060098 */  lwc1  $f6, 0x98($s0)
.L8004BC64:
/* AC2E04 8004BC64 C60A0104 */  lwc1  $f10, 0x104($s0)
/* AC2E08 8004BC68 460A3032 */  c.eq.s $f6, $f10
/* AC2E0C 8004BC6C 00000000 */  nop
/* AC2E10 8004BC70 4503000F */  bc1tl .L8004BCB0
/* AC2E14 8004BC74 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2E18 8004BC78 8E040090 */  lw    $a0, 0x90($s0)
/* AC2E1C 8004BC7C 3C018014 */  lui   $at, %hi(D_8013A00C)
/* AC2E20 8004BC80 C428A00C */  lwc1  $f8, %lo(D_8013A00C)($at)
/* AC2E24 8004BC84 C484006C */  lwc1  $f4, 0x6c($a0)
/* AC2E28 8004BC88 4604403C */  c.lt.s $f8, $f4
/* AC2E2C 8004BC8C 00000000 */  nop
/* AC2E30 8004BC90 45030007 */  bc1tl .L8004BCB0
/* AC2E34 8004BC94 C6060098 */   lwc1  $f6, 0x98($s0)
/* AC2E38 8004BC98 8C8D067C */  lw    $t5, 0x67c($a0)
/* AC2E3C 8004BC9C 24060001 */  li    $a2, 1
/* AC2E40 8004BCA0 000D7280 */  sll   $t6, $t5, 0xa
/* AC2E44 8004BCA4 05C10005 */  bgez  $t6, .L8004BCBC
/* AC2E48 8004BCA8 00000000 */   nop
/* AC2E4C 8004BCAC C6060098 */  lwc1  $f6, 0x98($s0)
.L8004BCB0:
/* AC2E50 8004BCB0 00003025 */  move  $a2, $zero
/* AC2E54 8004BCB4 10000001 */  b     .L8004BCBC
/* AC2E58 8004BCB8 E6260008 */   swc1  $f6, 8($s1)
.L8004BCBC:
/* AC2E5C 8004BCBC 862F001A */  lh    $t7, 0x1a($s1)
/* AC2E60 8004BCC0 02002025 */  move  $a0, $s0
/* AC2E64 8004BCC4 55E0000C */  bnezl $t7, .L8004BCF8
/* AC2E68 8004BCC8 260400AC */   addiu $a0, $s0, 0xac
/* AC2E6C 8004BCCC 50C00004 */  beql  $a2, $zero, .L8004BCE0
/* AC2E70 8004BCD0 C6020020 */   lwc1  $f2, 0x20($s0)
/* AC2E74 8004BCD4 10000002 */  b     .L8004BCE0
/* AC2E78 8004BCD8 C6020028 */   lwc1  $f2, 0x28($s0)
/* AC2E7C 8004BCDC C6020020 */  lwc1  $f2, 0x20($s0)
.L8004BCE0:
/* AC2E80 8004BCE0 44051000 */  mfc1  $a1, $f2
/* AC2E84 8004BCE4 0C011429 */  jal   Camera_ClampLERPScale
/* AC2E88 8004BCE8 A7A60084 */   sh    $a2, 0x84($sp)
/* AC2E8C 8004BCEC 87A60084 */  lh    $a2, 0x84($sp)
/* AC2E90 8004BCF0 E6000100 */  swc1  $f0, 0x100($s0)
/* AC2E94 8004BCF4 260400AC */  addiu $a0, $s0, 0xac
.L8004BCF8:
/* AC2E98 8004BCF8 8E0500A8 */  lw    $a1, 0xa8($s0)
/* AC2E9C 8004BCFC A7A60084 */  sh    $a2, 0x84($sp)
/* AC2EA0 8004BD00 0C00BBB9 */  jal   func_8002EEE4
/* AC2EA4 8004BD04 AFA40038 */   sw    $a0, 0x38($sp)
/* AC2EA8 8004BD08 8E0300A8 */  lw    $v1, 0xa8($s0)
/* AC2EAC 8004BD0C 8E27000C */  lw    $a3, 0xc($s1)
/* AC2EB0 8004BD10 87A60084 */  lh    $a2, 0x84($sp)
/* AC2EB4 8004BD14 02002025 */  move  $a0, $s0
/* AC2EB8 8004BD18 10670009 */  beq   $v1, $a3, .L8004BD40
/* AC2EBC 8004BD1C 27A50094 */   addiu $a1, $sp, 0x94
/* AC2EC0 8004BD20 3C048014 */  lui   $a0, %hi(D_80139218) # $a0, 0x8014
/* AC2EC4 8004BD24 24849218 */  addiu $a0, %lo(D_80139218) # addiu $a0, $a0, -0x6de8
/* AC2EC8 8004BD28 84E50000 */  lh    $a1, ($a3)
/* AC2ECC 8004BD2C 0C00084C */  jal   osSyncPrintf
/* AC2ED0 8004BD30 84660000 */   lh    $a2, ($v1)
/* AC2ED4 8004BD34 A600015E */  sh    $zero, 0x15e($s0)
/* AC2ED8 8004BD38 10000229 */  b     .L8004C5E0
/* AC2EDC 8004BD3C 24020001 */   li    $v0, 1
.L8004BD40:
/* AC2EE0 8004BD40 10C00003 */  beqz  $a2, .L8004BD50
/* AC2EE4 8004BD44 26030094 */   addiu $v1, $s0, 0x94
/* AC2EE8 8004BD48 10000002 */  b     .L8004BD54
/* AC2EEC 8004BD4C C6020024 */   lwc1  $f2, 0x24($s0)
.L8004BD50:
/* AC2EF0 8004BD50 C6020000 */  lwc1  $f2, ($s0)
.L8004BD54:
/* AC2EF4 8004BD54 10C00003 */  beqz  $a2, .L8004BD64
/* AC2EF8 8004BD58 C7AA0080 */   lwc1  $f10, 0x80($sp)
/* AC2EFC 8004BD5C 10000002 */  b     .L8004BD68
/* AC2F00 8004BD60 24020081 */   li    $v0, 129
.L8004BD64:
/* AC2F04 8004BD64 24020001 */  li    $v0, 1
.L8004BD68:
/* AC2F08 8004BD68 26380008 */  addiu $t8, $s1, 8
/* AC2F0C 8004BD6C 27A900A4 */  addiu $t1, $sp, 0xa4
/* AC2F10 8004BD70 AFA90018 */  sw    $t1, 0x18($sp)
/* AC2F14 8004BD74 AFB80014 */  sw    $t8, 0x14($sp)
/* AC2F18 8004BD78 E7AA0010 */  swc1  $f10, 0x10($sp)
/* AC2F1C 8004BD7C 8619002C */  lh    $t9, 0x2c($s0)
/* AC2F20 8004BD80 44071000 */  mfc1  $a3, $f2
/* AC2F24 8004BD84 AFA30040 */  sw    $v1, 0x40($sp)
/* AC2F28 8004BD88 00595025 */  or    $t2, $v0, $t9
/* AC2F2C 8004BD8C AFAA001C */  sw    $t2, 0x1c($sp)
/* AC2F30 8004BD90 0C01182A */  jal   func_800460A8
/* AC2F34 8004BD94 8FA60038 */   lw    $a2, 0x38($sp)
/* AC2F38 8004BD98 8FA30040 */  lw    $v1, 0x40($sp)
/* AC2F3C 8004BD9C 87A800AA */  lh    $t0, 0xaa($sp)
/* AC2F40 8004BDA0 27A5011C */  addiu $a1, $sp, 0x11c
/* AC2F44 8004BDA4 8C6C0000 */  lw    $t4, ($v1)
/* AC2F48 8004BDA8 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC2F4C 8004BDAC ACAC0000 */  sw    $t4, ($a1)
/* AC2F50 8004BDB0 8C6B0004 */  lw    $t3, 4($v1)
/* AC2F54 8004BDB4 ACAB0004 */  sw    $t3, 4($a1)
/* AC2F58 8004BDB8 8C6C0008 */  lw    $t4, 8($v1)
/* AC2F5C 8004BDBC ACAC0008 */  sw    $t4, 8($a1)
/* AC2F60 8004BDC0 C7A80120 */  lwc1  $f8, 0x120($sp)
/* AC2F64 8004BDC4 C7A40064 */  lwc1  $f4, 0x64($sp)
/* AC2F68 8004BDC8 8FA60038 */  lw    $a2, 0x38($sp)
/* AC2F6C 8004BDCC A7A8008C */  sh    $t0, 0x8c($sp)
/* AC2F70 8004BDD0 46044180 */  add.s $f6, $f8, $f4
/* AC2F74 8004BDD4 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC2F78 8004BDD8 E7A60120 */   swc1  $f6, 0x120($sp)
/* AC2F7C 8004BDDC C7A000A4 */  lwc1  $f0, 0xa4($sp)
/* AC2F80 8004BDE0 C7A20080 */  lwc1  $f2, 0x80($sp)
/* AC2F84 8004BDE4 87A8008C */  lh    $t0, 0x8c($sp)
/* AC2F88 8004BDE8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC2F8C 8004BDEC 4600103C */  c.lt.s $f2, $f0
/* AC2F90 8004BDF0 00000000 */  nop
/* AC2F94 8004BDF4 45020005 */  bc1fl .L8004BE0C
/* AC2F98 8004BDF8 46020203 */   div.s $f8, $f0, $f2
/* AC2F9C 8004BDFC 44815000 */  mtc1  $at, $f10
/* AC2FA0 8004BE00 10000003 */  b     .L8004BE10
/* AC2FA4 8004BE04 E7AA00E4 */   swc1  $f10, 0xe4($sp)
/* AC2FA8 8004BE08 46020203 */  div.s $f8, $f0, $f2
.L8004BE0C:
/* AC2FAC 8004BE0C E7A800E4 */  swc1  $f8, 0xe4($sp)
.L8004BE10:
/* AC2FB0 8004BE10 8FAD0038 */  lw    $t5, 0x38($sp)
/* AC2FB4 8004BE14 27A60110 */  addiu $a2, $sp, 0x110
/* AC2FB8 8004BE18 27A400AC */  addiu $a0, $sp, 0xac
/* AC2FBC 8004BE1C 8DAF0000 */  lw    $t7, ($t5)
/* AC2FC0 8004BE20 ACCF0000 */  sw    $t7, ($a2)
/* AC2FC4 8004BE24 8DAE0004 */  lw    $t6, 4($t5)
/* AC2FC8 8004BE28 ACCE0004 */  sw    $t6, 4($a2)
/* AC2FCC 8004BE2C 8DAF0008 */  lw    $t7, 8($t5)
/* AC2FD0 8004BE30 ACCF0008 */  sw    $t7, 8($a2)
/* AC2FD4 8004BE34 A7A8008C */  sh    $t0, 0x8c($sp)
/* AC2FD8 8004BE38 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC2FDC 8004BE3C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC2FE0 8004BE40 C7AC00AC */  lwc1  $f12, 0xac($sp)
/* AC2FE4 8004BE44 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AC2FE8 8004BE48 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC2FEC 8004BE4C 44815000 */  mtc1  $at, $f10
/* AC2FF0 8004BE50 4604603E */  c.le.s $f12, $f4
/* AC2FF4 8004BE54 87A8008C */  lh    $t0, 0x8c($sp)
/* AC2FF8 8004BE58 C7A20080 */  lwc1  $f2, 0x80($sp)
/* AC2FFC 8004BE5C 45000003 */  bc1f  .L8004BE6C
/* AC3000 8004BE60 00000000 */   nop
/* AC3004 8004BE64 10000001 */  b     .L8004BE6C
/* AC3008 8004BE68 46006086 */   mov.s $f2, $f12
.L8004BE6C:
/* AC300C 8004BE6C 460A1202 */  mul.s $f8, $f2, $f10
/* AC3010 8004BE70 C7AC0080 */  lwc1  $f12, 0x80($sp)
/* AC3014 8004BE74 3C018014 */  lui   $at, %hi(D_8013A010)
/* AC3018 8004BE78 C42AA010 */  lwc1  $f10, %lo(D_8013A010)($at)
/* AC301C 8004BE7C 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC3020 8004BE80 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3024 8004BE84 3C018014 */  lui   $at, %hi(D_8013A014)
/* AC3028 8004BE88 46086101 */  sub.s $f4, $f12, $f8
/* AC302C 8004BE8C C7A800E4 */  lwc1  $f8, 0xe4($sp)
/* AC3030 8004BE90 3C074000 */  lui   $a3, 0x4000
/* AC3034 8004BE94 E7A400AC */  swc1  $f4, 0xac($sp)
/* AC3038 8004BE98 46085101 */  sub.s $f4, $f10, $f8
/* AC303C 8004BE9C C60A000C */  lwc1  $f10, 0xc($s0)
/* AC3040 8004BEA0 C6000008 */  lwc1  $f0, 8($s0)
/* AC3044 8004BEA4 847801AE */  lh    $t8, 0x1ae($v1)
/* AC3048 8004BEA8 46005201 */  sub.s $f8, $f10, $f0
/* AC304C 8004BEAC 46044282 */  mul.s $f10, $f8, $f4
/* AC3050 8004BEB0 44984000 */  mtc1  $t8, $f8
/* AC3054 8004BEB4 00000000 */  nop
/* AC3058 8004BEB8 46804120 */  cvt.s.w $f4, $f8
/* AC305C 8004BEBC 460A0480 */  add.s $f18, $f0, $f10
/* AC3060 8004BEC0 46122280 */  add.s $f10, $f4, $f18
/* AC3064 8004BEC4 E7AA00F8 */  swc1  $f10, 0xf8($sp)
/* AC3068 8004BEC8 846901AA */  lh    $t1, 0x1aa($v1)
/* AC306C 8004BECC C42AA014 */  lwc1  $f10, %lo(D_8013A014)($at)
/* AC3070 8004BED0 C60E00DC */  lwc1  $f14, 0xdc($s0)
/* AC3074 8004BED4 44894000 */  mtc1  $t1, $f8
/* AC3078 8004BED8 E7B200F4 */  swc1  $f18, 0xf4($sp)
/* AC307C 8004BEDC A7A8008C */  sh    $t0, 0x8c($sp)
/* AC3080 8004BEE0 46804120 */  cvt.s.w $f4, $f8
/* AC3084 8004BEE4 460A2182 */  mul.s $f6, $f4, $f10
/* AC3088 8004BEE8 44063000 */  mfc1  $a2, $f6
/* AC308C 8004BEEC 0C010E27 */  jal   Camera_LERPCeilF
/* AC3090 8004BEF0 00000000 */   nop
/* AC3094 8004BEF4 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3098 8004BEF8 C7B200F4 */  lwc1  $f18, 0xf4($sp)
/* AC309C 8004BEFC E60000DC */  swc1  $f0, 0xdc($s0)
/* AC30A0 8004BF00 87B9009A */  lh    $t9, 0x9a($sp)
/* AC30A4 8004BF04 87AA00B2 */  lh    $t2, 0xb2($sp)
/* AC30A8 8004BF08 E7A000B4 */  swc1  $f0, 0xb4($sp)
/* AC30AC 8004BF0C 272B8001 */  addiu $t3, $t9, -0x7fff
/* AC30B0 8004BF10 000B6400 */  sll   $t4, $t3, 0x10
/* AC30B4 8004BF14 A7B900BA */  sh    $t9, 0xba($sp)
/* AC30B8 8004BF18 8623001A */  lh    $v1, 0x1a($s1)
/* AC30BC 8004BF1C 000C6C03 */  sra   $t5, $t4, 0x10
/* AC30C0 8004BF20 014D1023 */  subu  $v0, $t2, $t5
/* AC30C4 8004BF24 00022C00 */  sll   $a1, $v0, 0x10
/* AC30C8 8004BF28 1060007B */  beqz  $v1, .L8004C118
/* AC30CC 8004BF2C 00052C03 */   sra   $a1, $a1, 0x10
/* AC30D0 8004BF30 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC30D4 8004BF34 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC30D8 8004BF38 27A400A4 */  addiu $a0, $sp, 0xa4
/* AC30DC 8004BF3C 24190001 */  li    $t9, 1
/* AC30E0 8004BF40 85C201C4 */  lh    $v0, 0x1c4($t6)
/* AC30E4 8004BF44 0062082A */  slt   $at, $v1, $v0
/* AC30E8 8004BF48 1420006F */  bnez  $at, .L8004C108
/* AC30EC 8004BF4C 00627823 */   subu  $t7, $v1, $v0
/* AC30F0 8004BF50 A7AF0086 */  sh    $t7, 0x86($sp)
/* AC30F4 8004BF54 8FA50048 */  lw    $a1, 0x48($sp)
/* AC30F8 8004BF58 8FA6004C */  lw    $a2, 0x4c($sp)
/* AC30FC 8004BF5C 0C01F124 */  jal   OLib_Vec3fDiffToVecSphGeo
/* AC3100 8004BF60 A7A8008C */   sh    $t0, 0x8c($sp)
/* AC3104 8004BF64 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3108 8004BF68 3C038016 */  lui   $v1, %hi(gGameInfo)
/* AC310C 8004BF6C 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3110 8004BF70 25188001 */  addiu $t8, $t0, -0x7fff
/* AC3114 8004BF74 A7B800AA */  sh    $t8, 0xaa($sp)
/* AC3118 8004BF78 846901C2 */  lh    $t1, 0x1c2($v1)
/* AC311C 8004BF7C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3120 8004BF80 44818000 */  mtc1  $at, $f16
/* AC3124 8004BF84 44894000 */  mtc1  $t1, $f8
/* AC3128 8004BF88 87AB00AA */  lh    $t3, 0xaa($sp)
/* AC312C 8004BF8C 86390016 */  lh    $t9, 0x16($s1)
/* AC3130 8004BF90 46804120 */  cvt.s.w $f4, $f8
/* AC3134 8004BF94 C62A0000 */  lwc1  $f10, ($s1)
/* AC3138 8004BF98 032B6023 */  subu  $t4, $t9, $t3
/* AC313C 8004BF9C C7A600A4 */  lwc1  $f6, 0xa4($sp)
/* AC3140 8004BFA0 000C5400 */  sll   $t2, $t4, 0x10
/* AC3144 8004BFA4 000A6C03 */  sra   $t5, $t2, 0x10
/* AC3148 8004BFA8 46048003 */  div.s $f0, $f16, $f4
/* AC314C 8004BFAC 448D2000 */  mtc1  $t5, $f4
/* AC3150 8004BFB0 87A900A8 */  lh    $t1, 0xa8($sp)
/* AC3154 8004BFB4 87AD0086 */  lh    $t5, 0x86($sp)
/* AC3158 8004BFB8 46065201 */  sub.s $f8, $f10, $f6
/* AC315C 8004BFBC 3C018014 */  lui   $at, %hi(D_8013A018)
/* AC3160 8004BFC0 44078000 */  mfc1  $a3, $f16
/* AC3164 8004BFC4 468022A0 */  cvt.s.w $f10, $f4
/* AC3168 8004BFC8 C7AE009C */  lwc1  $f14, 0x9c($sp)
/* AC316C 8004BFCC 46004082 */  mul.s $f2, $f8, $f0
/* AC3170 8004BFD0 00000000 */  nop
/* AC3174 8004BFD4 46005202 */  mul.s $f8, $f10, $f0
/* AC3178 8004BFD8 4600410D */  trunc.w.s $f4, $f8
/* AC317C 8004BFDC 440F2000 */  mfc1  $t7, $f4
/* AC3180 8004BFE0 00000000 */  nop
/* AC3184 8004BFE4 A7AF008E */  sh    $t7, 0x8e($sp)
/* AC3188 8004BFE8 86380018 */  lh    $t8, 0x18($s1)
/* AC318C 8004BFEC 846E01CC */  lh    $t6, 0x1cc($v1)
/* AC3190 8004BFF0 0309C823 */  subu  $t9, $t8, $t1
/* AC3194 8004BFF4 00195C00 */  sll   $t3, $t9, 0x10
/* AC3198 8004BFF8 000B6403 */  sra   $t4, $t3, 0x10
/* AC319C 8004BFFC 448C5000 */  mtc1  $t4, $f10
/* AC31A0 8004C000 00000000 */  nop
/* AC31A4 8004C004 46805220 */  cvt.s.w $f8, $f10
/* AC31A8 8004C008 46004102 */  mul.s $f4, $f8, $f0
/* AC31AC 8004C00C 448D4000 */  mtc1  $t5, $f8
/* AC31B0 8004C010 4600228D */  trunc.w.s $f10, $f4
/* AC31B4 8004C014 46804120 */  cvt.s.w $f4, $f8
/* AC31B8 8004C018 44085000 */  mfc1  $t0, $f10
/* AC31BC 8004C01C 448E4000 */  mtc1  $t6, $f8
/* AC31C0 8004C020 00084400 */  sll   $t0, $t0, 0x10
/* AC31C4 8004C024 00084403 */  sra   $t0, $t0, 0x10
/* AC31C8 8004C028 46022282 */  mul.s $f10, $f4, $f2
/* AC31CC 8004C02C A7A8008C */  sh    $t0, 0x8c($sp)
/* AC31D0 8004C030 46804120 */  cvt.s.w $f4, $f8
/* AC31D4 8004C034 46065300 */  add.s $f12, $f10, $f6
/* AC31D8 8004C038 C42AA018 */  lwc1  $f10, %lo(D_8013A018)($at)
/* AC31DC 8004C03C 460A2182 */  mul.s $f6, $f4, $f10
/* AC31E0 8004C040 44063000 */  mfc1  $a2, $f6
/* AC31E4 8004C044 0C010E27 */  jal   Camera_LERPCeilF
/* AC31E8 8004C048 00000000 */   nop
/* AC31EC 8004C04C 3C0B8016 */  lui   $t3, %hi(gGameInfo) # $t3, 0x8016
/* AC31F0 8004C050 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC31F4 8004C054 E7A000B4 */  swc1  $f0, 0xb4($sp)
/* AC31F8 8004C058 87AF008E */  lh    $t7, 0x8e($sp)
/* AC31FC 8004C05C 856C01CC */  lh    $t4, 0x1cc($t3)
/* AC3200 8004C060 87B80086 */  lh    $t8, 0x86($sp)
/* AC3204 8004C064 3C018014 */  lui   $at, %hi(D_8013A01C)
/* AC3208 8004C068 448C4000 */  mtc1  $t4, $f8
/* AC320C 8004C06C 01F80019 */  multu $t7, $t8
/* AC3210 8004C070 C42AA01C */  lwc1  $f10, %lo(D_8013A01C)($at)
/* AC3214 8004C074 46804120 */  cvt.s.w $f4, $f8
/* AC3218 8004C078 87B900AA */  lh    $t9, 0xaa($sp)
/* AC321C 8004C07C 87A500A2 */  lh    $a1, 0xa2($sp)
/* AC3220 8004C080 2407000A */  li    $a3, 10
/* AC3224 8004C084 460A2182 */  mul.s $f6, $f4, $f10
/* AC3228 8004C088 00004812 */  mflo  $t1
/* AC322C 8004C08C 03292021 */  addu  $a0, $t9, $t1
/* AC3230 8004C090 00042400 */  sll   $a0, $a0, 0x10
/* AC3234 8004C094 00042403 */  sra   $a0, $a0, 0x10
/* AC3238 8004C098 44063000 */  mfc1  $a2, $f6
/* AC323C 8004C09C 0C010E47 */  jal   Camera_LERPCeilS
/* AC3240 8004C0A0 00000000 */   nop
/* AC3244 8004C0A4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* AC3248 8004C0A8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* AC324C 8004C0AC A7A200BA */  sh    $v0, 0xba($sp)
/* AC3250 8004C0B0 87A8008C */  lh    $t0, 0x8c($sp)
/* AC3254 8004C0B4 85F801CC */  lh    $t8, 0x1cc($t7)
/* AC3258 8004C0B8 87AD0086 */  lh    $t5, 0x86($sp)
/* AC325C 8004C0BC 3C018014 */  lui   $at, %hi(D_8013A020)
/* AC3260 8004C0C0 44984000 */  mtc1  $t8, $f8
/* AC3264 8004C0C4 010D0019 */  multu $t0, $t5
/* AC3268 8004C0C8 C42AA020 */  lwc1  $f10, %lo(D_8013A020)($at)
/* AC326C 8004C0CC 46804120 */  cvt.s.w $f4, $f8
/* AC3270 8004C0D0 87AA00A8 */  lh    $t2, 0xa8($sp)
/* AC3274 8004C0D4 87A500A0 */  lh    $a1, 0xa0($sp)
/* AC3278 8004C0D8 2407000A */  li    $a3, 10
/* AC327C 8004C0DC 460A2182 */  mul.s $f6, $f4, $f10
/* AC3280 8004C0E0 00007012 */  mflo  $t6
/* AC3284 8004C0E4 014E2021 */  addu  $a0, $t2, $t6
/* AC3288 8004C0E8 00042400 */  sll   $a0, $a0, 0x10
/* AC328C 8004C0EC 00042403 */  sra   $a0, $a0, 0x10
/* AC3290 8004C0F0 44063000 */  mfc1  $a2, $f6
/* AC3294 8004C0F4 0C010E47 */  jal   Camera_LERPCeilS
/* AC3298 8004C0F8 00000000 */   nop
/* AC329C 8004C0FC A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC32A0 8004C100 10000002 */  b     .L8004C10C
/* AC32A4 8004C104 8623001A */   lh    $v1, 0x1a($s1)
.L8004C108:
/* AC32A8 8004C108 AFB900E8 */  sw    $t9, 0xe8($sp)
.L8004C10C:
/* AC32AC 8004C10C 2469FFFF */  addiu $t1, $v1, -1
/* AC32B0 8004C110 10000075 */  b     .L8004C2E8
/* AC32B4 8004C114 A629001A */   sh    $t1, 0x1a($s1)
.L8004C118:
/* AC32B8 8004C118 00022400 */  sll   $a0, $v0, 0x10
/* AC32BC 8004C11C 00042403 */  sra   $a0, $a0, 0x10
/* AC32C0 8004C120 04800003 */  bltz  $a0, .L8004C130
/* AC32C4 8004C124 3C018014 */   lui   $at, %hi(D_8013A024)
/* AC32C8 8004C128 10000002 */  b     .L8004C134
/* AC32CC 8004C12C 00801025 */   move  $v0, $a0
.L8004C130:
/* AC32D0 8004C130 00041023 */  negu  $v0, $a0
.L8004C134:
/* AC32D4 8004C134 C428A024 */  lwc1  $f8, %lo(D_8013A024)($at)
/* AC32D8 8004C138 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC32DC 8004C13C 44815000 */  mtc1  $at, $f10
/* AC32E0 8004C140 46089102 */  mul.s $f4, $f18, $f8
/* AC32E4 8004C144 460A2180 */  add.s $f6, $f4, $f10
/* AC32E8 8004C148 4600320D */  trunc.w.s $f8, $f6
/* AC32EC 8004C14C 44034000 */  mfc1  $v1, $f8
/* AC32F0 8004C150 00000000 */  nop
/* AC32F4 8004C154 00031C00 */  sll   $v1, $v1, 0x10
/* AC32F8 8004C158 00031C03 */  sra   $v1, $v1, 0x10
/* AC32FC 8004C15C 0062082A */  slt   $at, $v1, $v0
/* AC3300 8004C160 50200049 */  beql  $at, $zero, .L8004C288
/* AC3304 8004C164 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* AC3308 8004C168 44852000 */  mtc1  $a1, $f4
/* AC330C 8004C16C 3C018014 */  lui   $at, %hi(D_8013A028)
/* AC3310 8004C170 C426A028 */  lwc1  $f6, %lo(D_8013A028)($at)
/* AC3314 8004C174 468022A0 */  cvt.s.w $f10, $f4
/* AC3318 8004C178 C7AC00AC */  lwc1  $f12, 0xac($sp)
/* AC331C 8004C17C C7AE00B4 */  lwc1  $f14, 0xb4($sp)
/* AC3320 8004C180 A7A5008E */  sh    $a1, 0x8e($sp)
/* AC3324 8004C184 E7B200F4 */  swc1  $f18, 0xf4($sp)
/* AC3328 8004C188 46065402 */  mul.s $f16, $f10, $f6
/* AC332C 8004C18C 0C01F02A */  jal   OLib_ClampMaxDist
/* AC3330 8004C190 E7B000FC */   swc1  $f16, 0xfc($sp)
/* AC3334 8004C194 C7A800B4 */  lwc1  $f8, 0xb4($sp)
/* AC3338 8004C198 C7B200F4 */  lwc1  $f18, 0xf4($sp)
/* AC333C 8004C19C C7AA00F8 */  lwc1  $f10, 0xf8($sp)
/* AC3340 8004C1A0 46080103 */  div.s $f4, $f0, $f8
/* AC3344 8004C1A4 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC3348 8004C1A8 C7B000FC */  lwc1  $f16, 0xfc($sp)
/* AC334C 8004C1AC 87AC008E */  lh    $t4, 0x8e($sp)
/* AC3350 8004C1B0 46125181 */  sub.s $f6, $f10, $f18
/* AC3354 8004C1B4 87AE009A */  lh    $t6, 0x9a($sp)
/* AC3358 8004C1B8 25D98001 */  addiu $t9, $t6, -0x7fff
/* AC335C 8004C1BC 46062202 */  mul.s $f8, $f4, $f6
/* AC3360 8004C1C0 44812000 */  mtc1  $at, $f4
/* AC3364 8004C1C4 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC3368 8004C1C8 46124080 */  add.s $f2, $f8, $f18
/* AC336C 8004C1CC 44814000 */  mtc1  $at, $f8
/* AC3370 8004C1D0 3C014000 */  li    $at, 0x40000000 # 0.000000
/* AC3374 8004C1D4 46021282 */  mul.s $f10, $f2, $f2
/* AC3378 8004C1D8 46045181 */  sub.s $f6, $f10, $f4
/* AC337C 8004C1DC 44812000 */  mtc1  $at, $f4
/* AC3380 8004C1E0 3C0143B4 */  li    $at, 0x43B40000 # 0.000000
/* AC3384 8004C1E4 46081281 */  sub.s $f10, $f2, $f8
/* AC3388 8004C1E8 44814000 */  mtc1  $at, $f8
/* AC338C 8004C1EC 3C018014 */  lui   $at, %hi(D_8013A030)
/* AC3390 8004C1F0 460A3303 */  div.s $f12, $f6, $f10
/* AC3394 8004C1F4 460C4182 */  mul.s $f6, $f8, $f12
/* AC3398 8004C1F8 46062281 */  sub.s $f10, $f4, $f6
/* AC339C 8004C1FC 46106202 */  mul.s $f8, $f12, $f16
/* AC33A0 8004C200 460A4100 */  add.s $f4, $f8, $f10
/* AC33A4 8004C204 46108182 */  mul.s $f6, $f16, $f16
/* AC33A8 8004C208 0580000D */  bltz  $t4, .L8004C240
/* AC33AC 8004C20C 46043383 */   div.s $f14, $f6, $f4
/* AC33B0 8004C210 3C018014 */  lui   $at, %hi(D_8013A02C)
/* AC33B4 8004C214 C428A02C */  lwc1  $f8, %lo(D_8013A02C)($at)
/* AC33B8 8004C218 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC33BC 8004C21C 44813000 */  mtc1  $at, $f6
/* AC33C0 8004C220 46087282 */  mul.s $f10, $f14, $f8
/* AC33C4 8004C224 46065100 */  add.s $f4, $f10, $f6
/* AC33C8 8004C228 4600220D */  trunc.w.s $f8, $f4
/* AC33CC 8004C22C 44084000 */  mfc1  $t0, $f8
/* AC33D0 8004C230 00000000 */  nop
/* AC33D4 8004C234 00084400 */  sll   $t0, $t0, 0x10
/* AC33D8 8004C238 1000000E */  b     .L8004C274
/* AC33DC 8004C23C 00084403 */   sra   $t0, $t0, 0x10
.L8004C240:
/* AC33E0 8004C240 C42AA030 */  lwc1  $f10, %lo(D_8013A030)($at)
/* AC33E4 8004C244 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC33E8 8004C248 44812000 */  mtc1  $at, $f4
/* AC33EC 8004C24C 460A7182 */  mul.s $f6, $f14, $f10
/* AC33F0 8004C250 46043200 */  add.s $f8, $f6, $f4
/* AC33F4 8004C254 4600428D */  trunc.w.s $f10, $f8
/* AC33F8 8004C258 44085000 */  mfc1  $t0, $f10
/* AC33FC 8004C25C 00000000 */  nop
/* AC3400 8004C260 00084400 */  sll   $t0, $t0, 0x10
/* AC3404 8004C264 00084403 */  sra   $t0, $t0, 0x10
/* AC3408 8004C268 00084023 */  negu  $t0, $t0
/* AC340C 8004C26C 00084400 */  sll   $t0, $t0, 0x10
/* AC3410 8004C270 00084403 */  sra   $t0, $t0, 0x10
.L8004C274:
/* AC3414 8004C274 03286021 */  addu  $t4, $t9, $t0
/* AC3418 8004C278 258D8001 */  addiu $t5, $t4, -0x7fff
/* AC341C 8004C27C 1000001A */  b     .L8004C2E8
/* AC3420 8004C280 A7AD00BA */   sh    $t5, 0xba($sp)
/* AC3424 8004C284 3C013F80 */  li    $at, 0x3F800000 # 0.000000
.L8004C288:
/* AC3428 8004C288 44813000 */  mtc1  $at, $f6
/* AC342C 8004C28C C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC3430 8004C290 3C018014 */  lui   $at, %hi(D_8013A034)
/* AC3434 8004C294 C42AA034 */  lwc1  $f10, %lo(D_8013A034)($at)
/* AC3438 8004C298 46043201 */  sub.s $f8, $f6, $f4
/* AC343C 8004C29C 00034023 */  negu  $t0, $v1
/* AC3440 8004C2A0 00084400 */  sll   $t0, $t0, 0x10
/* AC3444 8004C2A4 00084403 */  sra   $t0, $t0, 0x10
/* AC3448 8004C2A8 460A4402 */  mul.s $f16, $f8, $f10
/* AC344C 8004C2AC 04800004 */  bltz  $a0, .L8004C2C0
/* AC3450 8004C2B0 00000000 */   nop
/* AC3454 8004C2B4 00034400 */  sll   $t0, $v1, 0x10
/* AC3458 8004C2B8 10000001 */  b     .L8004C2C0
/* AC345C 8004C2BC 00084403 */   sra   $t0, $t0, 0x10
.L8004C2C0:
/* AC3460 8004C2C0 01047023 */  subu  $t6, $t0, $a0
/* AC3464 8004C2C4 448E3000 */  mtc1  $t6, $f6
/* AC3468 8004C2C8 87AA009A */  lh    $t2, 0x9a($sp)
/* AC346C 8004C2CC 46803120 */  cvt.s.w $f4, $f6
/* AC3470 8004C2D0 46102202 */  mul.s $f8, $f4, $f16
/* AC3474 8004C2D4 4600428D */  trunc.w.s $f10, $f8
/* AC3478 8004C2D8 44095000 */  mfc1  $t1, $f10
/* AC347C 8004C2DC 00000000 */  nop
/* AC3480 8004C2E0 01495823 */  subu  $t3, $t2, $t1
/* AC3484 8004C2E4 A7AB00BA */  sh    $t3, 0xba($sp)
.L8004C2E8:
/* AC3488 8004C2E8 8FAC00E8 */  lw    $t4, 0xe8($sp)
/* AC348C 8004C2EC 87AD00B0 */  lh    $t5, 0xb0($sp)
/* AC3490 8004C2F0 87A50098 */  lh    $a1, 0x98($sp)
/* AC3494 8004C2F4 15800076 */  bnez  $t4, .L8004C4D0
/* AC3498 8004C2F8 2407000A */   li    $a3, 10
/* AC349C 8004C2FC 448D3000 */  mtc1  $t5, $f6
/* AC34A0 8004C300 C6080018 */  lwc1  $f8, 0x18($s0)
/* AC34A4 8004C304 C7AA0078 */  lwc1  $f10, 0x78($sp)
/* AC34A8 8004C308 46803120 */  cvt.s.w $f4, $f6
/* AC34AC 8004C30C C7A6007C */  lwc1  $f6, 0x7c($sp)
/* AC34B0 8004C310 C7A000E4 */  lwc1  $f0, 0xe4($sp)
/* AC34B4 8004C314 3C018014 */  lui   $at, %hi(D_8013A038)
/* AC34B8 8004C318 87AA00A8 */  lh    $t2, 0xa8($sp)
/* AC34BC 8004C31C 46082082 */  mul.s $f2, $f4, $f8
/* AC34C0 8004C320 46065101 */  sub.s $f4, $f10, $f6
/* AC34C4 8004C324 46002202 */  mul.s $f8, $f4, $f0
/* AC34C8 8004C328 C424A038 */  lwc1  $f4, %lo(D_8013A038)($at)
/* AC34CC 8004C32C 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC34D0 8004C330 46064280 */  add.s $f10, $f8, $f6
/* AC34D4 8004C334 44813000 */  mtc1  $at, $f6
/* AC34D8 8004C338 46045202 */  mul.s $f8, $f10, $f4
/* AC34DC 8004C33C 46064280 */  add.s $f10, $f8, $f6
/* AC34E0 8004C340 44813000 */  mtc1  $at, $f6
/* AC34E4 8004C344 44814000 */  mtc1  $at, $f8
/* AC34E8 8004C348 4600510D */  trunc.w.s $f4, $f10
/* AC34EC 8004C34C 46060282 */  mul.s $f10, $f0, $f6
/* AC34F0 8004C350 448A3000 */  mtc1  $t2, $f6
/* AC34F4 8004C354 44192000 */  mfc1  $t9, $f4
/* AC34F8 8004C358 460A4100 */  add.s $f4, $f8, $f10
/* AC34FC 8004C35C 46803220 */  cvt.s.w $f8, $f6
/* AC3500 8004C360 46044282 */  mul.s $f10, $f8, $f4
/* AC3504 8004C364 4600120D */  trunc.w.s $f8, $f2
/* AC3508 8004C368 440C4000 */  mfc1  $t4, $f8
/* AC350C 8004C36C 4600518D */  trunc.w.s $f6, $f10
/* AC3510 8004C370 440D3000 */  mfc1  $t5, $f6
/* AC3514 8004C374 00000000 */  nop
/* AC3518 8004C378 032DC023 */  subu  $t8, $t9, $t5
/* AC351C 8004C37C 030C1021 */  addu  $v0, $t8, $t4
/* AC3520 8004C380 00021C00 */  sll   $v1, $v0, 0x10
/* AC3524 8004C384 00031C03 */  sra   $v1, $v1, 0x10
/* AC3528 8004C388 00022400 */  sll   $a0, $v0, 0x10
/* AC352C 8004C38C 2861D558 */  slti  $at, $v1, -0x2aa8
/* AC3530 8004C390 10200003 */  beqz  $at, .L8004C3A0
/* AC3534 8004C394 00042403 */   sra   $a0, $a0, 0x10
/* AC3538 8004C398 10000005 */  b     .L8004C3B0
/* AC353C 8004C39C 2404D558 */   li    $a0, -10920
.L8004C3A0:
/* AC3540 8004C3A0 28612AA9 */  slti  $at, $v1, 0x2aa9
/* AC3544 8004C3A4 14200002 */  bnez  $at, .L8004C3B0
/* AC3548 8004C3A8 00000000 */   nop
/* AC354C 8004C3AC 24042AA8 */  li    $a0, 10920
.L8004C3B0:
/* AC3550 8004C3B0 0C010E47 */  jal   Camera_LERPCeilS
/* AC3554 8004C3B4 8E260010 */   lw    $a2, 0x10($s1)
/* AC3558 8004C3B8 A7A200B8 */  sh    $v0, 0xb8($sp)
/* AC355C 8004C3BC 8FA40044 */  lw    $a0, 0x44($sp)
/* AC3560 8004C3C0 8FA50048 */  lw    $a1, 0x48($sp)
/* AC3564 8004C3C4 0C010F0A */  jal   Camera_Vec3fVecSphGeoAdd
/* AC3568 8004C3C8 27A600B4 */   addiu $a2, $sp, 0xb4
/* AC356C 8004C3CC 8FB90044 */  lw    $t9, 0x44($sp)
/* AC3570 8004C3D0 27A600BC */  addiu $a2, $sp, 0xbc
/* AC3574 8004C3D4 24010007 */  li    $at, 7
/* AC3578 8004C3D8 8F2E0000 */  lw    $t6, ($t9)
/* AC357C 8004C3DC ACCE0000 */  sw    $t6, ($a2)
/* AC3580 8004C3E0 8F2D0004 */  lw    $t5, 4($t9)
/* AC3584 8004C3E4 ACCD0004 */  sw    $t5, 4($a2)
/* AC3588 8004C3E8 8F2E0008 */  lw    $t6, 8($t9)
/* AC358C 8004C3EC ACCE0008 */  sw    $t6, 8($a2)
/* AC3590 8004C3F0 860F0140 */  lh    $t7, 0x140($s0)
/* AC3594 8004C3F4 8FAA0044 */  lw    $t2, 0x44($sp)
/* AC3598 8004C3F8 55E1002F */  bnel  $t7, $at, .L8004C4B8
/* AC359C 8004C3FC 8FAF004C */   lw    $t7, 0x4c($sp)
/* AC35A0 8004C400 8E0A008C */  lw    $t2, 0x8c($s0)
/* AC35A4 8004C404 3C090001 */  lui   $t1, 1
/* AC35A8 8004C408 02002025 */  move  $a0, $s0
/* AC35AC 8004C40C 012A4821 */  addu  $t1, $t1, $t2
/* AC35B0 8004C410 91290A39 */  lbu   $t1, 0xa39($t1)
/* AC35B4 8004C414 11200005 */  beqz  $t1, .L8004C42C
/* AC35B8 8004C418 00000000 */   nop
/* AC35BC 8004C41C 8602002C */  lh    $v0, 0x2c($s0)
/* AC35C0 8004C420 304B0001 */  andi  $t3, $v0, 1
/* AC35C4 8004C424 11600005 */  beqz  $t3, .L8004C43C
/* AC35C8 8004C428 30580002 */   andi  $t8, $v0, 2
.L8004C42C:
/* AC35CC 8004C42C 0C010F46 */  jal   func_80043D18
/* AC35D0 8004C430 8FA50048 */   lw    $a1, 0x48($sp)
/* AC35D4 8004C434 10000017 */  b     .L8004C494
/* AC35D8 8004C438 27B900BC */   addiu $t9, $sp, 0xbc
.L8004C43C:
/* AC35DC 8004C43C 13000006 */  beqz  $t8, .L8004C458
/* AC35E0 8004C440 27A40128 */   addiu $a0, $sp, 0x128
/* AC35E4 8004C444 02002025 */  move  $a0, $s0
/* AC35E8 8004C448 0C010FE5 */  jal   func_80043F94
/* AC35EC 8004C44C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC35F0 8004C450 10000010 */  b     .L8004C494
/* AC35F4 8004C454 27B900BC */   addiu $t9, $sp, 0xbc
.L8004C458:
/* AC35F8 8004C458 0C01F03E */  jal   OLib_Vec3fDistNormalize
/* AC35FC 8004C45C 8FA50048 */   lw    $a1, 0x48($sp)
/* AC3600 8004C460 C7A400BC */  lwc1  $f4, 0xbc($sp)
/* AC3604 8004C464 C7AA0128 */  lwc1  $f10, 0x128($sp)
/* AC3608 8004C468 C7A800C0 */  lwc1  $f8, 0xc0($sp)
/* AC360C 8004C46C 460A2181 */  sub.s $f6, $f4, $f10
/* AC3610 8004C470 C7A4012C */  lwc1  $f4, 0x12c($sp)
/* AC3614 8004C474 46044281 */  sub.s $f10, $f8, $f4
/* AC3618 8004C478 E7A600BC */  swc1  $f6, 0xbc($sp)
/* AC361C 8004C47C C7A600C4 */  lwc1  $f6, 0xc4($sp)
/* AC3620 8004C480 C7A80130 */  lwc1  $f8, 0x130($sp)
/* AC3624 8004C484 E7AA00C0 */  swc1  $f10, 0xc0($sp)
/* AC3628 8004C488 46083101 */  sub.s $f4, $f6, $f8
/* AC362C 8004C48C E7A400C4 */  swc1  $f4, 0xc4($sp)
/* AC3630 8004C490 27B900BC */  addiu $t9, $sp, 0xbc
.L8004C494:
/* AC3634 8004C494 8F2E0000 */  lw    $t6, ($t9)
/* AC3638 8004C498 8FAC004C */  lw    $t4, 0x4c($sp)
/* AC363C 8004C49C AD8E0000 */  sw    $t6, ($t4)
/* AC3640 8004C4A0 8F2D0004 */  lw    $t5, 4($t9)
/* AC3644 8004C4A4 AD8D0004 */  sw    $t5, 4($t4)
/* AC3648 8004C4A8 8F2E0008 */  lw    $t6, 8($t9)
/* AC364C 8004C4AC 10000008 */  b     .L8004C4D0
/* AC3650 8004C4B0 AD8E0008 */   sw    $t6, 8($t4)
/* AC3654 8004C4B4 8FAF004C */  lw    $t7, 0x4c($sp)
.L8004C4B8:
/* AC3658 8004C4B8 8D4B0000 */  lw    $t3, ($t2)
/* AC365C 8004C4BC ADEB0000 */  sw    $t3, ($t7)
/* AC3660 8004C4C0 8D490004 */  lw    $t1, 4($t2)
/* AC3664 8004C4C4 ADE90004 */  sw    $t1, 4($t7)
/* AC3668 8004C4C8 8D4B0008 */  lw    $t3, 8($t2)
/* AC366C 8004C4CC ADEB0008 */  sw    $t3, 8($t7)
.L8004C4D0:
/* AC3670 8004C4D0 3C038016 */  lui   $v1, %hi(gGameInfo) # $v1, 0x8016
/* AC3674 8004C4D4 8C63FA90 */  lw    $v1, %lo(gGameInfo)($v1)
/* AC3678 8004C4D8 C60800E0 */  lwc1  $f8, 0xe0($s0)
/* AC367C 8004C4DC 3C013F80 */  lui   $at, 0x3f80
/* AC3680 8004C4E0 847801DC */  lh    $t8, 0x1dc($v1)
/* AC3684 8004C4E4 846C01DE */  lh    $t4, 0x1de($v1)
/* AC3688 8004C4E8 C6200004 */  lwc1  $f0, 4($s1)
/* AC368C 8004C4EC 44985000 */  mtc1  $t8, $f10
/* AC3690 8004C4F0 3C0A8016 */  lui   $t2, %hi(gSaveContext+0x30)
/* AC3694 8004C4F4 468051A0 */  cvt.s.w $f6, $f10
/* AC3698 8004C4F8 44815000 */  mtc1  $at, $f10
/* AC369C 8004C4FC 3C018014 */  lui   $at, %hi(D_8013A03C)
/* AC36A0 8004C500 46083102 */  mul.s $f4, $f6, $f8
/* AC36A4 8004C504 C7A600E4 */  lwc1  $f6, 0xe4($sp)
/* AC36A8 8004C508 46065201 */  sub.s $f8, $f10, $f6
/* AC36AC 8004C50C 46082282 */  mul.s $f10, $f4, $f8
/* AC36B0 8004C510 448C2000 */  mtc1  $t4, $f4
/* AC36B4 8004C514 00000000 */  nop
/* AC36B8 8004C518 46802220 */  cvt.s.w $f8, $f4
/* AC36BC 8004C51C 46005181 */  sub.s $f6, $f10, $f0
/* AC36C0 8004C520 C42AA03C */  lwc1  $f10, %lo(D_8013A03C)($at)
/* AC36C4 8004C524 3C018014 */  lui   $at, %hi(D_8013A040)
/* AC36C8 8004C528 460A4102 */  mul.s $f4, $f8, $f10
/* AC36CC 8004C52C 00000000 */  nop
/* AC36D0 8004C530 46043202 */  mul.s $f8, $f6, $f4
/* AC36D4 8004C534 46080280 */  add.s $f10, $f0, $f8
/* AC36D8 8004C538 E62A0004 */  swc1  $f10, 4($s1)
/* AC36DC 8004C53C C424A040 */  lwc1  $f4, %lo(D_8013A040)($at)
/* AC36E0 8004C540 C6260004 */  lwc1  $f6, 4($s1)
/* AC36E4 8004C544 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC36E8 8004C548 44815000 */  mtc1  $at, $f10
/* AC36EC 8004C54C 46043202 */  mul.s $f8, $f6, $f4
/* AC36F0 8004C550 3C018014 */  lui   $at, %hi(D_8013A044)
/* AC36F4 8004C554 460A4180 */  add.s $f6, $f8, $f10
/* AC36F8 8004C558 4600310D */  trunc.w.s $f4, $f6
/* AC36FC 8004C55C 440D2000 */  mfc1  $t5, $f4
/* AC3700 8004C560 00000000 */  nop
/* AC3704 8004C564 A60D015A */  sh    $t5, 0x15a($s0)
/* AC3708 8004C568 8FAE0088 */  lw    $t6, 0x88($sp)
/* AC370C 8004C56C C7A80074 */  lwc1  $f8, 0x74($sp)
/* AC3710 8004C570 81CF0843 */  lb    $t7, 0x843($t6)
/* AC3714 8004C574 11E00003 */  beqz  $t7, .L8004C584
/* AC3718 8004C578 00000000 */   nop
/* AC371C 8004C57C 1000000B */  b     .L8004C5AC
/* AC3720 8004C580 C422A044 */   lwc1  $f2, %lo(D_8013A044)($at)
.L8004C584:
/* AC3724 8004C584 854AE690 */  lh    $t2, %lo(gSaveContext+0x30)($t2)
/* AC3728 8004C588 29410011 */  slti  $at, $t2, 0x11
/* AC372C 8004C58C 10200003 */  beqz  $at, .L8004C59C
/* AC3730 8004C590 3C018014 */   lui   $at, %hi(D_8013A048)
/* AC3734 8004C594 10000004 */  b     .L8004C5A8
/* AC3738 8004C598 C420A048 */   lwc1  $f0, %lo(D_8013A048)($at)
.L8004C59C:
/* AC373C 8004C59C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3740 8004C5A0 44810000 */  mtc1  $at, $f0
/* AC3744 8004C5A4 00000000 */  nop
.L8004C5A8:
/* AC3748 8004C5A8 46000086 */  mov.s $f2, $f0
.L8004C5AC:
/* AC374C 8004C5AC 3C018014 */  lui   $at, %hi(D_8013A04C)
/* AC3750 8004C5B0 C42AA04C */  lwc1  $f10, %lo(D_8013A04C)($at)
/* AC3754 8004C5B4 C7A400E4 */  lwc1  $f4, 0xe4($sp)
/* AC3758 8004C5B8 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC375C 8004C5BC 460A4182 */  mul.s $f6, $f8, $f10
/* AC3760 8004C5C0 8E0600D4 */  lw    $a2, 0xd4($s0)
/* AC3764 8004C5C4 3C073F80 */  lui   $a3, 0x3f80
/* AC3768 8004C5C8 46043282 */  mul.s $f10, $f6, $f4
/* AC376C 8004C5CC 460A4181 */  sub.s $f6, $f8, $f10
/* AC3770 8004C5D0 46061302 */  mul.s $f12, $f2, $f6
/* AC3774 8004C5D4 0C010E27 */  jal   Camera_LERPCeilF
/* AC3778 8004C5D8 00000000 */   nop
/* AC377C 8004C5DC E60000FC */  swc1  $f0, 0xfc($s0)
.L8004C5E0:
/* AC3780 8004C5E0 8FBF002C */  lw    $ra, 0x2c($sp)
/* AC3784 8004C5E4 8FB00024 */  lw    $s0, 0x24($sp)
/* AC3788 8004C5E8 8FB10028 */  lw    $s1, 0x28($sp)
/* AC378C 8004C5EC 03E00008 */  jr    $ra
/* AC3790 8004C5F0 27BD0140 */   addiu $sp, $sp, 0x140

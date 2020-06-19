.late_rodata
glabel D_8013A050
    .float 0.01

glabel D_8013A054
    .float 182.041671753
    .float 0.01
    .float 0.01

glabel D_8013A060
    .float 0.01

glabel D_8013A064
    .float 0.025

glabel D_8013A068
    .float 0.01

glabel D_8013A06C
    .float 0.01

glabel D_8013A070
    .float 0.01

glabel D_8013A074
    .float 9.99999974738e-05

.text
glabel Camera_Battle4
/* AC37D4 8004C634 27BDFF88 */  addiu $sp, $sp, -0x78
/* AC37D8 8004C638 AFB00018 */  sw    $s0, 0x18($sp)
/* AC37DC 8004C63C 00808025 */  move  $s0, $a0
/* AC37E0 8004C640 AFBF001C */  sw    $ra, 0x1c($sp)
/* AC37E4 8004C644 0C00B721 */  jal   Player_GetCameraYOffset
/* AC37E8 8004C648 8C840090 */   lw    $a0, 0x90($a0)
/* AC37EC 8004C64C 8602015E */  lh    $v0, 0x15e($s0)
/* AC37F0 8004C650 10400008 */  beqz  $v0, .L8004C674
/* AC37F4 8004C654 2401000A */   li    $at, 10
/* AC37F8 8004C658 10410006 */  beq   $v0, $at, .L8004C674
/* AC37FC 8004C65C 24010014 */   li    $at, 20
/* AC3800 8004C660 10410004 */  beq   $v0, $at, .L8004C674
/* AC3804 8004C664 3C0E8016 */   lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* AC3808 8004C668 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* AC380C 8004C66C 85C30314 */  lh    $v1, 0x314($t6)
/* AC3810 8004C670 10600050 */  beqz  $v1, .L8004C7B4
.L8004C674:
/* AC3814 8004C674 3C018014 */   lui   $at, %hi(D_8013A050)
/* AC3818 8004C678 C42EA050 */  lwc1  $f14, %lo(D_8013A050)($at)
/* AC381C 8004C67C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AC3820 8004C680 44814000 */  mtc1  $at, $f8
/* AC3824 8004C684 3C014288 */  lui   $at, 0x4288
/* AC3828 8004C688 3C0B8016 */  lui   $t3, %hi(gGameInfo)
/* AC382C 8004C68C 8D6BFA90 */  lw    $t3, %lo(gGameInfo)($t3)
/* AC3830 8004C690 44818000 */  mtc1  $at, $f16
/* AC3834 8004C694 860F0142 */  lh    $t7, 0x142($s0)
/* AC3838 8004C698 856C01F0 */  lh    $t4, 0x1f0($t3)
/* AC383C 8004C69C 46008483 */  div.s $f18, $f16, $f0
/* AC3840 8004C6A0 3C198012 */  lui   $t9, %hi(sCameraSettings)
/* AC3844 8004C6A4 448C2000 */  mtc1  $t4, $f4
/* AC3848 8004C6A8 000FC0C0 */  sll   $t8, $t7, 3
/* AC384C 8004C6AC 86080144 */  lh    $t0, 0x144($s0)
/* AC3850 8004C6B0 468021A0 */  cvt.s.w $f6, $f4
/* AC3854 8004C6B4 0338C821 */  addu  $t9, $t9, $t8
/* AC3858 8004C6B8 8F39D068 */  lw    $t9, %lo(sCameraSettings+4)($t9)
/* AC385C 8004C6BC 000848C0 */  sll   $t1, $t0, 3
/* AC3860 8004C6C0 3C018014 */  lui   $at, %hi(D_8013A054)
/* AC3864 8004C6C4 03295021 */  addu  $t2, $t9, $t1
/* AC3868 8004C6C8 8D420004 */  lw    $v0, 4($t2)
/* AC386C 8004C6CC 3C0C8016 */  lui   $t4, %hi(gGameInfo)
/* AC3870 8004C6D0 844D0000 */  lh    $t5, ($v0)
/* AC3874 8004C6D4 24420018 */  addiu $v0, $v0, 0x18
/* AC3878 8004C6D8 460E3302 */  mul.s $f12, $f6, $f14
/* AC387C 8004C6DC 448D3000 */  mtc1  $t5, $f6
/* AC3880 8004C6E0 460C4280 */  add.s $f10, $f8, $f12
/* AC3884 8004C6E4 46126102 */  mul.s $f4, $f12, $f18
/* AC3888 8004C6E8 46803220 */  cvt.s.w $f8, $f6
/* AC388C 8004C6EC 46045081 */  sub.s $f2, $f10, $f4
/* AC3890 8004C6F0 460E4402 */  mul.s $f16, $f8, $f14
/* AC3894 8004C6F4 00000000 */  nop
/* AC3898 8004C6F8 46008482 */  mul.s $f18, $f16, $f0
/* AC389C 8004C6FC 00000000 */  nop
/* AC38A0 8004C700 46029282 */  mul.s $f10, $f18, $f2
/* AC38A4 8004C704 E60A0000 */  swc1  $f10, ($s0)
/* AC38A8 8004C708 844EFFEC */  lh    $t6, -0x14($v0)
/* AC38AC 8004C70C 448E2000 */  mtc1  $t6, $f4
/* AC38B0 8004C710 00000000 */  nop
/* AC38B4 8004C714 468021A0 */  cvt.s.w $f6, $f4
/* AC38B8 8004C718 460E3202 */  mul.s $f8, $f6, $f14
/* AC38BC 8004C71C 00000000 */  nop
/* AC38C0 8004C720 46004402 */  mul.s $f16, $f8, $f0
/* AC38C4 8004C724 00000000 */  nop
/* AC38C8 8004C728 46028482 */  mul.s $f18, $f16, $f2
/* AC38CC 8004C72C E6120004 */  swc1  $f18, 4($s0)
/* AC38D0 8004C730 844FFFF0 */  lh    $t7, -0x10($v0)
/* AC38D4 8004C734 C426A054 */  lwc1  $f6, %lo(D_8013A054)($at)
/* AC38D8 8004C738 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* AC38DC 8004C73C 448F5000 */  mtc1  $t7, $f10
/* AC38E0 8004C740 44818000 */  mtc1  $at, $f16
/* AC38E4 8004C744 46805120 */  cvt.s.w $f4, $f10
/* AC38E8 8004C748 46062202 */  mul.s $f8, $f4, $f6
/* AC38EC 8004C74C 46104480 */  add.s $f18, $f8, $f16
/* AC38F0 8004C750 4600928D */  trunc.w.s $f10, $f18
/* AC38F4 8004C754 44085000 */  mfc1  $t0, $f10
/* AC38F8 8004C758 00000000 */  nop
/* AC38FC 8004C75C A6080008 */  sh    $t0, 8($s0)
/* AC3900 8004C760 8459FFF4 */  lh    $t9, -0xc($v0)
/* AC3904 8004C764 44992000 */  mtc1  $t9, $f4
/* AC3908 8004C768 00000000 */  nop
/* AC390C 8004C76C 468021A0 */  cvt.s.w $f6, $f4
/* AC3910 8004C770 460E3202 */  mul.s $f8, $f6, $f14
/* AC3914 8004C774 E608000C */  swc1  $f8, 0xc($s0)
/* AC3918 8004C778 8449FFF8 */  lh    $t1, -8($v0)
/* AC391C 8004C77C 44898000 */  mtc1  $t1, $f16
/* AC3920 8004C780 00000000 */  nop
/* AC3924 8004C784 468084A0 */  cvt.s.w $f18, $f16
/* AC3928 8004C788 E6120010 */  swc1  $f18, 0x10($s0)
/* AC392C 8004C78C 844AFFFC */  lh    $t2, -4($v0)
/* AC3930 8004C790 448A5000 */  mtc1  $t2, $f10
/* AC3934 8004C794 00000000 */  nop
/* AC3938 8004C798 46805120 */  cvt.s.w $f4, $f10
/* AC393C 8004C79C 460E2182 */  mul.s $f6, $f4, $f14
/* AC3940 8004C7A0 E6060014 */  swc1  $f6, 0x14($s0)
/* AC3944 8004C7A4 844B0000 */  lh    $t3, ($v0)
/* AC3948 8004C7A8 A60B0018 */  sh    $t3, 0x18($s0)
/* AC394C 8004C7AC 8D8CFA90 */  lw    $t4, %lo(gGameInfo)($t4)
/* AC3950 8004C7B0 85830314 */  lh    $v1, 0x314($t4)
.L8004C7B4:
/* AC3954 8004C7B4 50600004 */  beql  $v1, $zero, .L8004C7C8
/* AC3958 8004C7B8 26050050 */   addiu $a1, $s0, 0x50
/* AC395C 8004C7BC 0C011495 */  jal   Camera_CopyPREGToModeValues
/* AC3960 8004C7C0 02002025 */   move  $a0, $s0
/* AC3964 8004C7C4 26050050 */  addiu $a1, $s0, 0x50
.L8004C7C8:
/* AC3968 8004C7C8 2606005C */  addiu $a2, $s0, 0x5c
/* AC396C 8004C7CC AFA60034 */  sw    $a2, 0x34($sp)
/* AC3970 8004C7D0 AFA50030 */  sw    $a1, 0x30($sp)
/* AC3974 8004C7D4 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC3978 8004C7D8 27A4005C */   addiu $a0, $sp, 0x5c
/* AC397C 8004C7DC 26060074 */  addiu $a2, $s0, 0x74
/* AC3980 8004C7E0 AFA6002C */  sw    $a2, 0x2c($sp)
/* AC3984 8004C7E4 27A40054 */  addiu $a0, $sp, 0x54
/* AC3988 8004C7E8 0C01F124 */  jal   OLib_Vec3fDiffToVecSphRot90
/* AC398C 8004C7EC 8FA50030 */   lw    $a1, 0x30($sp)
/* AC3990 8004C7F0 860D0018 */  lh    $t5, 0x18($s0)
/* AC3994 8004C7F4 3C018012 */  lui   $at, %hi(sCameraInterfaceFlags) # $at, 0x8012
/* AC3998 8004C7F8 240E0032 */  li    $t6, 50
/* AC399C 8004C7FC AC2DD3A0 */  sw    $t5, %lo(sCameraInterfaceFlags)($at)
/* AC39A0 8004C800 8603015E */  lh    $v1, 0x15e($s0)
/* AC39A4 8004C804 2401000A */  li    $at, 10
/* AC39A8 8004C808 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* AC39AC 8004C80C 50600008 */  beql  $v1, $zero, .L8004C830
/* AC39B0 8004C810 2603001C */   addiu $v1, $s0, 0x1c
/* AC39B4 8004C814 10610005 */  beq   $v1, $at, .L8004C82C
/* AC39B8 8004C818 24010014 */   li    $at, 20
/* AC39BC 8004C81C 50610004 */  beql  $v1, $at, .L8004C830
/* AC39C0 8004C820 2603001C */   addiu $v1, $s0, 0x1c
/* AC39C4 8004C824 10000006 */  b     .L8004C840
/* AC39C8 8004C828 2603001C */   addiu $v1, $s0, 0x1c
.L8004C82C:
/* AC39CC 8004C82C 2603001C */  addiu $v1, $s0, 0x1c
.L8004C830:
/* AC39D0 8004C830 A46E0000 */  sh    $t6, ($v1)
/* AC39D4 8004C834 860F015E */  lh    $t7, 0x15e($s0)
/* AC39D8 8004C838 25F80001 */  addiu $t8, $t7, 1
/* AC39DC 8004C83C A618015E */  sh    $t8, 0x15e($s0)
.L8004C840:
/* AC39E0 8004C840 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* AC39E4 8004C844 3C018014 */  lui   $at, %hi(D_8013A060)
/* AC39E8 8004C848 C432A060 */  lwc1  $f18, %lo(D_8013A060)($at)
/* AC39EC 8004C84C 851901C6 */  lh    $t9, 0x1c6($t0)
/* AC39F0 8004C850 C60400E0 */  lwc1  $f4, 0xe0($s0)
/* AC39F4 8004C854 C60C000C */  lwc1  $f12, 0xc($s0)
/* AC39F8 8004C858 44994000 */  mtc1  $t9, $f8
/* AC39FC 8004C85C C60E00C8 */  lwc1  $f14, 0xc8($s0)
/* AC3A00 8004C860 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3A04 8004C864 46804420 */  cvt.s.w $f16, $f8
/* AC3A08 8004C868 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3A0C 8004C86C AFA30028 */  sw    $v1, 0x28($sp)
/* AC3A10 8004C870 46128282 */  mul.s $f10, $f16, $f18
/* AC3A14 8004C874 00000000 */  nop
/* AC3A18 8004C878 46045182 */  mul.s $f6, $f10, $f4
/* AC3A1C 8004C87C 44063000 */  mfc1  $a2, $f6
/* AC3A20 8004C880 0C010E27 */  jal   Camera_LERPCeilF
/* AC3A24 8004C884 00000000 */   nop
/* AC3A28 8004C888 3C01447A */  li    $at, 0x447A0000 # 0.000000
/* AC3A2C 8004C88C 44811000 */  mtc1  $at, $f2
/* AC3A30 8004C890 E60000C8 */  swc1  $f0, 0xc8($s0)
/* AC3A34 8004C894 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* AC3A38 8004C898 E60200C0 */  swc1  $f2, 0xc0($s0)
/* AC3A3C 8004C89C E60200C4 */  swc1  $f2, 0xc4($s0)
/* AC3A40 8004C8A0 8D29FA90 */  lw    $t1, %lo(gGameInfo)($t1)
/* AC3A44 8004C8A4 3C018014 */  lui   $at, %hi(D_8013A064)
/* AC3A48 8004C8A8 C42CA064 */  lwc1  $f12, %lo(D_8013A064)($at)
/* AC3A4C 8004C8AC 852A01C6 */  lh    $t2, 0x1c6($t1)
/* AC3A50 8004C8B0 3C018014 */  lui   $at, %hi(D_8013A068)
/* AC3A54 8004C8B4 C432A068 */  lwc1  $f18, %lo(D_8013A068)($at)
/* AC3A58 8004C8B8 448A4000 */  mtc1  $t2, $f8
/* AC3A5C 8004C8BC 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3A60 8004C8C0 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3A64 8004C8C4 46804420 */  cvt.s.w $f16, $f8
/* AC3A68 8004C8C8 C60E00CC */  lwc1  $f14, 0xcc($s0)
/* AC3A6C 8004C8CC 46128282 */  mul.s $f10, $f16, $f18
/* AC3A70 8004C8D0 44065000 */  mfc1  $a2, $f10
/* AC3A74 8004C8D4 0C010E27 */  jal   Camera_LERPCeilF
/* AC3A78 8004C8D8 00000000 */   nop
/* AC3A7C 8004C8DC E60000CC */  swc1  $f0, 0xcc($s0)
/* AC3A80 8004C8E0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* AC3A84 8004C8E4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* AC3A88 8004C8E8 3C018014 */  lui   $at, %hi(D_8013A06C)
/* AC3A8C 8004C8EC C428A06C */  lwc1  $f8, %lo(D_8013A06C)($at)
/* AC3A90 8004C8F0 844B019A */  lh    $t3, 0x19a($v0)
/* AC3A94 8004C8F4 844C01C8 */  lh    $t4, 0x1c8($v0)
/* AC3A98 8004C8F8 3C018014 */  lui   $at, %hi(D_8013A070)
/* AC3A9C 8004C8FC 448B2000 */  mtc1  $t3, $f4
/* AC3AA0 8004C900 448C8000 */  mtc1  $t4, $f16
/* AC3AA4 8004C904 C42AA070 */  lwc1  $f10, %lo(D_8013A070)($at)
/* AC3AA8 8004C908 468021A0 */  cvt.s.w $f6, $f4
/* AC3AAC 8004C90C 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* AC3AB0 8004C910 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* AC3AB4 8004C914 C60E00D0 */  lwc1  $f14, 0xd0($s0)
/* AC3AB8 8004C918 468084A0 */  cvt.s.w $f18, $f16
/* AC3ABC 8004C91C 46083302 */  mul.s $f12, $f6, $f8
/* AC3AC0 8004C920 C60600E0 */  lwc1  $f6, 0xe0($s0)
/* AC3AC4 8004C924 460A9102 */  mul.s $f4, $f18, $f10
/* AC3AC8 8004C928 00000000 */  nop
/* AC3ACC 8004C92C 46062202 */  mul.s $f8, $f4, $f6
/* AC3AD0 8004C930 44064000 */  mfc1  $a2, $f8
/* AC3AD4 8004C934 0C010E27 */  jal   Camera_LERPCeilF
/* AC3AD8 8004C938 00000000 */   nop
/* AC3ADC 8004C93C E60000D0 */  swc1  $f0, 0xd0($s0)
/* AC3AE0 8004C940 3C018014 */  lui   $at, %hi(D_8013A074)
/* AC3AE4 8004C944 C430A074 */  lwc1  $f16, %lo(D_8013A074)($at)
/* AC3AE8 8004C948 02002025 */  move  $a0, $s0
/* AC3AEC 8004C94C 27A50054 */  addiu $a1, $sp, 0x54
/* AC3AF0 8004C950 8E060000 */  lw    $a2, ($s0)
/* AC3AF4 8004C954 24070001 */  li    $a3, 1
/* AC3AF8 8004C958 0C0115EA */  jal   func_800457A8
/* AC3AFC 8004C95C E61000D4 */   swc1  $f16, 0xd4($s0)
/* AC3B00 8004C960 8FA30028 */  lw    $v1, 0x28($sp)
/* AC3B04 8004C964 87AE0062 */  lh    $t6, 0x62($sp)
/* AC3B08 8004C968 87B90062 */  lh    $t9, 0x62($sp)
/* AC3B0C 8004C96C 846D0000 */  lh    $t5, ($v1)
/* AC3B10 8004C970 24070002 */  li    $a3, 2
/* AC3B14 8004C974 51A0000B */  beql  $t5, $zero, .L8004C9A4
/* AC3B18 8004C978 A7B9006A */   sh    $t9, 0x6a($sp)
/* AC3B1C 8004C97C 87AF0060 */  lh    $t7, 0x60($sp)
/* AC3B20 8004C980 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* AC3B24 8004C984 A7AE006A */  sh    $t6, 0x6a($sp)
/* AC3B28 8004C988 A7AF0068 */  sh    $t7, 0x68($sp)
/* AC3B2C 8004C98C E7B20064 */  swc1  $f18, 0x64($sp)
/* AC3B30 8004C990 84780000 */  lh    $t8, ($v1)
/* AC3B34 8004C994 2708FFFF */  addiu $t0, $t8, -1
/* AC3B38 8004C998 1000000E */  b     .L8004C9D4
/* AC3B3C 8004C99C A4680000 */   sh    $t0, ($v1)
/* AC3B40 8004C9A0 A7B9006A */  sh    $t9, 0x6a($sp)
.L8004C9A4:
/* AC3B44 8004C9A4 8E06000C */  lw    $a2, 0xc($s0)
/* AC3B48 8004C9A8 86040008 */  lh    $a0, 8($s0)
/* AC3B4C 8004C9AC 0C010E47 */  jal   Camera_LERPCeilS
/* AC3B50 8004C9B0 87A50060 */   lh    $a1, 0x60($sp)
/* AC3B54 8004C9B4 A7A20068 */  sh    $v0, 0x68($sp)
/* AC3B58 8004C9B8 3C073A83 */  lui   $a3, (0x3A83126F >> 16) # lui $a3, 0x3a83
/* AC3B5C 8004C9BC 34E7126F */  ori   $a3, (0x3A83126F & 0xFFFF) # ori $a3, $a3, 0x126f
/* AC3B60 8004C9C0 8E06000C */  lw    $a2, 0xc($s0)
/* AC3B64 8004C9C4 C60C0004 */  lwc1  $f12, 4($s0)
/* AC3B68 8004C9C8 0C010E27 */  jal   Camera_LERPCeilF
/* AC3B6C 8004C9CC C7AE005C */   lwc1  $f14, 0x5c($sp)
/* AC3B70 8004C9D0 E7A00064 */  swc1  $f0, 0x64($sp)
.L8004C9D4:
/* AC3B74 8004C9D4 8FA4002C */  lw    $a0, 0x2c($sp)
/* AC3B78 8004C9D8 8FA50030 */  lw    $a1, 0x30($sp)
/* AC3B7C 8004C9DC 0C010F0A */  jal   Camera_Vec3fVecSphAdd
/* AC3B80 8004C9E0 27A60064 */   addiu $a2, $sp, 0x64
/* AC3B84 8004C9E4 8FAA002C */  lw    $t2, 0x2c($sp)
/* AC3B88 8004C9E8 8FA90034 */  lw    $t1, 0x34($sp)
/* AC3B8C 8004C9EC 3C073F80 */  lui   $a3, 0x3f80
/* AC3B90 8004C9F0 8D4C0000 */  lw    $t4, ($t2)
/* AC3B94 8004C9F4 AD2C0000 */  sw    $t4, ($t1)
/* AC3B98 8004C9F8 8D4B0004 */  lw    $t3, 4($t2)
/* AC3B9C 8004C9FC AD2B0004 */  sw    $t3, 4($t1)
/* AC3BA0 8004CA00 8D4C0008 */  lw    $t4, 8($t2)
/* AC3BA4 8004CA04 AD2C0008 */  sw    $t4, 8($t1)
/* AC3BA8 8004CA08 C7AA0064 */  lwc1  $f10, 0x64($sp)
/* AC3BAC 8004CA0C 8E06000C */  lw    $a2, 0xc($s0)
/* AC3BB0 8004CA10 C60E00FC */  lwc1  $f14, 0xfc($s0)
/* AC3BB4 8004CA14 C60C0010 */  lwc1  $f12, 0x10($s0)
/* AC3BB8 8004CA18 0C010E27 */  jal   Camera_LERPCeilF
/* AC3BBC 8004CA1C E60A00DC */   swc1  $f10, 0xdc($s0)
/* AC3BC0 8004CA20 E60000FC */  swc1  $f0, 0xfc($s0)
/* AC3BC4 8004CA24 A600015A */  sh    $zero, 0x15a($s0)
/* AC3BC8 8004CA28 02002025 */  move  $a0, $s0
/* AC3BCC 8004CA2C 0C011429 */  jal   Camera_ClampLERPScale
/* AC3BD0 8004CA30 8E050014 */   lw    $a1, 0x14($s0)
/* AC3BD4 8004CA34 E6000100 */  swc1  $f0, 0x100($s0)
/* AC3BD8 8004CA38 8FBF001C */  lw    $ra, 0x1c($sp)
/* AC3BDC 8004CA3C 8FB00018 */  lw    $s0, 0x18($sp)
/* AC3BE0 8004CA40 27BD0078 */  addiu $sp, $sp, 0x78
/* AC3BE4 8004CA44 03E00008 */  jr    $ra
/* AC3BE8 8004CA48 24020001 */   li    $v0, 1

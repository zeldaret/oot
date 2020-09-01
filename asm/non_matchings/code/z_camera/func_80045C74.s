.late_rodata
glabel D_80139DFC
    .float -0.1

glabel D_80139E00
    .float 0.01

glabel D_80139E04
    .float 0.1

glabel D_80139E08
    .float 0.017453292

glabel D_80139E0C
    .float 0.4

glabel D_80139E10
    .float 0.017453292

glabel D_80139E14
    .float 0.01

glabel D_80139E18
    .float 0.1

glabel D_80139E1C
    .float 0.2

.text
glabel func_80045C74
/* ABCE14 80045C74 27BDFF80 */  addiu $sp, $sp, -0x80
/* ABCE18 80045C78 AFB00028 */  sw    $s0, 0x28($sp)
/* ABCE1C 80045C7C F7B40020 */  sdc1  $f20, 0x20($sp)
/* ABCE20 80045C80 4486A000 */  mtc1  $a2, $f20
/* ABCE24 80045C84 00808025 */  move  $s0, $a0
/* ABCE28 80045C88 AFBF002C */  sw    $ra, 0x2c($sp)
/* ABCE2C 80045C8C AFA50084 */  sw    $a1, 0x84($sp)
/* ABCE30 80045C90 AFA7008C */  sw    $a3, 0x8c($sp)
/* ABCE34 80045C94 0C00B721 */  jal   Player_GetCameraYOffset
/* ABCE38 80045C98 8C840090 */   lw    $a0, 0x90($a0)
/* ABCE3C 80045C9C 46140100 */  add.s $f4, $f0, $f20
/* ABCE40 80045CA0 44801000 */  mtc1  $zero, $f2
/* ABCE44 80045CA4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABCE48 80045CA8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABCE4C 80045CAC E7A40074 */  swc1  $f4, 0x74($sp)
/* ABCE50 80045CB0 E7A20070 */  swc1  $f2, 0x70($sp)
/* ABCE54 80045CB4 E7A20078 */  swc1  $f2, 0x78($sp)
/* ABCE58 80045CB8 844E02EC */  lh    $t6, 0x2ec($v0)
/* ABCE5C 80045CBC 87AF0092 */  lh    $t7, 0x92($sp)
/* ABCE60 80045CC0 51C00013 */  beql  $t6, $zero, .L80045D10
/* ABCE64 80045CC4 C6040098 */   lwc1  $f4, 0x98($s0)
/* ABCE68 80045CC8 51E00011 */  beql  $t7, $zero, .L80045D10
/* ABCE6C 80045CCC C6040098 */   lwc1  $f4, 0x98($s0)
/* ABCE70 80045CD0 845901A6 */  lh    $t9, 0x1a6($v0)
/* ABCE74 80045CD4 8FB80084 */  lw    $t8, 0x84($sp)
/* ABCE78 80045CD8 26040108 */  addiu $a0, $s0, 0x108
/* ABCE7C 80045CDC 44993000 */  mtc1  $t9, $f6
/* ABCE80 80045CE0 860500A2 */  lh    $a1, 0xa2($s0)
/* ABCE84 80045CE4 87060006 */  lh    $a2, 6($t8)
/* ABCE88 80045CE8 468031A0 */  cvt.s.w $f6, $f6
/* ABCE8C 80045CEC 44073000 */  mfc1  $a3, $f6
/* ABCE90 80045CF0 0C0115C5 */  jal   Camera_CalcSlopeYAdj
/* ABCE94 80045CF4 00000000 */   nop
/* ABCE98 80045CF8 C7A80074 */  lwc1  $f8, 0x74($sp)
/* ABCE9C 80045CFC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABCEA0 80045D00 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABCEA4 80045D04 46004281 */  sub.s $f10, $f8, $f0
/* ABCEA8 80045D08 E7AA0074 */  swc1  $f10, 0x74($sp)
/* ABCEAC 80045D0C C6040098 */  lwc1  $f4, 0x98($s0)
.L80045D10:
/* ABCEB0 80045D10 C6060104 */  lwc1  $f6, 0x104($s0)
/* ABCEB4 80045D14 26080094 */  addiu $t0, $s0, 0x94
/* ABCEB8 80045D18 46062032 */  c.eq.s $f4, $f6
/* ABCEBC 80045D1C 00000000 */  nop
/* ABCEC0 80045D20 4503000E */  bc1tl .L80045D5C
/* ABCEC4 80045D24 844C01EA */   lh    $t4, 0x1ea($v0)
/* ABCEC8 80045D28 8E030090 */  lw    $v1, 0x90($s0)
/* ABCECC 80045D2C 3C018014 */  lui   $at, %hi(D_80139DFC)
/* ABCED0 80045D30 C4289DFC */  lwc1  $f8, %lo(D_80139DFC)($at)
/* ABCED4 80045D34 C46A006C */  lwc1  $f10, 0x6c($v1)
/* ABCED8 80045D38 460A403C */  c.lt.s $f8, $f10
/* ABCEDC 80045D3C 00000000 */  nop
/* ABCEE0 80045D40 45030006 */  bc1tl .L80045D5C
/* ABCEE4 80045D44 844C01EA */   lh    $t4, 0x1ea($v0)
/* ABCEE8 80045D48 8C69067C */  lw    $t1, 0x67c($v1)
/* ABCEEC 80045D4C 00095280 */  sll   $t2, $t1, 0xa
/* ABCEF0 80045D50 05430024 */  bgezl $t2, .L80045DE4
/* ABCEF4 80045D54 845802EA */   lh    $t8, 0x2ea($v0)
/* ABCEF8 80045D58 844C01EA */  lh    $t4, 0x1ea($v0)
.L80045D5C:
/* ABCEFC 80045D5C 3C018014 */  lui   $at, %hi(D_80139E00)
/* ABCF00 80045D60 C4349E00 */  lwc1  $f20, %lo(D_80139E00)($at)
/* ABCF04 80045D64 448C2000 */  mtc1  $t4, $f4
/* ABCF08 80045D68 8FAB008C */  lw    $t3, 0x8c($sp)
/* ABCF0C 80045D6C C50C0004 */  lwc1  $f12, 4($t0)
/* ABCF10 80045D70 468021A0 */  cvt.s.w $f6, $f4
/* ABCF14 80045D74 3C073DCC */  lui   $a3, (0x3DCCCCCD >> 16) # lui $a3, 0x3dcc
/* ABCF18 80045D78 C56E0000 */  lwc1  $f14, ($t3)
/* ABCF1C 80045D7C AFA8003C */  sw    $t0, 0x3c($sp)
/* ABCF20 80045D80 34E7CCCD */  ori   $a3, (0x3DCCCCCD & 0xFFFF) # ori $a3, $a3, 0xcccd
/* ABCF24 80045D84 46143202 */  mul.s $f8, $f6, $f20
/* ABCF28 80045D88 44064000 */  mfc1  $a2, $f8
/* ABCF2C 80045D8C 0C010E27 */  jal   Camera_LERPCeilF
/* ABCF30 80045D90 00000000 */   nop
/* ABCF34 80045D94 8FAD008C */  lw    $t5, 0x8c($sp)
/* ABCF38 80045D98 3C018014 */  lui   $at, %hi(D_80139E04)
/* ABCF3C 80045D9C 27A40070 */  addiu $a0, $sp, 0x70
/* ABCF40 80045DA0 E5A00000 */  swc1  $f0, ($t5)
/* ABCF44 80045DA4 8FAE003C */  lw    $t6, 0x3c($sp)
/* ABCF48 80045DA8 C7A40074 */  lwc1  $f4, 0x74($sp)
/* ABCF4C 80045DAC C4289E04 */  lwc1  $f8, %lo(D_80139E04)($at)
/* ABCF50 80045DB0 C5CA0004 */  lwc1  $f10, 4($t6)
/* ABCF54 80045DB4 260500E4 */  addiu $a1, $s0, 0xe4
/* ABCF58 80045DB8 46005501 */  sub.s $f20, $f10, $f0
/* ABCF5C 80045DBC 46142181 */  sub.s $f6, $f4, $f20
/* ABCF60 80045DC0 E7A60074 */  swc1  $f6, 0x74($sp)
/* ABCF64 80045DC4 8E0700CC */  lw    $a3, 0xcc($s0)
/* ABCF68 80045DC8 8E0600D0 */  lw    $a2, 0xd0($s0)
/* ABCF6C 80045DCC 0C010E8F */  jal   Camera_LERPCeilVec3f
/* ABCF70 80045DD0 E7A80010 */   swc1  $f8, 0x10($sp)
/* ABCF74 80045DD4 260F0050 */  addiu $t7, $s0, 0x50
/* ABCF78 80045DD8 10000096 */  b     .L80046034
/* ABCF7C 80045DDC AFAF0040 */   sw    $t7, 0x40($sp)
/* ABCF80 80045DE0 845802EA */  lh    $t8, 0x2ea($v0)
.L80045DE4:
/* ABCF84 80045DE4 8FA9008C */  lw    $t1, 0x8c($sp)
/* ABCF88 80045DE8 26040050 */  addiu $a0, $s0, 0x50
/* ABCF8C 80045DEC 17000036 */  bnez  $t8, .L80045EC8
/* ABCF90 80045DF0 2605005C */   addiu $a1, $s0, 0x5c
/* ABCF94 80045DF4 8FB9008C */  lw    $t9, 0x8c($sp)
/* ABCF98 80045DF8 C50A0004 */  lwc1  $f10, 4($t0)
/* ABCF9C 80045DFC 26040050 */  addiu $a0, $s0, 0x50
/* ABCFA0 80045E00 C7240000 */  lwc1  $f4, ($t9)
/* ABCFA4 80045E04 AFA8003C */  sw    $t0, 0x3c($sp)
/* ABCFA8 80045E08 AFA40040 */  sw    $a0, 0x40($sp)
/* ABCFAC 80045E0C 2605005C */  addiu $a1, $s0, 0x5c
/* ABCFB0 80045E10 0C01F00A */  jal   OLib_Vec3fDistXZ
/* ABCFB4 80045E14 46045501 */   sub.s $f20, $f10, $f4
/* ABCFB8 80045E18 4600A306 */  mov.s $f12, $f20
/* ABCFBC 80045E1C 46000386 */  mov.s $f14, $f0
/* ABCFC0 80045E20 0C03F494 */  jal   Math_atan2f
/* ABCFC4 80045E24 E7A00054 */   swc1  $f0, 0x54($sp)
/* ABCFC8 80045E28 3C018014 */  lui   $at, %hi(D_80139E08)
/* ABCFCC 80045E2C C4329E08 */  lwc1  $f18, %lo(D_80139E08)($at)
/* ABCFD0 80045E30 3C018014 */  lui   $at, %hi(D_80139E0C)
/* ABCFD4 80045E34 C4289E0C */  lwc1  $f8, %lo(D_80139E0C)($at)
/* ABCFD8 80045E38 C60600FC */  lwc1  $f6, 0xfc($s0)
/* ABCFDC 80045E3C 46083282 */  mul.s $f10, $f6, $f8
/* ABCFE0 80045E40 00000000 */  nop
/* ABCFE4 80045E44 46125302 */  mul.s $f12, $f10, $f18
/* ABCFE8 80045E48 0C03F3A0 */  jal   Math_tanf
/* ABCFEC 80045E4C 00000000 */   nop
/* ABCFF0 80045E50 C7B00054 */  lwc1  $f16, 0x54($sp)
/* ABCFF4 80045E54 8FA2008C */  lw    $v0, 0x8c($sp)
/* ABCFF8 80045E58 46100082 */  mul.s $f2, $f0, $f16
/* ABCFFC 80045E5C 4614103C */  c.lt.s $f2, $f20
/* ABD000 80045E60 00000000 */  nop
/* ABD004 80045E64 45020008 */  bc1fl .L80045E88
/* ABD008 80045E68 46001007 */   neg.s $f0, $f2
/* ABD00C 80045E6C 4602A181 */  sub.s $f6, $f20, $f2
/* ABD010 80045E70 C4440000 */  lwc1  $f4, ($v0)
/* ABD014 80045E74 46001506 */  mov.s $f20, $f2
/* ABD018 80045E78 46062200 */  add.s $f8, $f4, $f6
/* ABD01C 80045E7C 1000000C */  b     .L80045EB0
/* ABD020 80045E80 E4480000 */   swc1  $f8, ($v0)
/* ABD024 80045E84 46001007 */  neg.s $f0, $f2
.L80045E88:
/* ABD028 80045E88 8FA2008C */  lw    $v0, 0x8c($sp)
/* ABD02C 80045E8C 4600A03C */  c.lt.s $f20, $f0
/* ABD030 80045E90 00000000 */  nop
/* ABD034 80045E94 45020007 */  bc1fl .L80045EB4
/* ABD038 80045E98 C7A80074 */   lwc1  $f8, 0x74($sp)
/* ABD03C 80045E9C 4602A100 */  add.s $f4, $f20, $f2
/* ABD040 80045EA0 C44A0000 */  lwc1  $f10, ($v0)
/* ABD044 80045EA4 46000506 */  mov.s $f20, $f0
/* ABD048 80045EA8 46045180 */  add.s $f6, $f10, $f4
/* ABD04C 80045EAC E4460000 */  swc1  $f6, ($v0)
.L80045EB0:
/* ABD050 80045EB0 C7A80074 */  lwc1  $f8, 0x74($sp)
.L80045EB4:
/* ABD054 80045EB4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD058 80045EB8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD05C 80045EBC 46144281 */  sub.s $f10, $f8, $f20
/* ABD060 80045EC0 10000038 */  b     .L80045FA4
/* ABD064 80045EC4 E7AA0074 */   swc1  $f10, 0x74($sp)
.L80045EC8:
/* ABD068 80045EC8 C5040004 */  lwc1  $f4, 4($t0)
/* ABD06C 80045ECC C5260000 */  lwc1  $f6, ($t1)
/* ABD070 80045ED0 AFA8003C */  sw    $t0, 0x3c($sp)
/* ABD074 80045ED4 AFA40040 */  sw    $a0, 0x40($sp)
/* ABD078 80045ED8 0C01F00A */  jal   OLib_Vec3fDistXZ
/* ABD07C 80045EDC 46062501 */   sub.s $f20, $f4, $f6
/* ABD080 80045EE0 4600A306 */  mov.s $f12, $f20
/* ABD084 80045EE4 0C03F494 */  jal   Math_atan2f
/* ABD088 80045EE8 46000386 */   mov.s $f14, $f0
/* ABD08C 80045EEC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ABD090 80045EF0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD094 80045EF4 3C018014 */  lui   $at, %hi(D_80139E10)
/* ABD098 80045EF8 C4329E10 */  lwc1  $f18, %lo(D_80139E10)($at)
/* ABD09C 80045EFC 844B01D4 */  lh    $t3, 0x1d4($v0)
/* ABD0A0 80045F00 46000086 */  mov.s $f2, $f0
/* ABD0A4 80045F04 448B4000 */  mtc1  $t3, $f8
/* ABD0A8 80045F08 00000000 */  nop
/* ABD0AC 80045F0C 468042A0 */  cvt.s.w $f10, $f8
/* ABD0B0 80045F10 46125382 */  mul.s $f14, $f10, $f18
/* ABD0B4 80045F14 4600703C */  c.lt.s $f14, $f0
/* ABD0B8 80045F18 00000000 */  nop
/* ABD0BC 80045F1C 4502000A */  bc1fl .L80045F48
/* ABD0C0 80045F20 844C01D6 */   lh    $t4, 0x1d6($v0)
/* ABD0C4 80045F24 0C0400A4 */  jal   sinf
/* ABD0C8 80045F28 460E1301 */   sub.s $f12, $f2, $f14
/* ABD0CC 80045F2C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD0D0 80045F30 44812000 */  mtc1  $at, $f4
/* ABD0D4 80045F34 3C028016 */  lui   $v0, %hi(gGameInfo)
/* ABD0D8 80045F38 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD0DC 80045F3C 10000015 */  b     .L80045F94
/* ABD0E0 80045F40 46002401 */   sub.s $f16, $f4, $f0
/* ABD0E4 80045F44 844C01D6 */  lh    $t4, 0x1d6($v0)
.L80045F48:
/* ABD0E8 80045F48 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD0EC 80045F4C 448C3000 */  mtc1  $t4, $f6
/* ABD0F0 80045F50 00000000 */  nop
/* ABD0F4 80045F54 46803220 */  cvt.s.w $f8, $f6
/* ABD0F8 80045F58 46124382 */  mul.s $f14, $f8, $f18
/* ABD0FC 80045F5C 460E003C */  c.lt.s $f0, $f14
/* ABD100 80045F60 00000000 */  nop
/* ABD104 80045F64 4502000A */  bc1fl .L80045F90
/* ABD108 80045F68 44818000 */   mtc1  $at, $f16
/* ABD10C 80045F6C 0C0400A4 */  jal   sinf
/* ABD110 80045F70 46027301 */   sub.s $f12, $f14, $f2
/* ABD114 80045F74 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ABD118 80045F78 44815000 */  mtc1  $at, $f10
/* ABD11C 80045F7C 3C028016 */  lui   $v0, %hi(gGameInfo)
/* ABD120 80045F80 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ABD124 80045F84 10000003 */  b     .L80045F94
/* ABD128 80045F88 46005401 */   sub.s $f16, $f10, $f0
/* ABD12C 80045F8C 44818000 */  mtc1  $at, $f16
.L80045F90:
/* ABD130 80045F90 00000000 */  nop
.L80045F94:
/* ABD134 80045F94 4610A182 */  mul.s $f6, $f20, $f16
/* ABD138 80045F98 C7A40074 */  lwc1  $f4, 0x74($sp)
/* ABD13C 80045F9C 46062201 */  sub.s $f8, $f4, $f6
/* ABD140 80045FA0 E7A80074 */  swc1  $f8, 0x74($sp)
.L80045FA4:
/* ABD144 80045FA4 844D01CE */  lh    $t5, 0x1ce($v0)
/* ABD148 80045FA8 844E01D0 */  lh    $t6, 0x1d0($v0)
/* ABD14C 80045FAC 3C018014 */  lui   $at, %hi(D_80139E14)
/* ABD150 80045FB0 448D5000 */  mtc1  $t5, $f10
/* ABD154 80045FB4 448E4000 */  mtc1  $t6, $f8
/* ABD158 80045FB8 C4349E14 */  lwc1  $f20, %lo(D_80139E14)($at)
/* ABD15C 80045FBC 46805120 */  cvt.s.w $f4, $f10
/* ABD160 80045FC0 3C018014 */  lui   $at, %hi(D_80139E18)
/* ABD164 80045FC4 27A40070 */  addiu $a0, $sp, 0x70
/* ABD168 80045FC8 260500E4 */  addiu $a1, $s0, 0xe4
/* ABD16C 80045FCC 468042A0 */  cvt.s.w $f10, $f8
/* ABD170 80045FD0 46142182 */  mul.s $f6, $f4, $f20
/* ABD174 80045FD4 00000000 */  nop
/* ABD178 80045FD8 46145102 */  mul.s $f4, $f10, $f20
/* ABD17C 80045FDC 44063000 */  mfc1  $a2, $f6
/* ABD180 80045FE0 C4269E18 */  lwc1  $f6, %lo(D_80139E18)($at)
/* ABD184 80045FE4 E7A60010 */  swc1  $f6, 0x10($sp)
/* ABD188 80045FE8 44072000 */  mfc1  $a3, $f4
/* ABD18C 80045FEC 0C010E8F */  jal   Camera_LERPCeilVec3f
/* ABD190 80045FF0 00000000 */   nop
/* ABD194 80045FF4 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* ABD198 80045FF8 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* ABD19C 80045FFC 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* ABD1A0 80046000 85F801CE */  lh    $t8, 0x1ce($t7)
/* ABD1A4 80046004 44984000 */  mtc1  $t8, $f8
/* ABD1A8 80046008 00000000 */  nop
/* ABD1AC 8004600C 468042A0 */  cvt.s.w $f10, $f8
/* ABD1B0 80046010 46145102 */  mul.s $f4, $f10, $f20
/* ABD1B4 80046014 E60400D0 */  swc1  $f4, 0xd0($s0)
/* ABD1B8 80046018 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* ABD1BC 8004601C 872901D0 */  lh    $t1, 0x1d0($t9)
/* ABD1C0 80046020 44893000 */  mtc1  $t1, $f6
/* ABD1C4 80046024 00000000 */  nop
/* ABD1C8 80046028 46803220 */  cvt.s.w $f8, $f6
/* ABD1CC 8004602C 46144282 */  mul.s $f10, $f8, $f20
/* ABD1D0 80046030 E60A00CC */  swc1  $f10, 0xcc($s0)
.L80046034:
/* ABD1D4 80046034 8FAA003C */  lw    $t2, 0x3c($sp)
/* ABD1D8 80046038 C60600E4 */  lwc1  $f6, 0xe4($s0)
/* ABD1DC 8004603C 3C018014 */  lui   $at, %hi(D_80139E1C)
/* ABD1E0 80046040 C5440000 */  lwc1  $f4, ($t2)
/* ABD1E4 80046044 27A40064 */  addiu $a0, $sp, 0x64
/* ABD1E8 80046048 8FA50040 */  lw    $a1, 0x40($sp)
/* ABD1EC 8004604C 46062200 */  add.s $f8, $f4, $f6
/* ABD1F0 80046050 E7A80064 */  swc1  $f8, 0x64($sp)
/* ABD1F4 80046054 C60400E8 */  lwc1  $f4, 0xe8($s0)
/* ABD1F8 80046058 C54A0004 */  lwc1  $f10, 4($t2)
/* ABD1FC 8004605C 46045180 */  add.s $f6, $f10, $f4
/* ABD200 80046060 E7A60068 */  swc1  $f6, 0x68($sp)
/* ABD204 80046064 C60A00EC */  lwc1  $f10, 0xec($s0)
/* ABD208 80046068 C5480008 */  lwc1  $f8, 8($t2)
/* ABD20C 8004606C C4269E1C */  lwc1  $f6, %lo(D_80139E1C)($at)
/* ABD210 80046070 460A4100 */  add.s $f4, $f8, $f10
/* ABD214 80046074 E7A4006C */  swc1  $f4, 0x6c($sp)
/* ABD218 80046078 C6000100 */  lwc1  $f0, 0x100($s0)
/* ABD21C 8004607C E7A60010 */  swc1  $f6, 0x10($sp)
/* ABD220 80046080 44060000 */  mfc1  $a2, $f0
/* ABD224 80046084 44070000 */  mfc1  $a3, $f0
/* ABD228 80046088 0C010E8F */  jal   Camera_LERPCeilVec3f
/* ABD22C 8004608C 00000000 */   nop
/* ABD230 80046090 8FBF002C */  lw    $ra, 0x2c($sp)
/* ABD234 80046094 D7B40020 */  ldc1  $f20, 0x20($sp)
/* ABD238 80046098 8FB00028 */  lw    $s0, 0x28($sp)
/* ABD23C 8004609C 27BD0080 */  addiu $sp, $sp, 0x80
/* ABD240 800460A0 03E00008 */  jr    $ra
/* ABD244 800460A4 24020001 */   li    $v0, 1


.rdata
glabel D_80141200
    .asciz "../z_view.c"
    .balign 4

glabel D_8014120C
    .asciz "vp"
    .balign 4

glabel D_80141210
    .asciz "../z_view.c"
    .balign 4

glabel D_8014121C
    .asciz "projection"
    .balign 4

glabel D_80141228
    .asciz "../z_view.c"
    .balign 4

glabel D_80141234
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AB0A8
/* B22248 800AB0A8 27BDFF90 */  addiu $sp, $sp, -0x70
/* B2224C 800AB0AC AFBF0034 */  sw    $ra, 0x34($sp)
/* B22250 800AB0B0 AFB20030 */  sw    $s2, 0x30($sp)
/* B22254 800AB0B4 AFB1002C */  sw    $s1, 0x2c($sp)
/* B22258 800AB0B8 AFB00028 */  sw    $s0, 0x28($sp)
/* B2225C 800AB0BC 8C900004 */  lw    $s0, 4($a0)
/* B22260 800AB0C0 00809025 */  move  $s2, $a0
/* B22264 800AB0C4 3C068014 */  lui   $a2, %hi(D_80141200) # $a2, 0x8014
/* B22268 800AB0C8 24C61200 */  addiu $a2, %lo(D_80141200) # addiu $a2, $a2, 0x1200
/* B2226C 800AB0CC 27A40050 */  addiu $a0, $sp, 0x50
/* B22270 800AB0D0 240702D6 */  li    $a3, 726
/* B22274 800AB0D4 0C031AB1 */  jal   Graph_OpenDisp
/* B22278 800AB0D8 02002825 */   move  $a1, $s0
/* B2227C 800AB0DC 02002025 */  move  $a0, $s0
/* B22280 800AB0E0 0C031A73 */  jal   Graph_Alloc
/* B22284 800AB0E4 24050010 */   li    $a1, 16
/* B22288 800AB0E8 3C048014 */  lui   $a0, %hi(D_8014120C) # $a0, 0x8014
/* B2228C 800AB0EC 3C068014 */  lui   $a2, %hi(D_80141210) # $a2, 0x8014
/* B22290 800AB0F0 00408825 */  move  $s1, $v0
/* B22294 800AB0F4 24C61210 */  addiu $a2, %lo(D_80141210) # addiu $a2, $a2, 0x1210
/* B22298 800AB0F8 2484120C */  addiu $a0, %lo(D_8014120C) # addiu $a0, $a0, 0x120c
/* B2229C 800AB0FC 00402825 */  move  $a1, $v0
/* B222A0 800AB100 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B222A4 800AB104 240702DA */   li    $a3, 730
/* B222A8 800AB108 02202025 */  move  $a0, $s1
/* B222AC 800AB10C 0C02A864 */  jal   func_800AA190
/* B222B0 800AB110 26450008 */   addiu $a1, $s2, 8
/* B222B4 800AB114 8E2F0000 */  lw    $t7, ($s1)
/* B222B8 800AB118 02402025 */  move  $a0, $s2
/* B222BC 800AB11C AE4F0050 */  sw    $t7, 0x50($s2)
/* B222C0 800AB120 8E2E0004 */  lw    $t6, 4($s1)
/* B222C4 800AB124 AE4E0054 */  sw    $t6, 0x54($s2)
/* B222C8 800AB128 8E2F0008 */  lw    $t7, 8($s1)
/* B222CC 800AB12C AE4F0058 */  sw    $t7, 0x58($s2)
/* B222D0 800AB130 8E2E000C */  lw    $t6, 0xc($s1)
/* B222D4 800AB134 0C02A954 */  jal   func_800AA550
/* B222D8 800AB138 AE4E005C */   sw    $t6, 0x5c($s2)
/* B222DC 800AB13C 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B222E0 800AB140 3C04DC08 */  lui   $a0, (0xDC080008 >> 16) # lui $a0, 0xdc08
/* B222E4 800AB144 34840008 */  ori   $a0, (0xDC080008 & 0xFFFF) # ori $a0, $a0, 8
/* B222E8 800AB148 24780008 */  addiu $t8, $v1, 8
/* B222EC 800AB14C AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B222F0 800AB150 AC710004 */  sw    $s1, 4($v1)
/* B222F4 800AB154 AC640000 */  sw    $a0, ($v1)
/* B222F8 800AB158 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B222FC 800AB15C 24050040 */  li    $a1, 64
/* B22300 800AB160 24790008 */  addiu $t9, $v1, 8
/* B22304 800AB164 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B22308 800AB168 AC710004 */  sw    $s1, 4($v1)
/* B2230C 800AB16C AC640000 */  sw    $a0, ($v1)
/* B22310 800AB170 8E0302B0 */  lw    $v1, 0x2b0($s0)
/* B22314 800AB174 24680008 */  addiu $t0, $v1, 8
/* B22318 800AB178 AE0802B0 */  sw    $t0, 0x2b0($s0)
/* B2231C 800AB17C AC640000 */  sw    $a0, ($v1)
/* B22320 800AB180 02002025 */  move  $a0, $s0
/* B22324 800AB184 0C031A73 */  jal   Graph_Alloc
/* B22328 800AB188 AC710004 */   sw    $s1, 4($v1)
/* B2232C 800AB18C 3C048014 */  lui   $a0, %hi(D_8014121C) # $a0, 0x8014
/* B22330 800AB190 3C068014 */  lui   $a2, %hi(D_80141228) # $a2, 0x8014
/* B22334 800AB194 00408825 */  move  $s1, $v0
/* B22338 800AB198 24C61228 */  addiu $a2, %lo(D_80141228) # addiu $a2, $a2, 0x1228
/* B2233C 800AB19C 2484121C */  addiu $a0, %lo(D_8014121C) # addiu $a0, $a0, 0x121c
/* B22340 800AB1A0 00402825 */  move  $a1, $v0
/* B22344 800AB1A4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22348 800AB1A8 240702E8 */   li    $a3, 744
/* B2234C 800AB1AC AE5100E0 */  sw    $s1, 0xe0($s2)
/* B22350 800AB1B0 3C098013 */  lui   $t1, %hi(gScreenWidth)
/* B22354 800AB1B4 8D29D270 */  lw    $t1, %lo(gScreenWidth)($t1)
/* B22358 800AB1B8 3C0A8013 */  lui   $t2, %hi(gScreenHeight)
/* B2235C 800AB1BC 8D4AD274 */  lw    $t2, %lo(gScreenHeight)($t2)
/* B22360 800AB1C0 44892000 */  mtc1  $t1, $f4
/* B22364 800AB1C4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B22368 800AB1C8 448A8000 */  mtc1  $t2, $f16
/* B2236C 800AB1CC 46802020 */  cvt.s.w $f0, $f4
/* B22370 800AB1D0 44816000 */  mtc1  $at, $f12
/* B22374 800AB1D4 02202025 */  move  $a0, $s1
/* B22378 800AB1D8 468080A0 */  cvt.s.w $f2, $f16
/* B2237C 800AB1DC 46000187 */  neg.s $f6, $f0
/* B22380 800AB1E0 46001487 */  neg.s $f18, $f2
/* B22384 800AB1E4 460C3202 */  mul.s $f8, $f6, $f12
/* B22388 800AB1E8 00000000 */  nop   
/* B2238C 800AB1EC 460C0282 */  mul.s $f10, $f0, $f12
/* B22390 800AB1F0 00000000 */  nop   
/* B22394 800AB1F4 460C9102 */  mul.s $f4, $f18, $f12
/* B22398 800AB1F8 44054000 */  mfc1  $a1, $f8
/* B2239C 800AB1FC 460C1182 */  mul.s $f6, $f2, $f12
/* B223A0 800AB200 44065000 */  mfc1  $a2, $f10
/* B223A4 800AB204 44072000 */  mfc1  $a3, $f4
/* B223A8 800AB208 E7A60010 */  swc1  $f6, 0x10($sp)
/* B223AC 800AB20C C648001C */  lwc1  $f8, 0x1c($s2)
/* B223B0 800AB210 E7A80014 */  swc1  $f8, 0x14($sp)
/* B223B4 800AB214 C64A0020 */  lwc1  $f10, 0x20($s2)
/* B223B8 800AB218 E7AA0018 */  swc1  $f10, 0x18($sp)
/* B223BC 800AB21C C6500024 */  lwc1  $f16, 0x24($s2)
/* B223C0 800AB220 0C041169 */  jal   func_801045A4
/* B223C4 800AB224 E7B0001C */   swc1  $f16, 0x1c($sp)
/* B223C8 800AB228 02206825 */  move  $t5, $s1
/* B223CC 800AB22C 02407025 */  move  $t6, $s2
/* B223D0 800AB230 262F003C */  addiu $t7, $s1, 0x3c
.L800AB234:
/* B223D4 800AB234 8DAC0000 */  lw    $t4, ($t5)
/* B223D8 800AB238 25AD000C */  addiu $t5, $t5, 0xc
/* B223DC 800AB23C 25CE000C */  addiu $t6, $t6, 0xc
/* B223E0 800AB240 ADCC0054 */  sw    $t4, 0x54($t6)
/* B223E4 800AB244 8DABFFF8 */  lw    $t3, -8($t5)
/* B223E8 800AB248 ADCB0058 */  sw    $t3, 0x58($t6)
/* B223EC 800AB24C 8DACFFFC */  lw    $t4, -4($t5)
/* B223F0 800AB250 15AFFFF8 */  bne   $t5, $t7, .L800AB234
/* B223F4 800AB254 ADCC005C */   sw    $t4, 0x5c($t6)
/* B223F8 800AB258 8DAC0000 */  lw    $t4, ($t5)
/* B223FC 800AB25C 3C04DA38 */  lui   $a0, (0xDA380007 >> 16) # lui $a0, 0xda38
/* B22400 800AB260 34840007 */  ori   $a0, (0xDA380007 & 0xFFFF) # ori $a0, $a0, 7
/* B22404 800AB264 ADCC0060 */  sw    $t4, 0x60($t6)
/* B22408 800AB268 8E0302C0 */  lw    $v1, 0x2c0($s0)
/* B2240C 800AB26C 3C068014 */  lui   $a2, %hi(D_80141234) # $a2, 0x8014
/* B22410 800AB270 24C61234 */  addiu $a2, %lo(D_80141234) # addiu $a2, $a2, 0x1234
/* B22414 800AB274 24780008 */  addiu $t8, $v1, 8
/* B22418 800AB278 AE1802C0 */  sw    $t8, 0x2c0($s0)
/* B2241C 800AB27C AC710004 */  sw    $s1, 4($v1)
/* B22420 800AB280 AC640000 */  sw    $a0, ($v1)
/* B22424 800AB284 8E0302D0 */  lw    $v1, 0x2d0($s0)
/* B22428 800AB288 02002825 */  move  $a1, $s0
/* B2242C 800AB28C 240702FA */  li    $a3, 762
/* B22430 800AB290 24790008 */  addiu $t9, $v1, 8
/* B22434 800AB294 AE1902D0 */  sw    $t9, 0x2d0($s0)
/* B22438 800AB298 AC640000 */  sw    $a0, ($v1)
/* B2243C 800AB29C 27A40050 */  addiu $a0, $sp, 0x50
/* B22440 800AB2A0 0C031AD5 */  jal   Graph_CloseDisp
/* B22444 800AB2A4 AC710004 */   sw    $s1, 4($v1)
/* B22448 800AB2A8 8FBF0034 */  lw    $ra, 0x34($sp)
/* B2244C 800AB2AC 8FB00028 */  lw    $s0, 0x28($sp)
/* B22450 800AB2B0 8FB1002C */  lw    $s1, 0x2c($sp)
/* B22454 800AB2B4 8FB20030 */  lw    $s2, 0x30($sp)
/* B22458 800AB2B8 27BD0070 */  addiu $sp, $sp, 0x70
/* B2245C 800AB2BC 03E00008 */  jr    $ra
/* B22460 800AB2C0 24020001 */   li    $v0, 1


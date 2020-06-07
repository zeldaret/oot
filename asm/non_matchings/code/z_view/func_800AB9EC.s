.rdata
glabel D_801412EC
    .asciz "vp"
    .balign 4

glabel D_801412F0
    .asciz "../z_view.c"
    .balign 4

glabel D_801412FC
    .asciz "projection"
    .balign 4

glabel D_80141308
    .asciz "../z_view.c"
    .balign 4

glabel D_80141314
    .asciz "projection"
    .balign 4

glabel D_80141320
    .asciz "../z_view.c"
    .balign 4

glabel D_8014132C
    .asciz "viewing"
    .balign 4

glabel D_80141334
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AB9EC
/* B22B8C 800AB9EC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B22B90 800AB9F0 AFBF003C */  sw    $ra, 0x3c($sp)
/* B22B94 800AB9F4 AFB20038 */  sw    $s2, 0x38($sp)
/* B22B98 800AB9F8 AFB10034 */  sw    $s1, 0x34($sp)
/* B22B9C 800AB9FC AFB00030 */  sw    $s0, 0x30($sp)
/* B22BA0 800ABA00 AFA5004C */  sw    $a1, 0x4c($sp)
/* B22BA4 800ABA04 AFA60050 */  sw    $a2, 0x50($sp)
/* B22BA8 800ABA08 8C8F0004 */  lw    $t7, 4($a0)
/* B22BAC 800ABA0C 8CD10000 */  lw    $s1, ($a2)
/* B22BB0 800ABA10 00054903 */  sra   $t1, $a1, 4
/* B22BB4 800ABA14 AFAF0040 */  sw    $t7, 0x40($sp)
/* B22BB8 800ABA18 8C980120 */  lw    $t8, 0x120($a0)
/* B22BBC 800ABA1C 00808025 */  move  $s0, $a0
/* B22BC0 800ABA20 01E02025 */  move  $a0, $t7
/* B22BC4 800ABA24 03054024 */  and   $t0, $t8, $a1
/* B22BC8 800ABA28 01095025 */  or    $t2, $t0, $t1
/* B22BCC 800ABA2C 314B0002 */  andi  $t3, $t2, 2
/* B22BD0 800ABA30 1160004B */  beqz  $t3, .L800ABB60
/* B22BD4 800ABA34 AFAA004C */   sw    $t2, 0x4c($sp)
/* B22BD8 800ABA38 0C031A73 */  jal   Graph_Alloc
/* B22BDC 800ABA3C 24050010 */   li    $a1, 16
/* B22BE0 800ABA40 3C048014 */  lui   $a0, %hi(D_801412EC) # $a0, 0x8014
/* B22BE4 800ABA44 3C068014 */  lui   $a2, %hi(D_801412F0) # $a2, 0x8014
/* B22BE8 800ABA48 00409025 */  move  $s2, $v0
/* B22BEC 800ABA4C 24C612F0 */  addiu $a2, %lo(D_801412F0) # addiu $a2, $a2, 0x12f0
/* B22BF0 800ABA50 248412EC */  addiu $a0, %lo(D_801412EC) # addiu $a0, $a0, 0x12ec
/* B22BF4 800ABA54 00402825 */  move  $a1, $v0
/* B22BF8 800ABA58 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22BFC 800ABA5C 2407038E */   li    $a3, 910
/* B22C00 800ABA60 02402025 */  move  $a0, $s2
/* B22C04 800ABA64 0C02A864 */  jal   View_ViewportToVp
/* B22C08 800ABA68 26050008 */   addiu $a1, $s0, 8
/* B22C0C 800ABA6C 8E4D0000 */  lw    $t5, ($s2)
/* B22C10 800ABA70 02201025 */  move  $v0, $s1
/* B22C14 800ABA74 3C0EE700 */  lui   $t6, 0xe700
/* B22C18 800ABA78 AE0D0050 */  sw    $t5, 0x50($s0)
/* B22C1C 800ABA7C 8E4C0004 */  lw    $t4, 4($s2)
/* B22C20 800ABA80 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B22C24 800ABA84 44810000 */  mtc1  $at, $f0
/* B22C28 800ABA88 AE0C0054 */  sw    $t4, 0x54($s0)
/* B22C2C 800ABA8C 8E4D0008 */  lw    $t5, 8($s2)
/* B22C30 800ABA90 3C01ED00 */  lui   $at, 0xed00
/* B22C34 800ABA94 26310008 */  addiu $s1, $s1, 8
/* B22C38 800ABA98 AE0D0058 */  sw    $t5, 0x58($s0)
/* B22C3C 800ABA9C 8E4C000C */  lw    $t4, 0xc($s2)
/* B22C40 800ABAA0 AE0C005C */  sw    $t4, 0x5c($s0)
/* B22C44 800ABAA4 AC400004 */  sw    $zero, 4($v0)
/* B22C48 800ABAA8 AC4E0000 */  sw    $t6, ($v0)
/* B22C4C 800ABAAC 8E0F0010 */  lw    $t7, 0x10($s0)
/* B22C50 800ABAB0 8E0B0008 */  lw    $t3, 8($s0)
/* B22C54 800ABAB4 02201025 */  move  $v0, $s1
/* B22C58 800ABAB8 448F2000 */  mtc1  $t7, $f4
/* B22C5C 800ABABC 448B8000 */  mtc1  $t3, $f16
/* B22C60 800ABAC0 26310008 */  addiu $s1, $s1, 8
/* B22C64 800ABAC4 468021A0 */  cvt.s.w $f6, $f4
/* B22C68 800ABAC8 468084A0 */  cvt.s.w $f18, $f16
/* B22C6C 800ABACC 46003202 */  mul.s $f8, $f6, $f0
/* B22C70 800ABAD0 00000000 */  nop
/* B22C74 800ABAD4 46009102 */  mul.s $f4, $f18, $f0
/* B22C78 800ABAD8 4600428D */  trunc.w.s $f10, $f8
/* B22C7C 800ABADC 4600218D */  trunc.w.s $f6, $f4
/* B22C80 800ABAE0 44195000 */  mfc1  $t9, $f10
/* B22C84 800ABAE4 440D3000 */  mfc1  $t5, $f6
/* B22C88 800ABAE8 33280FFF */  andi  $t0, $t9, 0xfff
/* B22C8C 800ABAEC 00084B00 */  sll   $t1, $t0, 0xc
/* B22C90 800ABAF0 01215025 */  or    $t2, $t1, $at
/* B22C94 800ABAF4 31AE0FFF */  andi  $t6, $t5, 0xfff
/* B22C98 800ABAF8 014E7825 */  or    $t7, $t2, $t6
/* B22C9C 800ABAFC AC4F0000 */  sw    $t7, ($v0)
/* B22CA0 800ABB00 8E180014 */  lw    $t8, 0x14($s0)
/* B22CA4 800ABB04 8E0C000C */  lw    $t4, 0xc($s0)
/* B22CA8 800ABB08 44984000 */  mtc1  $t8, $f8
/* B22CAC 800ABB0C 448C2000 */  mtc1  $t4, $f4
/* B22CB0 800ABB10 3C18DC08 */  lui   $t8, (0xDC080008 >> 16) # lui $t8, 0xdc08
/* B22CB4 800ABB14 468042A0 */  cvt.s.w $f10, $f8
/* B22CB8 800ABB18 37180008 */  ori   $t8, (0xDC080008 & 0xFFFF) # ori $t8, $t8, 8
/* B22CBC 800ABB1C 468021A0 */  cvt.s.w $f6, $f4
/* B22CC0 800ABB20 46005402 */  mul.s $f16, $f10, $f0
/* B22CC4 800ABB24 00000000 */  nop
/* B22CC8 800ABB28 46003202 */  mul.s $f8, $f6, $f0
/* B22CCC 800ABB2C 4600848D */  trunc.w.s $f18, $f16
/* B22CD0 800ABB30 4600428D */  trunc.w.s $f10, $f8
/* B22CD4 800ABB34 44089000 */  mfc1  $t0, $f18
/* B22CD8 800ABB38 440A5000 */  mfc1  $t2, $f10
/* B22CDC 800ABB3C 31090FFF */  andi  $t1, $t0, 0xfff
/* B22CE0 800ABB40 00095B00 */  sll   $t3, $t1, 0xc
/* B22CE4 800ABB44 314E0FFF */  andi  $t6, $t2, 0xfff
/* B22CE8 800ABB48 016E7825 */  or    $t7, $t3, $t6
/* B22CEC 800ABB4C AC4F0004 */  sw    $t7, 4($v0)
/* B22CF0 800ABB50 02201025 */  move  $v0, $s1
/* B22CF4 800ABB54 AC580000 */  sw    $t8, ($v0)
/* B22CF8 800ABB58 AC520004 */  sw    $s2, 4($v0)
/* B22CFC 800ABB5C 26310008 */  addiu $s1, $s1, 8
.L800ABB60:
/* B22D00 800ABB60 8FB9004C */  lw    $t9, 0x4c($sp)
/* B22D04 800ABB64 8FA40040 */  lw    $a0, 0x40($sp)
/* B22D08 800ABB68 33280008 */  andi  $t0, $t9, 8
/* B22D0C 800ABB6C 1100003F */  beqz  $t0, .L800ABC6C
/* B22D10 800ABB70 8FB9004C */   lw    $t9, 0x4c($sp)
/* B22D14 800ABB74 0C031A73 */  jal   Graph_Alloc
/* B22D18 800ABB78 24050040 */   li    $a1, 64
/* B22D1C 800ABB7C 3C048014 */  lui   $a0, %hi(D_801412FC) # $a0, 0x8014
/* B22D20 800ABB80 3C068014 */  lui   $a2, %hi(D_80141308) # $a2, 0x8014
/* B22D24 800ABB84 00409025 */  move  $s2, $v0
/* B22D28 800ABB88 24C61308 */  addiu $a2, %lo(D_80141308) # addiu $a2, $a2, 0x1308
/* B22D2C 800ABB8C 248412FC */  addiu $a0, %lo(D_801412FC) # addiu $a0, $a0, 0x12fc
/* B22D30 800ABB90 00402825 */  move  $a1, $v0
/* B22D34 800ABB94 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22D38 800ABB98 24070399 */   li    $a3, 921
/* B22D3C 800ABB9C AE1200E0 */  sw    $s2, 0xe0($s0)
/* B22D40 800ABBA0 3C098013 */  lui   $t1, %hi(gScreenWidth)
/* B22D44 800ABBA4 8D29D270 */  lw    $t1, %lo(gScreenWidth)($t1)
/* B22D48 800ABBA8 3C0C8013 */  lui   $t4, %hi(gScreenHeight)
/* B22D4C 800ABBAC 8D8CD274 */  lw    $t4, %lo(gScreenHeight)($t4)
/* B22D50 800ABBB0 44898000 */  mtc1  $t1, $f16
/* B22D54 800ABBB4 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B22D58 800ABBB8 448C4000 */  mtc1  $t4, $f8
/* B22D5C 800ABBBC 46808020 */  cvt.s.w $f0, $f16
/* B22D60 800ABBC0 44816000 */  mtc1  $at, $f12
/* B22D64 800ABBC4 02402025 */  move  $a0, $s2
/* B22D68 800ABBC8 468040A0 */  cvt.s.w $f2, $f8
/* B22D6C 800ABBCC 46000487 */  neg.s $f18, $f0
/* B22D70 800ABBD0 46001287 */  neg.s $f10, $f2
/* B22D74 800ABBD4 460C9102 */  mul.s $f4, $f18, $f12
/* B22D78 800ABBD8 00000000 */  nop
/* B22D7C 800ABBDC 460C0182 */  mul.s $f6, $f0, $f12
/* B22D80 800ABBE0 00000000 */  nop
/* B22D84 800ABBE4 460C5402 */  mul.s $f16, $f10, $f12
/* B22D88 800ABBE8 44052000 */  mfc1  $a1, $f4
/* B22D8C 800ABBEC 460C1482 */  mul.s $f18, $f2, $f12
/* B22D90 800ABBF0 44063000 */  mfc1  $a2, $f6
/* B22D94 800ABBF4 44078000 */  mfc1  $a3, $f16
/* B22D98 800ABBF8 E7B20010 */  swc1  $f18, 0x10($sp)
/* B22D9C 800ABBFC C604001C */  lwc1  $f4, 0x1c($s0)
/* B22DA0 800ABC00 E7A40014 */  swc1  $f4, 0x14($sp)
/* B22DA4 800ABC04 C6060020 */  lwc1  $f6, 0x20($s0)
/* B22DA8 800ABC08 E7A60018 */  swc1  $f6, 0x18($sp)
/* B22DAC 800ABC0C C6080024 */  lwc1  $f8, 0x24($s0)
/* B22DB0 800ABC10 0C041169 */  jal   guOrtho
/* B22DB4 800ABC14 E7A8001C */   swc1  $f8, 0x1c($sp)
/* B22DB8 800ABC18 02405825 */  move  $t3, $s2
/* B22DBC 800ABC1C 02007025 */  move  $t6, $s0
/* B22DC0 800ABC20 264F003C */  addiu $t7, $s2, 0x3c
.L800ABC24:
/* B22DC4 800ABC24 8D6A0000 */  lw    $t2, ($t3)
/* B22DC8 800ABC28 256B000C */  addiu $t3, $t3, 0xc
/* B22DCC 800ABC2C 25CE000C */  addiu $t6, $t6, 0xc
/* B22DD0 800ABC30 ADCA0054 */  sw    $t2, 0x54($t6)
/* B22DD4 800ABC34 8D6DFFF8 */  lw    $t5, -8($t3)
/* B22DD8 800ABC38 ADCD0058 */  sw    $t5, 0x58($t6)
/* B22DDC 800ABC3C 8D6AFFFC */  lw    $t2, -4($t3)
/* B22DE0 800ABC40 156FFFF8 */  bne   $t3, $t7, .L800ABC24
/* B22DE4 800ABC44 ADCA005C */   sw    $t2, 0x5c($t6)
/* B22DE8 800ABC48 8D6A0000 */  lw    $t2, ($t3)
/* B22DEC 800ABC4C 02201025 */  move  $v0, $s1
/* B22DF0 800ABC50 3C18DA38 */  lui   $t8, 0xda38
/* B22DF4 800ABC54 37180007 */  ori   $t8, (0xDA380007 & 0xFFFF) # ori $t8, $t8, 7
/* B22DF8 800ABC58 ADCA0060 */  sw    $t2, 0x60($t6)
/* B22DFC 800ABC5C AC520004 */  sw    $s2, 4($v0)
/* B22E00 800ABC60 AC580000 */  sw    $t8, ($v0)
/* B22E04 800ABC64 10000040 */  b     .L800ABD68
/* B22E08 800ABC68 26310008 */   addiu $s1, $s1, 8
.L800ABC6C:
/* B22E0C 800ABC6C 33280006 */  andi  $t0, $t9, 6
/* B22E10 800ABC70 1100003D */  beqz  $t0, .L800ABD68
/* B22E14 800ABC74 8FA40040 */   lw    $a0, 0x40($sp)
/* B22E18 800ABC78 0C031A73 */  jal   Graph_Alloc
/* B22E1C 800ABC7C 24050040 */   li    $a1, 64
/* B22E20 800ABC80 3C048014 */  lui   $a0, %hi(D_80141314) # $a0, 0x8014
/* B22E24 800ABC84 3C068014 */  lui   $a2, %hi(D_80141320) # $a2, 0x8014
/* B22E28 800ABC88 00409025 */  move  $s2, $v0
/* B22E2C 800ABC8C 24C61320 */  addiu $a2, %lo(D_80141320) # addiu $a2, $a2, 0x1320
/* B22E30 800ABC90 24841314 */  addiu $a0, %lo(D_80141314) # addiu $a0, $a0, 0x1314
/* B22E34 800ABC94 00402825 */  move  $a1, $v0
/* B22E38 800ABC98 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22E3C 800ABC9C 240703A4 */   li    $a3, 932
/* B22E40 800ABCA0 8E090014 */  lw    $t1, 0x14($s0)
/* B22E44 800ABCA4 8E0C0010 */  lw    $t4, 0x10($s0)
/* B22E48 800ABCA8 8E0F000C */  lw    $t7, 0xc($s0)
/* B22E4C 800ABCAC 8E0B0008 */  lw    $t3, 8($s0)
/* B22E50 800ABCB0 012C1023 */  subu  $v0, $t1, $t4
/* B22E54 800ABCB4 44825000 */  mtc1  $v0, $f10
/* B22E58 800ABCB8 01EB1823 */  subu  $v1, $t7, $t3
/* B22E5C 800ABCBC 44839000 */  mtc1  $v1, $f18
/* B22E60 800ABCC0 46805420 */  cvt.s.w $f16, $f10
/* B22E64 800ABCC4 C608001C */  lwc1  $f8, 0x1c($s0)
/* B22E68 800ABCC8 AE1200E0 */  sw    $s2, 0xe0($s0)
/* B22E6C 800ABCCC 8E060018 */  lw    $a2, 0x18($s0)
/* B22E70 800ABCD0 E7A80010 */  swc1  $f8, 0x10($sp)
/* B22E74 800ABCD4 46809120 */  cvt.s.w $f4, $f18
/* B22E78 800ABCD8 C60A0020 */  lwc1  $f10, 0x20($s0)
/* B22E7C 800ABCDC 02402025 */  move  $a0, $s2
/* B22E80 800ABCE0 2605011C */  addiu $a1, $s0, 0x11c
/* B22E84 800ABCE4 E7AA0014 */  swc1  $f10, 0x14($sp)
/* B22E88 800ABCE8 C6120024 */  lwc1  $f18, 0x24($s0)
/* B22E8C 800ABCEC 46048183 */  div.s $f6, $f16, $f4
/* B22E90 800ABCF0 E7B20018 */  swc1  $f18, 0x18($sp)
/* B22E94 800ABCF4 44073000 */  mfc1  $a3, $f6
/* B22E98 800ABCF8 0C0404C0 */  jal   guPerspective
/* B22E9C 800ABCFC 00000000 */   nop
/* B22EA0 800ABD00 02405025 */  move  $t2, $s2
/* B22EA4 800ABD04 0200C025 */  move  $t8, $s0
/* B22EA8 800ABD08 2659003C */  addiu $t9, $s2, 0x3c
.L800ABD0C:
/* B22EAC 800ABD0C 8D4D0000 */  lw    $t5, ($t2)
/* B22EB0 800ABD10 254A000C */  addiu $t2, $t2, 0xc
/* B22EB4 800ABD14 2718000C */  addiu $t8, $t8, 0xc
/* B22EB8 800ABD18 AF0D0054 */  sw    $t5, 0x54($t8)
/* B22EBC 800ABD1C 8D4EFFF8 */  lw    $t6, -8($t2)
/* B22EC0 800ABD20 AF0E0058 */  sw    $t6, 0x58($t8)
/* B22EC4 800ABD24 8D4DFFFC */  lw    $t5, -4($t2)
/* B22EC8 800ABD28 1559FFF8 */  bne   $t2, $t9, .L800ABD0C
/* B22ECC 800ABD2C AF0D005C */   sw    $t5, 0x5c($t8)
/* B22ED0 800ABD30 8D4D0000 */  lw    $t5, ($t2)
/* B22ED4 800ABD34 02201025 */  move  $v0, $s1
/* B22ED8 800ABD38 3C08DB0E */  lui   $t0, 0xdb0e
/* B22EDC 800ABD3C AF0D0060 */  sw    $t5, 0x60($t8)
/* B22EE0 800ABD40 AC480000 */  sw    $t0, ($v0)
/* B22EE4 800ABD44 9609011C */  lhu   $t1, 0x11c($s0)
/* B22EE8 800ABD48 26310008 */  addiu $s1, $s1, 8
/* B22EEC 800ABD4C 3C0CDA38 */  lui   $t4, (0xDA380007 >> 16) # lui $t4, 0xda38
/* B22EF0 800ABD50 AC490004 */  sw    $t1, 4($v0)
/* B22EF4 800ABD54 02201025 */  move  $v0, $s1
/* B22EF8 800ABD58 358C0007 */  ori   $t4, (0xDA380007 & 0xFFFF) # ori $t4, $t4, 7
/* B22EFC 800ABD5C AC4C0000 */  sw    $t4, ($v0)
/* B22F00 800ABD60 AC520004 */  sw    $s2, 4($v0)
/* B22F04 800ABD64 26310008 */  addiu $s1, $s1, 8
.L800ABD68:
/* B22F08 800ABD68 8FAF004C */  lw    $t7, 0x4c($sp)
/* B22F0C 800ABD6C 8FA40040 */  lw    $a0, 0x40($sp)
/* B22F10 800ABD70 31EB0001 */  andi  $t3, $t7, 1
/* B22F14 800ABD74 51600036 */  beql  $t3, $zero, .L800ABE50
/* B22F18 800ABD78 AE000120 */   sw    $zero, 0x120($s0)
/* B22F1C 800ABD7C 0C031A73 */  jal   Graph_Alloc
/* B22F20 800ABD80 24050040 */   li    $a1, 64
/* B22F24 800ABD84 3C048014 */  lui   $a0, %hi(D_8014132C) # $a0, 0x8014
/* B22F28 800ABD88 3C068014 */  lui   $a2, %hi(D_80141334) # $a2, 0x8014
/* B22F2C 800ABD8C 00409025 */  move  $s2, $v0
/* B22F30 800ABD90 24C61334 */  addiu $a2, %lo(D_80141334) # addiu $a2, $a2, 0x1334
/* B22F34 800ABD94 2484132C */  addiu $a0, %lo(D_8014132C) # addiu $a0, $a0, 0x132c
/* B22F38 800ABD98 00402825 */  move  $a1, $v0
/* B22F3C 800ABD9C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B22F40 800ABDA0 240703B4 */   li    $a3, 948
/* B22F44 800ABDA4 AE1200E4 */  sw    $s2, 0xe4($s0)
/* B22F48 800ABDA8 C60C0028 */  lwc1  $f12, 0x28($s0)
/* B22F4C 800ABDAC C60E002C */  lwc1  $f14, 0x2c($s0)
/* B22F50 800ABDB0 0C02AF9D */  jal   func_800ABE74
/* B22F54 800ABDB4 8E060030 */   lw    $a2, 0x30($s0)
/* B22F58 800ABDB8 C6100034 */  lwc1  $f16, 0x34($s0)
/* B22F5C 800ABDBC 8E050028 */  lw    $a1, 0x28($s0)
/* B22F60 800ABDC0 8E06002C */  lw    $a2, 0x2c($s0)
/* B22F64 800ABDC4 8E070030 */  lw    $a3, 0x30($s0)
/* B22F68 800ABDC8 E7B00010 */  swc1  $f16, 0x10($sp)
/* B22F6C 800ABDCC C6040038 */  lwc1  $f4, 0x38($s0)
/* B22F70 800ABDD0 02402025 */  move  $a0, $s2
/* B22F74 800ABDD4 E7A40014 */  swc1  $f4, 0x14($sp)
/* B22F78 800ABDD8 C606003C */  lwc1  $f6, 0x3c($s0)
/* B22F7C 800ABDDC E7A60018 */  swc1  $f6, 0x18($sp)
/* B22F80 800ABDE0 C6080040 */  lwc1  $f8, 0x40($s0)
/* B22F84 800ABDE4 E7A8001C */  swc1  $f8, 0x1c($sp)
/* B22F88 800ABDE8 C60A0044 */  lwc1  $f10, 0x44($s0)
/* B22F8C 800ABDEC E7AA0020 */  swc1  $f10, 0x20($sp)
/* B22F90 800ABDF0 C6120048 */  lwc1  $f18, 0x48($s0)
/* B22F94 800ABDF4 0C04078D */  jal   guLookAt
/* B22F98 800ABDF8 E7B20024 */   swc1  $f18, 0x24($sp)
/* B22F9C 800ABDFC 0240C025 */  move  $t8, $s2
/* B22FA0 800ABE00 02007025 */  move  $t6, $s0
/* B22FA4 800ABE04 264D003C */  addiu $t5, $s2, 0x3c
.L800ABE08:
/* B22FA8 800ABE08 8F0A0000 */  lw    $t2, ($t8)
/* B22FAC 800ABE0C 2718000C */  addiu $t8, $t8, 0xc
/* B22FB0 800ABE10 25CE000C */  addiu $t6, $t6, 0xc
/* B22FB4 800ABE14 ADCA0094 */  sw    $t2, 0x94($t6)
/* B22FB8 800ABE18 8F19FFF8 */  lw    $t9, -8($t8)
/* B22FBC 800ABE1C ADD90098 */  sw    $t9, 0x98($t6)
/* B22FC0 800ABE20 8F0AFFFC */  lw    $t2, -4($t8)
/* B22FC4 800ABE24 170DFFF8 */  bne   $t8, $t5, .L800ABE08
/* B22FC8 800ABE28 ADCA009C */   sw    $t2, 0x9c($t6)
/* B22FCC 800ABE2C 8F0A0000 */  lw    $t2, ($t8)
/* B22FD0 800ABE30 02201025 */  move  $v0, $s1
/* B22FD4 800ABE34 3C08DA38 */  lui   $t0, (0xDA380005 >> 16) # lui $t0, 0xda38
/* B22FD8 800ABE38 ADCA00A0 */  sw    $t2, 0xa0($t6)
/* B22FDC 800ABE3C 35080005 */  ori   $t0, (0xDA380005 & 0xFFFF) # ori $t0, $t0, 5
/* B22FE0 800ABE40 AC480000 */  sw    $t0, ($v0)
/* B22FE4 800ABE44 AC520004 */  sw    $s2, 4($v0)
/* B22FE8 800ABE48 26310008 */  addiu $s1, $s1, 8
/* B22FEC 800ABE4C AE000120 */  sw    $zero, 0x120($s0)
.L800ABE50:
/* B22FF0 800ABE50 8FA90050 */  lw    $t1, 0x50($sp)
/* B22FF4 800ABE54 24020001 */  li    $v0, 1
/* B22FF8 800ABE58 AD310000 */  sw    $s1, ($t1)
/* B22FFC 800ABE5C 8FBF003C */  lw    $ra, 0x3c($sp)
/* B23000 800ABE60 8FB20038 */  lw    $s2, 0x38($sp)
/* B23004 800ABE64 8FB10034 */  lw    $s1, 0x34($sp)
/* B23008 800ABE68 8FB00030 */  lw    $s0, 0x30($sp)
/* B2300C 800ABE6C 03E00008 */  jr    $ra
/* B23010 800ABE70 27BD0048 */   addiu $sp, $sp, 0x48


.rdata
glabel D_80141134
    .asciz "../z_view.c"
    .balign 4

glabel D_80141140
    .asciz "vp"
    .balign 4

glabel D_80141144
    .asciz "../z_view.c"
    .balign 4

glabel D_80141150
    .asciz "projection"
    .balign 4

glabel D_8014115C
    .asciz "../z_view.c"
    .balign 4

glabel D_80141168
    .asciz "fovy %f near %f far %f scale %f aspect %f normal %08x\n"
    .balign 4

glabel D_801411A0
    .asciz "projection\n"
    .balign 4

glabel D_801411AC
    .asciz "	%f	%f	%f	%f\n"
    .balign 4

glabel D_801411BC
    .asciz "\n"
    .balign 4

glabel D_801411C0
    .asciz "viewing"
    .balign 4

glabel D_801411C8
    .asciz "../z_view.c"
    .balign 4

glabel D_801411D4
    .asciz "viewing\n"
    .balign 4

glabel D_801411E0
    .asciz "	%f	%f	%f	%f\n"
    .balign 4

glabel D_801411F0
    .asciz "\n"
    .balign 4

glabel D_801411F4
    .asciz "../z_view.c"
    .balign 4

.late_rodata
glabel D_80141388
    .float 10000

.text
glabel func_800AAA9C
/* B21C3C 800AAA9C 27BDFEC8 */  addiu $sp, $sp, -0x138
/* B21C40 800AAAA0 AFBF004C */  sw    $ra, 0x4c($sp)
/* B21C44 800AAAA4 AFB20048 */  sw    $s2, 0x48($sp)
/* B21C48 800AAAA8 AFB10044 */  sw    $s1, 0x44($sp)
/* B21C4C 800AAAAC AFB00040 */  sw    $s0, 0x40($sp)
/* B21C50 800AAAB0 8C920004 */  lw    $s2, 4($a0)
/* B21C54 800AAAB4 00808825 */  move  $s1, $a0
/* B21C58 800AAAB8 3C068014 */  lui   $a2, %hi(D_80141134) # $a2, 0x8014
/* B21C5C 800AAABC 24C61134 */  addiu $a2, %lo(D_80141134) # addiu $a2, $a2, 0x1134
/* B21C60 800AAAC0 27A40108 */  addiu $a0, $sp, 0x108
/* B21C64 800AAAC4 24070254 */  li    $a3, 596
/* B21C68 800AAAC8 0C031AB1 */  jal   func_800C6AC4
/* B21C6C 800AAACC 02402825 */   move  $a1, $s2
/* B21C70 800AAAD0 02402025 */  move  $a0, $s2
/* B21C74 800AAAD4 0C031A73 */  jal   Graph_Alloc
/* B21C78 800AAAD8 24050010 */   li    $a1, 16
/* B21C7C 800AAADC 3C048014 */  lui   $a0, %hi(D_80141140) # $a0, 0x8014
/* B21C80 800AAAE0 3C068014 */  lui   $a2, %hi(D_80141144) # $a2, 0x8014
/* B21C84 800AAAE4 00408025 */  move  $s0, $v0
/* B21C88 800AAAE8 24C61144 */  addiu $a2, %lo(D_80141144) # addiu $a2, $a2, 0x1144
/* B21C8C 800AAAEC 24841140 */  addiu $a0, %lo(D_80141140) # addiu $a0, $a0, 0x1140
/* B21C90 800AAAF0 00402825 */  move  $a1, $v0
/* B21C94 800AAAF4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B21C98 800AAAF8 24070259 */   li    $a3, 601
/* B21C9C 800AAAFC 02002025 */  move  $a0, $s0
/* B21CA0 800AAB00 0C02A864 */  jal   func_800AA190
/* B21CA4 800AAB04 26250008 */   addiu $a1, $s1, 8
/* B21CA8 800AAB08 8E0F0000 */  lw    $t7, ($s0)
/* B21CAC 800AAB0C 02202025 */  move  $a0, $s1
/* B21CB0 800AAB10 AE2F0050 */  sw    $t7, 0x50($s1)
/* B21CB4 800AAB14 8E0E0004 */  lw    $t6, 4($s0)
/* B21CB8 800AAB18 AE2E0054 */  sw    $t6, 0x54($s1)
/* B21CBC 800AAB1C 8E0F0008 */  lw    $t7, 8($s0)
/* B21CC0 800AAB20 AE2F0058 */  sw    $t7, 0x58($s1)
/* B21CC4 800AAB24 8E0E000C */  lw    $t6, 0xc($s0)
/* B21CC8 800AAB28 0C02A954 */  jal   func_800AA550
/* B21CCC 800AAB2C AE2E005C */   sw    $t6, 0x5c($s1)
/* B21CD0 800AAB30 8E4202C0 */  lw    $v0, 0x2c0($s2)
/* B21CD4 800AAB34 3C04DC08 */  lui   $a0, (0xDC080008 >> 16) # lui $a0, 0xdc08
/* B21CD8 800AAB38 34840008 */  ori   $a0, (0xDC080008 & 0xFFFF) # ori $a0, $a0, 8
/* B21CDC 800AAB3C 24580008 */  addiu $t8, $v0, 8
/* B21CE0 800AAB40 AE5802C0 */  sw    $t8, 0x2c0($s2)
/* B21CE4 800AAB44 AC500004 */  sw    $s0, 4($v0)
/* B21CE8 800AAB48 AC440000 */  sw    $a0, ($v0)
/* B21CEC 800AAB4C 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* B21CF0 800AAB50 24050040 */  li    $a1, 64
/* B21CF4 800AAB54 24590008 */  addiu $t9, $v0, 8
/* B21CF8 800AAB58 AE5902D0 */  sw    $t9, 0x2d0($s2)
/* B21CFC 800AAB5C AC440000 */  sw    $a0, ($v0)
/* B21D00 800AAB60 02402025 */  move  $a0, $s2
/* B21D04 800AAB64 0C031A73 */  jal   Graph_Alloc
/* B21D08 800AAB68 AC500004 */   sw    $s0, 4($v0)
/* B21D0C 800AAB6C 3C048014 */  lui   $a0, %hi(D_80141150) # $a0, 0x8014
/* B21D10 800AAB70 3C068014 */  lui   $a2, %hi(D_8014115C) # $a2, 0x8014
/* B21D14 800AAB74 AFA20124 */  sw    $v0, 0x124($sp)
/* B21D18 800AAB78 24C6115C */  addiu $a2, %lo(D_8014115C) # addiu $a2, $a2, 0x115c
/* B21D1C 800AAB7C 24841150 */  addiu $a0, %lo(D_80141150) # addiu $a0, $a0, 0x1150
/* B21D20 800AAB80 00402825 */  move  $a1, $v0
/* B21D24 800AAB84 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B21D28 800AAB88 24070268 */   li    $a3, 616
/* B21D2C 800AAB8C 8FA40124 */  lw    $a0, 0x124($sp)
/* B21D30 800AAB90 8E2B000C */  lw    $t3, 0xc($s1)
/* B21D34 800AAB94 8E2C0008 */  lw    $t4, 8($s1)
/* B21D38 800AAB98 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B21D3C 800AAB9C 2508FA90 */  addiu $t0, %lo(gGameInfo) # addiu $t0, $t0, -0x570
/* B21D40 800AABA0 AE2400E0 */  sw    $a0, 0xe0($s1)
/* B21D44 800AABA4 8D020000 */  lw    $v0, ($t0)
/* B21D48 800AABA8 8E290014 */  lw    $t1, 0x14($s1)
/* B21D4C 800AABAC 8E2A0010 */  lw    $t2, 0x10($s1)
/* B21D50 800AABB0 016C6823 */  subu  $t5, $t3, $t4
/* B21D54 800AABB4 AFAD012C */  sw    $t5, 0x12c($sp)
/* B21D58 800AABB8 844E1074 */  lh    $t6, 0x1074($v0)
/* B21D5C 800AABBC 2403000B */  li    $v1, 11
/* B21D60 800AABC0 012A8023 */  subu  $s0, $t1, $t2
/* B21D64 800AABC4 546E0035 */  bnel  $v1, $t6, .L800AAC9C
/* B21D68 800AABC8 8FAD012C */   lw    $t5, 0x12c($sp)
/* B21D6C 800AABCC 844F1090 */  lh    $t7, 0x1090($v0)
/* B21D70 800AABD0 506F0013 */  beql  $v1, $t7, .L800AAC20
/* B21D74 800AABD4 8459107A */   lh    $t9, 0x107a($v0)
/* B21D78 800AABD8 A4431090 */  sh    $v1, 0x1090($v0)
/* B21D7C 800AABDC 8D190000 */  lw    $t9, ($t0)
/* B21D80 800AABE0 2418003C */  li    $t8, 60
/* B21D84 800AABE4 24093415 */  li    $t1, 13333
/* B21D88 800AABE8 A738107A */  sh    $t8, 0x107a($t9)
/* B21D8C 800AABEC 8D0A0000 */  lw    $t2, ($t0)
/* B21D90 800AABF0 240B000A */  li    $t3, 10
/* B21D94 800AABF4 240D3200 */  li    $t5, 12800
/* B21D98 800AABF8 A549107C */  sh    $t1, 0x107c($t2)
/* B21D9C 800AABFC 8D0C0000 */  lw    $t4, ($t0)
/* B21DA0 800AAC00 240F0064 */  li    $t7, 100
/* B21DA4 800AAC04 A58B107E */  sh    $t3, 0x107e($t4)
/* B21DA8 800AAC08 8D0E0000 */  lw    $t6, ($t0)
/* B21DAC 800AAC0C A5CD1080 */  sh    $t5, 0x1080($t6)
/* B21DB0 800AAC10 8D180000 */  lw    $t8, ($t0)
/* B21DB4 800AAC14 A70F1082 */  sh    $t7, 0x1082($t8)
/* B21DB8 800AAC18 8D020000 */  lw    $v0, ($t0)
/* B21DBC 800AAC1C 8459107A */  lh    $t9, 0x107a($v0)
.L800AAC20:
/* B21DC0 800AAC20 8449107C */  lh    $t1, 0x107c($v0)
/* B21DC4 800AAC24 844A107E */  lh    $t2, 0x107e($v0)
/* B21DC8 800AAC28 44992000 */  mtc1  $t9, $f4
/* B21DCC 800AAC2C 44893000 */  mtc1  $t1, $f6
/* B21DD0 800AAC30 448A9000 */  mtc1  $t2, $f18
/* B21DD4 800AAC34 46802120 */  cvt.s.w $f4, $f4
/* B21DD8 800AAC38 3C018014 */  lui   $at, %hi(D_80141388)
/* B21DDC 800AAC3C C42A1388 */  lwc1  $f10, %lo(D_80141388)($at)
/* B21DE0 800AAC40 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B21DE4 800AAC44 2625011C */  addiu $a1, $s1, 0x11c
/* B21DE8 800AAC48 46803220 */  cvt.s.w $f8, $f6
/* B21DEC 800AAC4C 44062000 */  mfc1  $a2, $f4
/* B21DF0 800AAC50 46809120 */  cvt.s.w $f4, $f18
/* B21DF4 800AAC54 44819000 */  mtc1  $at, $f18
/* B21DF8 800AAC58 460A4403 */  div.s $f16, $f8, $f10
/* B21DFC 800AAC5C E7A40010 */  swc1  $f4, 0x10($sp)
/* B21E00 800AAC60 844B1080 */  lh    $t3, 0x1080($v0)
/* B21E04 800AAC64 448B3000 */  mtc1  $t3, $f6
/* B21E08 800AAC68 00000000 */  nop   
/* B21E0C 800AAC6C 46803220 */  cvt.s.w $f8, $f6
/* B21E10 800AAC70 E7A80014 */  swc1  $f8, 0x14($sp)
/* B21E14 800AAC74 844C1082 */  lh    $t4, 0x1082($v0)
/* B21E18 800AAC78 448C5000 */  mtc1  $t4, $f10
/* B21E1C 800AAC7C 44078000 */  mfc1  $a3, $f16
/* B21E20 800AAC80 46805420 */  cvt.s.w $f16, $f10
/* B21E24 800AAC84 46128103 */  div.s $f4, $f16, $f18
/* B21E28 800AAC88 0C0404C0 */  jal   guPerspective
/* B21E2C 800AAC8C E7A40018 */   swc1  $f4, 0x18($sp)
/* B21E30 800AAC90 10000012 */  b     .L800AACDC
/* B21E34 800AAC94 00000000 */   nop   
/* B21E38 800AAC98 8FAD012C */  lw    $t5, 0x12c($sp)
.L800AAC9C:
/* B21E3C 800AAC9C 44903000 */  mtc1  $s0, $f6
/* B21E40 800AACA0 C624001C */  lwc1  $f4, 0x1c($s1)
/* B21E44 800AACA4 448D5000 */  mtc1  $t5, $f10
/* B21E48 800AACA8 46803220 */  cvt.s.w $f8, $f6
/* B21E4C 800AACAC 8E260018 */  lw    $a2, 0x18($s1)
/* B21E50 800AACB0 E7A40010 */  swc1  $f4, 0x10($sp)
/* B21E54 800AACB4 C6260020 */  lwc1  $f6, 0x20($s1)
/* B21E58 800AACB8 2625011C */  addiu $a1, $s1, 0x11c
/* B21E5C 800AACBC 46805420 */  cvt.s.w $f16, $f10
/* B21E60 800AACC0 E7A60014 */  swc1  $f6, 0x14($sp)
/* B21E64 800AACC4 C62A0024 */  lwc1  $f10, 0x24($s1)
/* B21E68 800AACC8 E7AA0018 */  swc1  $f10, 0x18($sp)
/* B21E6C 800AACCC 46104483 */  div.s $f18, $f8, $f16
/* B21E70 800AACD0 44079000 */  mfc1  $a3, $f18
/* B21E74 800AACD4 0C0404C0 */  jal   guPerspective
/* B21E78 800AACD8 00000000 */   nop   
.L800AACDC:
/* B21E7C 800AACDC 3C0E8016 */  lui   $t6, %hi(gGameInfo)
/* B21E80 800AACE0 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B21E84 800AACE4 85CF03C4 */  lh    $t7, 0x3c4($t6)
/* B21E88 800AACE8 31F80001 */  andi  $t8, $t7, 1
/* B21E8C 800AACEC 5300003A */  beql  $t8, $zero, .L800AADD8
/* B21E90 800AACF0 8FA50124 */   lw    $a1, 0x124($sp)
/* B21E94 800AACF4 C632001C */  lwc1  $f18, 0x1c($s1)
/* B21E98 800AACF8 C6280018 */  lwc1  $f8, 0x18($s1)
/* B21E9C 800AACFC 8FB9012C */  lw    $t9, 0x12c($sp)
/* B21EA0 800AAD00 46009121 */  cvt.d.s $f4, $f18
/* B21EA4 800AAD04 44909000 */  mtc1  $s0, $f18
/* B21EA8 800AAD08 F7A40010 */  sdc1  $f4, 0x10($sp)
/* B21EAC 800AAD0C C6260020 */  lwc1  $f6, 0x20($s1)
/* B21EB0 800AAD10 46809120 */  cvt.s.w $f4, $f18
/* B21EB4 800AAD14 3C048014 */  lui   $a0, %hi(D_80141168)
/* B21EB8 800AAD18 24841168 */  addiu $a0, %lo(D_80141168) # addiu $a0, $a0, 0x1168
/* B21EBC 800AAD1C 460032A1 */  cvt.d.s $f10, $f6
/* B21EC0 800AAD20 44993000 */  mtc1  $t9, $f6
/* B21EC4 800AAD24 F7AA0018 */  sdc1  $f10, 0x18($sp)
/* B21EC8 800AAD28 46004421 */  cvt.d.s $f16, $f8
/* B21ECC 800AAD2C 468032A0 */  cvt.s.w $f10, $f6
/* B21ED0 800AAD30 C6280024 */  lwc1  $f8, 0x24($s1)
/* B21ED4 800AAD34 44078000 */  mfc1  $a3, $f16
/* B21ED8 800AAD38 44068800 */  mfc1  $a2, $f17
/* B21EDC 800AAD3C 46004421 */  cvt.d.s $f16, $f8
/* B21EE0 800AAD40 460A2203 */  div.s $f8, $f4, $f10
/* B21EE4 800AAD44 F7B00020 */  sdc1  $f16, 0x20($sp)
/* B21EE8 800AAD48 46004421 */  cvt.d.s $f16, $f8
/* B21EEC 800AAD4C F7B00028 */  sdc1  $f16, 0x28($sp)
/* B21EF0 800AAD50 9629011C */  lhu   $t1, 0x11c($s1)
/* B21EF4 800AAD54 0C00084C */  jal   osSyncPrintf
/* B21EF8 800AAD58 AFA90030 */   sw    $t1, 0x30($sp)
/* B21EFC 800AAD5C 8FA40124 */  lw    $a0, 0x124($sp)
/* B21F00 800AAD60 0C03472B */  jal   Matrix_MtxToMtxF
/* B21F04 800AAD64 27A500BC */   addiu $a1, $sp, 0xbc
/* B21F08 800AAD68 3C048014 */  lui   $a0, %hi(D_801411A0) # $a0, 0x8014
/* B21F0C 800AAD6C 0C00084C */  jal   osSyncPrintf
/* B21F10 800AAD70 248411A0 */   addiu $a0, %lo(D_801411A0) # addiu $a0, $a0, 0x11a0
/* B21F14 800AAD74 27B000BC */  addiu $s0, $sp, 0xbc
/* B21F18 800AAD78 C6040004 */  lwc1  $f4, 4($s0)
.L800AAD7C:
/* B21F1C 800AAD7C C6120000 */  lwc1  $f18, ($s0)
/* B21F20 800AAD80 3C048014 */  lui   $a0, %hi(D_801411AC) # $a0, 0x8014
/* B21F24 800AAD84 460022A1 */  cvt.d.s $f10, $f4
/* B21F28 800AAD88 460091A1 */  cvt.d.s $f6, $f18
/* B21F2C 800AAD8C F7AA0010 */  sdc1  $f10, 0x10($sp)
/* B21F30 800AAD90 C6080008 */  lwc1  $f8, 8($s0)
/* B21F34 800AAD94 44073000 */  mfc1  $a3, $f6
/* B21F38 800AAD98 44063800 */  mfc1  $a2, $f7
/* B21F3C 800AAD9C 46004421 */  cvt.d.s $f16, $f8
/* B21F40 800AADA0 248411AC */  addiu $a0, %lo(D_801411AC) # addiu $a0, $a0, 0x11ac
/* B21F44 800AADA4 F7B00018 */  sdc1  $f16, 0x18($sp)
/* B21F48 800AADA8 C612000C */  lwc1  $f18, 0xc($s0)
/* B21F4C 800AADAC 460091A1 */  cvt.d.s $f6, $f18
/* B21F50 800AADB0 0C00084C */  jal   osSyncPrintf
/* B21F54 800AADB4 F7A60020 */   sdc1  $f6, 0x20($sp)
/* B21F58 800AADB8 26100010 */  addiu $s0, $s0, 0x10
/* B21F5C 800AADBC 27AA00FC */  addiu $t2, $sp, 0xfc
/* B21F60 800AADC0 560AFFEE */  bnel  $s0, $t2, .L800AAD7C
/* B21F64 800AADC4 C6040004 */   lwc1  $f4, 4($s0)
/* B21F68 800AADC8 3C048014 */  lui   $a0, %hi(D_801411BC) # $a0, 0x8014
/* B21F6C 800AADCC 0C00084C */  jal   osSyncPrintf
/* B21F70 800AADD0 248411BC */   addiu $a0, %lo(D_801411BC) # addiu $a0, $a0, 0x11bc
/* B21F74 800AADD4 8FA50124 */  lw    $a1, 0x124($sp)
.L800AADD8:
/* B21F78 800AADD8 02207025 */  move  $t6, $s1
/* B21F7C 800AADDC 00A06825 */  move  $t5, $a1
/* B21F80 800AADE0 24AF003C */  addiu $t7, $a1, 0x3c
.L800AADE4:
/* B21F84 800AADE4 8DAC0000 */  lw    $t4, ($t5)
/* B21F88 800AADE8 25AD000C */  addiu $t5, $t5, 0xc
/* B21F8C 800AADEC 25CE000C */  addiu $t6, $t6, 0xc
/* B21F90 800AADF0 ADCC0054 */  sw    $t4, 0x54($t6)
/* B21F94 800AADF4 8DABFFF8 */  lw    $t3, -8($t5)
/* B21F98 800AADF8 ADCB0058 */  sw    $t3, 0x58($t6)
/* B21F9C 800AADFC 8DACFFFC */  lw    $t4, -4($t5)
/* B21FA0 800AAE00 15AFFFF8 */  bne   $t5, $t7, .L800AADE4
/* B21FA4 800AAE04 ADCC005C */   sw    $t4, 0x5c($t6)
/* B21FA8 800AAE08 8DAC0000 */  lw    $t4, ($t5)
/* B21FAC 800AAE0C 02202025 */  move  $a0, $s1
/* B21FB0 800AAE10 0C02AA24 */  jal   func_800AA890
/* B21FB4 800AAE14 ADCC0060 */   sw    $t4, 0x60($t6)
/* B21FB8 800AAE18 8E4202C0 */  lw    $v0, 0x2c0($s2)
/* B21FBC 800AAE1C 3C04DB0E */  lui   $a0, 0xdb0e
/* B21FC0 800AAE20 3C05DA38 */  lui   $a1, (0xDA380007 >> 16) # lui $a1, 0xda38
/* B21FC4 800AAE24 24580008 */  addiu $t8, $v0, 8
/* B21FC8 800AAE28 AE5802C0 */  sw    $t8, 0x2c0($s2)
/* B21FCC 800AAE2C AC440000 */  sw    $a0, ($v0)
/* B21FD0 800AAE30 9639011C */  lhu   $t9, 0x11c($s1)
/* B21FD4 800AAE34 34A50007 */  ori   $a1, (0xDA380007 & 0xFFFF) # ori $a1, $a1, 7
/* B21FD8 800AAE38 AC590004 */  sw    $t9, 4($v0)
/* B21FDC 800AAE3C 8E4202C0 */  lw    $v0, 0x2c0($s2)
/* B21FE0 800AAE40 24490008 */  addiu $t1, $v0, 8
/* B21FE4 800AAE44 AE4902C0 */  sw    $t1, 0x2c0($s2)
/* B21FE8 800AAE48 AC450000 */  sw    $a1, ($v0)
/* B21FEC 800AAE4C 8FAA0124 */  lw    $t2, 0x124($sp)
/* B21FF0 800AAE50 AC4A0004 */  sw    $t2, 4($v0)
/* B21FF4 800AAE54 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* B21FF8 800AAE58 244F0008 */  addiu $t7, $v0, 8
/* B21FFC 800AAE5C AE4F02D0 */  sw    $t7, 0x2d0($s2)
/* B22000 800AAE60 AC440000 */  sw    $a0, ($v0)
/* B22004 800AAE64 962D011C */  lhu   $t5, 0x11c($s1)
/* B22008 800AAE68 02402025 */  move  $a0, $s2
/* B2200C 800AAE6C AC4D0004 */  sw    $t5, 4($v0)
/* B22010 800AAE70 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* B22014 800AAE74 244E0008 */  addiu $t6, $v0, 8
/* B22018 800AAE78 AE4E02D0 */  sw    $t6, 0x2d0($s2)
/* B2201C 800AAE7C AC450000 */  sw    $a1, ($v0)
/* B22020 800AAE80 8FAB0124 */  lw    $t3, 0x124($sp)
/* B22024 800AAE84 24050040 */  li    $a1, 64
/* B22028 800AAE88 0C031A73 */  jal   Graph_Alloc
/* B2202C 800AAE8C AC4B0004 */   sw    $t3, 4($v0)
/* B22030 800AAE90 3C048014 */  lui   $a0, %hi(D_801411C0) # $a0, 0x8014
/* B22034 800AAE94 3C068014 */  lui   $a2, %hi(D_801411C8) # $a2, 0x8014
/* B22038 800AAE98 AFA20120 */  sw    $v0, 0x120($sp)
/* B2203C 800AAE9C 24C611C8 */  addiu $a2, %lo(D_801411C8) # addiu $a2, $a2, 0x11c8
/* B22040 800AAEA0 248411C0 */  addiu $a0, %lo(D_801411C0) # addiu $a0, $a0, 0x11c0
/* B22044 800AAEA4 00402825 */  move  $a1, $v0
/* B22048 800AAEA8 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B2204C 800AAEAC 2407029B */   li    $a3, 667
/* B22050 800AAEB0 C62C0028 */  lwc1  $f12, 0x28($s1)
/* B22054 800AAEB4 C6240034 */  lwc1  $f4, 0x34($s1)
/* B22058 800AAEB8 8FAC0120 */  lw    $t4, 0x120($sp)
/* B2205C 800AAEBC 460C2032 */  c.eq.s $f4, $f12
/* B22060 800AAEC0 AE2C00E4 */  sw    $t4, 0xe4($s1)
/* B22064 800AAEC4 45020018 */  bc1fl .L800AAF28
/* B22068 800AAEC8 C62E002C */   lwc1  $f14, 0x2c($s1)
/* B2206C 800AAECC C622002C */  lwc1  $f2, 0x2c($s1)
/* B22070 800AAED0 C62A0038 */  lwc1  $f10, 0x38($s1)
/* B22074 800AAED4 46025032 */  c.eq.s $f10, $f2
/* B22078 800AAED8 00000000 */  nop   
/* B2207C 800AAEDC 45020012 */  bc1fl .L800AAF28
/* B22080 800AAEE0 C62E002C */   lwc1  $f14, 0x2c($s1)
/* B22084 800AAEE4 C62E0030 */  lwc1  $f14, 0x30($s1)
/* B22088 800AAEE8 C628003C */  lwc1  $f8, 0x3c($s1)
/* B2208C 800AAEEC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B22090 800AAEF0 460E4032 */  c.eq.s $f8, $f14
/* B22094 800AAEF4 00000000 */  nop   
/* B22098 800AAEF8 4502000B */  bc1fl .L800AAF28
/* B2209C 800AAEFC C62E002C */   lwc1  $f14, 0x2c($s1)
/* B220A0 800AAF00 44810000 */  mtc1  $at, $f0
/* B220A4 800AAF04 00000000 */  nop   
/* B220A8 800AAF08 46006400 */  add.s $f16, $f12, $f0
/* B220AC 800AAF0C 46001480 */  add.s $f18, $f2, $f0
/* B220B0 800AAF10 E6300028 */  swc1  $f16, 0x28($s1)
/* B220B4 800AAF14 C62C0028 */  lwc1  $f12, 0x28($s1)
/* B220B8 800AAF18 46007180 */  add.s $f6, $f14, $f0
/* B220BC 800AAF1C E632002C */  swc1  $f18, 0x2c($s1)
/* B220C0 800AAF20 E6260030 */  swc1  $f6, 0x30($s1)
/* B220C4 800AAF24 C62E002C */  lwc1  $f14, 0x2c($s1)
.L800AAF28:
/* B220C8 800AAF28 0C02AF9D */  jal   func_800ABE74
/* B220CC 800AAF2C 8E260030 */   lw    $a2, 0x30($s1)
/* B220D0 800AAF30 C6240034 */  lwc1  $f4, 0x34($s1)
/* B220D4 800AAF34 8E250028 */  lw    $a1, 0x28($s1)
/* B220D8 800AAF38 8E26002C */  lw    $a2, 0x2c($s1)
/* B220DC 800AAF3C 8E270030 */  lw    $a3, 0x30($s1)
/* B220E0 800AAF40 E7A40010 */  swc1  $f4, 0x10($sp)
/* B220E4 800AAF44 C62A0038 */  lwc1  $f10, 0x38($s1)
/* B220E8 800AAF48 8FA40120 */  lw    $a0, 0x120($sp)
/* B220EC 800AAF4C E7AA0014 */  swc1  $f10, 0x14($sp)
/* B220F0 800AAF50 C628003C */  lwc1  $f8, 0x3c($s1)
/* B220F4 800AAF54 E7A80018 */  swc1  $f8, 0x18($sp)
/* B220F8 800AAF58 C6300040 */  lwc1  $f16, 0x40($s1)
/* B220FC 800AAF5C E7B0001C */  swc1  $f16, 0x1c($sp)
/* B22100 800AAF60 C6320044 */  lwc1  $f18, 0x44($s1)
/* B22104 800AAF64 E7B20020 */  swc1  $f18, 0x20($sp)
/* B22108 800AAF68 C6260048 */  lwc1  $f6, 0x48($s1)
/* B2210C 800AAF6C 0C04078D */  jal   func_80101E34
/* B22110 800AAF70 E7A60024 */   swc1  $f6, 0x24($sp)
/* B22114 800AAF74 8FA60120 */  lw    $a2, 0x120($sp)
/* B22118 800AAF78 02205025 */  move  $t2, $s1
/* B2211C 800AAF7C 27A50068 */  addiu $a1, $sp, 0x68
/* B22120 800AAF80 00C04825 */  move  $t1, $a2
/* B22124 800AAF84 24CF003C */  addiu $t7, $a2, 0x3c
.L800AAF88:
/* B22128 800AAF88 8D390000 */  lw    $t9, ($t1)
/* B2212C 800AAF8C 2529000C */  addiu $t1, $t1, 0xc
/* B22130 800AAF90 254A000C */  addiu $t2, $t2, 0xc
/* B22134 800AAF94 AD590094 */  sw    $t9, 0x94($t2)
/* B22138 800AAF98 8D38FFF8 */  lw    $t8, -8($t1)
/* B2213C 800AAF9C AD580098 */  sw    $t8, 0x98($t2)
/* B22140 800AAFA0 8D39FFFC */  lw    $t9, -4($t1)
/* B22144 800AAFA4 152FFFF8 */  bne   $t1, $t7, .L800AAF88
/* B22148 800AAFA8 AD59009C */   sw    $t9, 0x9c($t2)
/* B2214C 800AAFAC 8D390000 */  lw    $t9, ($t1)
/* B22150 800AAFB0 3C0D8016 */  lui   $t5, %hi(gGameInfo) # $t5, 0x8016
/* B22154 800AAFB4 AD5900A0 */  sw    $t9, 0xa0($t2)
/* B22158 800AAFB8 8DADFA90 */  lw    $t5, %lo(gGameInfo)($t5)
/* B2215C 800AAFBC 85AE03C4 */  lh    $t6, 0x3c4($t5)
/* B22160 800AAFC0 31CB0002 */  andi  $t3, $t6, 2
/* B22164 800AAFC4 51600020 */  beql  $t3, $zero, .L800AB048
/* B22168 800AAFC8 8E4202C0 */   lw    $v0, 0x2c0($s2)
/* B2216C 800AAFCC 0C03472B */  jal   Matrix_MtxToMtxF
/* B22170 800AAFD0 8E2400E4 */   lw    $a0, 0xe4($s1)
/* B22174 800AAFD4 3C048014 */  lui   $a0, %hi(D_801411D4) # $a0, 0x8014
/* B22178 800AAFD8 0C00084C */  jal   osSyncPrintf
/* B2217C 800AAFDC 248411D4 */   addiu $a0, %lo(D_801411D4) # addiu $a0, $a0, 0x11d4
/* B22180 800AAFE0 27B00068 */  addiu $s0, $sp, 0x68
/* B22184 800AAFE4 C6080004 */  lwc1  $f8, 4($s0)
.L800AAFE8:
/* B22188 800AAFE8 C6040000 */  lwc1  $f4, ($s0)
/* B2218C 800AAFEC 3C048014 */  lui   $a0, %hi(D_801411E0) # $a0, 0x8014
/* B22190 800AAFF0 46004421 */  cvt.d.s $f16, $f8
/* B22194 800AAFF4 460022A1 */  cvt.d.s $f10, $f4
/* B22198 800AAFF8 F7B00010 */  sdc1  $f16, 0x10($sp)
/* B2219C 800AAFFC C6120008 */  lwc1  $f18, 8($s0)
/* B221A0 800AB000 44075000 */  mfc1  $a3, $f10
/* B221A4 800AB004 44065800 */  mfc1  $a2, $f11
/* B221A8 800AB008 460091A1 */  cvt.d.s $f6, $f18
/* B221AC 800AB00C 248411E0 */  addiu $a0, %lo(D_801411E0) # addiu $a0, $a0, 0x11e0
/* B221B0 800AB010 F7A60018 */  sdc1  $f6, 0x18($sp)
/* B221B4 800AB014 C604000C */  lwc1  $f4, 0xc($s0)
/* B221B8 800AB018 460022A1 */  cvt.d.s $f10, $f4
/* B221BC 800AB01C 0C00084C */  jal   osSyncPrintf
/* B221C0 800AB020 F7AA0020 */   sdc1  $f10, 0x20($sp)
/* B221C4 800AB024 26100010 */  addiu $s0, $s0, 0x10
/* B221C8 800AB028 27AC00A8 */  addiu $t4, $sp, 0xa8
/* B221CC 800AB02C 560CFFEE */  bnel  $s0, $t4, .L800AAFE8
/* B221D0 800AB030 C6080004 */   lwc1  $f8, 4($s0)
/* B221D4 800AB034 3C048014 */  lui   $a0, %hi(D_801411F0) # $a0, 0x8014
/* B221D8 800AB038 0C00084C */  jal   osSyncPrintf
/* B221DC 800AB03C 248411F0 */   addiu $a0, %lo(D_801411F0) # addiu $a0, $a0, 0x11f0
/* B221E0 800AB040 8FA60120 */  lw    $a2, 0x120($sp)
/* B221E4 800AB044 8E4202C0 */  lw    $v0, 0x2c0($s2)
.L800AB048:
/* B221E8 800AB048 3C04DA38 */  lui   $a0, (0xDA380005 >> 16) # lui $a0, 0xda38
/* B221EC 800AB04C 34840005 */  ori   $a0, (0xDA380005 & 0xFFFF) # ori $a0, $a0, 5
/* B221F0 800AB050 244F0008 */  addiu $t7, $v0, 8
/* B221F4 800AB054 AE4F02C0 */  sw    $t7, 0x2c0($s2)
/* B221F8 800AB058 AC460004 */  sw    $a2, 4($v0)
/* B221FC 800AB05C AC440000 */  sw    $a0, ($v0)
/* B22200 800AB060 8E4202D0 */  lw    $v0, 0x2d0($s2)
/* B22204 800AB064 02402825 */  move  $a1, $s2
/* B22208 800AB068 240702C7 */  li    $a3, 711
/* B2220C 800AB06C 24490008 */  addiu $t1, $v0, 8
/* B22210 800AB070 AE4902D0 */  sw    $t1, 0x2d0($s2)
/* B22214 800AB074 AC460004 */  sw    $a2, 4($v0)
/* B22218 800AB078 3C068014 */  lui   $a2, %hi(D_801411F4) # $a2, 0x8014
/* B2221C 800AB07C AC440000 */  sw    $a0, ($v0)
/* B22220 800AB080 27A40108 */  addiu $a0, $sp, 0x108
/* B22224 800AB084 0C031AD5 */  jal   func_800C6B54
/* B22228 800AB088 24C611F4 */   addiu $a2, %lo(D_801411F4) # addiu $a2, $a2, 0x11f4
/* B2222C 800AB08C 8FBF004C */  lw    $ra, 0x4c($sp)
/* B22230 800AB090 8FB00040 */  lw    $s0, 0x40($sp)
/* B22234 800AB094 8FB10044 */  lw    $s1, 0x44($sp)
/* B22238 800AB098 8FB20048 */  lw    $s2, 0x48($sp)
/* B2223C 800AB09C 27BD0138 */  addiu $sp, $sp, 0x138
/* B22240 800AB0A0 03E00008 */  jr    $ra
/* B22244 800AB0A4 24020001 */   li    $v0, 1


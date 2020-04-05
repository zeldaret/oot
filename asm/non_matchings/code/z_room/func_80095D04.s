.rdata
glabel D_8013EF48
    .asciz "../z_room.c"
    .balign 4

glabel D_8013EF54
    .asciz "polygon2->num <= SHAPE_SORT_MAX"
    .balign 4

glabel D_8013EF74
    .asciz "../z_room.c"
    .balign 4

glabel D_8013EF80
    .asciz "../z_room.c"
    .balign 4

.text
glabel func_80095D04
/* B0CEA4 80095D04 27BDFB40 */  addiu $sp, $sp, -0x4c0
/* B0CEA8 80095D08 AFBF001C */  sw    $ra, 0x1c($sp)
/* B0CEAC 80095D0C AFB10018 */  sw    $s1, 0x18($sp)
/* B0CEB0 80095D10 AFB00014 */  sw    $s0, 0x14($sp)
/* B0CEB4 80095D14 AFA404C0 */  sw    $a0, 0x4c0($sp)
/* B0CEB8 80095D18 AFA504C4 */  sw    $a1, 0x4c4($sp)
/* B0CEBC 80095D1C 8C850000 */  lw    $a1, ($a0)
/* B0CEC0 80095D20 00C08025 */  move  $s0, $a2
/* B0CEC4 80095D24 3C068014 */  lui   $a2, %hi(D_8013EF48) # $a2, 0x8014
/* B0CEC8 80095D28 24C6EF48 */  addiu $a2, %lo(D_8013EF48) # addiu $a2, $a2, -0x10b8
/* B0CECC 80095D2C AFA000B0 */  sw    $zero, 0xb0($sp)
/* B0CED0 80095D30 AFA000B4 */  sw    $zero, 0xb4($sp)
/* B0CED4 80095D34 27A4005C */  addiu $a0, $sp, 0x5c
/* B0CED8 80095D38 2407011F */  li    $a3, 287
/* B0CEDC 80095D3C 0C031AB1 */  jal   Graph_OpenDisps
/* B0CEE0 80095D40 AFA5006C */   sw    $a1, 0x6c($sp)
/* B0CEE4 80095D44 32110001 */  andi  $s1, $s0, 1
/* B0CEE8 80095D48 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CEEC 80095D4C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CEF0 80095D50 12200025 */  beqz  $s1, .L80095DE8
/* B0CEF4 80095D54 8FAB00B0 */   lw    $t3, 0xb0($sp)
/* B0CEF8 80095D58 3C048012 */  lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CEFC 80095D5C 248470A0 */  addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CF00 80095D60 8FA504C0 */  lw    $a1, 0x4c0($sp)
/* B0CF04 80095D64 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CF08 80095D68 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CF0C 80095D6C 0C00D0BB */  jal   func_800342EC
/* B0CF10 80095D70 AFAB00B0 */   sw    $t3, 0xb0($sp)
/* B0CF14 80095D74 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CF18 80095D78 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CF1C 80095D7C 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CF20 80095D80 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0CF24 80095D84 3C18DB06 */  lui   $t8, (0xDB06000C >> 16) # lui $t8, 0xdb06
/* B0CF28 80095D88 3718000C */  ori   $t8, (0xDB06000C & 0xFFFF) # ori $t8, $t8, 0xc
/* B0CF2C 80095D8C 244F0008 */  addiu $t7, $v0, 8
/* B0CF30 80095D90 AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B0CF34 80095D94 AC580000 */  sw    $t8, ($v0)
/* B0CF38 80095D98 8FB904C4 */  lw    $t9, 0x4c4($sp)
/* B0CF3C 80095D9C 8F2E000C */  lw    $t6, 0xc($t9)
/* B0CF40 80095DA0 AC4E0004 */  sw    $t6, 4($v0)
/* B0CF44 80095DA4 8FA404C0 */  lw    $a0, 0x4c0($sp)
/* B0CF48 80095DA8 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CF4C 80095DAC AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CF50 80095DB0 0C024F20 */  jal   func_80093C80
/* B0CF54 80095DB4 AFAB00B0 */   sw    $t3, 0xb0($sp)
/* B0CF58 80095DB8 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CF5C 80095DBC 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CF60 80095DC0 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CF64 80095DC4 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0CF68 80095DC8 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B0CF6C 80095DCC 3C198013 */  lui   $t9, %hi(gMtxClear) # $t9, 0x8013
/* B0CF70 80095DD0 244F0008 */  addiu $t7, $v0, 8
/* B0CF74 80095DD4 AD2F02C0 */  sw    $t7, 0x2c0($t1)
/* B0CF78 80095DD8 2739DB20 */  addiu $t9, %lo(gMtxClear) # addiu $t9, $t9, -0x24e0
/* B0CF7C 80095DDC 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B0CF80 80095DE0 AC580000 */  sw    $t8, ($v0)
/* B0CF84 80095DE4 AC590004 */  sw    $t9, 4($v0)
.L80095DE8:
/* B0CF88 80095DE8 320D0002 */  andi  $t5, $s0, 2
/* B0CF8C 80095DEC 11A00029 */  beqz  $t5, .L80095E94
/* B0CF90 80095DF0 3C048012 */   lui   $a0, %hi(D_801270A0) # $a0, 0x8012
/* B0CF94 80095DF4 3C108013 */  lui   $s0, %hi(gMtxClear) # $s0, 0x8013
/* B0CF98 80095DF8 2610DB20 */  addiu $s0, %lo(gMtxClear) # addiu $s0, $s0, -0x24e0
/* B0CF9C 80095DFC 248470A0 */  addiu $a0, %lo(D_801270A0) # addiu $a0, $a0, 0x70a0
/* B0CFA0 80095E00 8FA504C0 */  lw    $a1, 0x4c0($sp)
/* B0CFA4 80095E04 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CFA8 80095E08 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CFAC 80095E0C AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0CFB0 80095E10 0C00D0D7 */  jal   func_8003435C
/* B0CFB4 80095E14 AFAD002C */   sw    $t5, 0x2c($sp)
/* B0CFB8 80095E18 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0CFBC 80095E1C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0CFC0 80095E20 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0CFC4 80095E24 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0CFC8 80095E28 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0CFCC 80095E2C 3C0FDB06 */  lui   $t7, (0xDB06000C >> 16) # lui $t7, 0xdb06
/* B0CFD0 80095E30 244E0008 */  addiu $t6, $v0, 8
/* B0CFD4 80095E34 35EF000C */  ori   $t7, (0xDB06000C & 0xFFFF) # ori $t7, $t7, 0xc
/* B0CFD8 80095E38 AD2E02D0 */  sw    $t6, 0x2d0($t1)
/* B0CFDC 80095E3C AC4F0000 */  sw    $t7, ($v0)
/* B0CFE0 80095E40 8FB804C4 */  lw    $t8, 0x4c4($sp)
/* B0CFE4 80095E44 8F19000C */  lw    $t9, 0xc($t8)
/* B0CFE8 80095E48 AC590004 */  sw    $t9, 4($v0)
/* B0CFEC 80095E4C 8FAE04C0 */  lw    $t6, 0x4c0($sp)
/* B0CFF0 80095E50 8DC40000 */  lw    $a0, ($t6)
/* B0CFF4 80095E54 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0CFF8 80095E58 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0CFFC 80095E5C AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D000 80095E60 0C024F61 */  jal   func_80093D84
/* B0D004 80095E64 AFAD002C */   sw    $t5, 0x2c($sp)
/* B0D008 80095E68 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D00C 80095E6C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D010 80095E70 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D014 80095E74 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D018 80095E78 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D01C 80095E7C 3C18DA38 */  lui   $t8, (0xDA380003 >> 16) # lui $t8, 0xda38
/* B0D020 80095E80 244F0008 */  addiu $t7, $v0, 8
/* B0D024 80095E84 AD2F02D0 */  sw    $t7, 0x2d0($t1)
/* B0D028 80095E88 37180003 */  ori   $t8, (0xDA380003 & 0xFFFF) # ori $t8, $t8, 3
/* B0D02C 80095E8C AC580000 */  sw    $t8, ($v0)
/* B0D030 80095E90 AC500004 */  sw    $s0, 4($v0)
.L80095E94:
/* B0D034 80095E94 8FB904C4 */  lw    $t9, 0x4c4($sp)
/* B0D038 80095E98 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B0D03C 80095E9C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B0D040 80095EA0 8F2C0008 */  lw    $t4, 8($t9)
/* B0D044 80095EA4 3C198016 */  lui   $t9, %hi(gSegments)
/* B0D048 80095EA8 3C058014 */  lui   $a1, %hi(D_8013EF74) # $a1, 0x8014
/* B0D04C 80095EAC 8D820004 */  lw    $v0, 4($t4)
/* B0D050 80095EB0 91840001 */  lbu   $a0, 1($t4)
/* B0D054 80095EB4 27A300B8 */  addiu $v1, $sp, 0xb8
/* B0D058 80095EB8 00027100 */  sll   $t6, $v0, 4
/* B0D05C 80095EBC 000E7F02 */  srl   $t7, $t6, 0x1c
/* B0D060 80095EC0 000FC080 */  sll   $t8, $t7, 2
/* B0D064 80095EC4 0338C821 */  addu  $t9, $t9, $t8
/* B0D068 80095EC8 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B0D06C 80095ECC 00417024 */  and   $t6, $v0, $at
/* B0D070 80095ED0 3C018000 */  lui   $at, 0x8000
/* B0D074 80095ED4 032E8021 */  addu  $s0, $t9, $t6
/* B0D078 80095ED8 02018021 */  addu  $s0, $s0, $at
/* B0D07C 80095EDC 28810041 */  slti  $at, $a0, 0x41
/* B0D080 80095EE0 14200012 */  bnez  $at, .L80095F2C
/* B0D084 80095EE4 24A5EF74 */   addiu $a1, %lo(D_8013EF74) # addiu $a1, $a1, -0x108c
/* B0D088 80095EE8 3C048014 */  lui   $a0, %hi(D_8013EF54) # $a0, 0x8014
/* B0D08C 80095EEC 2484EF54 */  addiu $a0, %lo(D_8013EF54) # addiu $a0, $a0, -0x10ac
/* B0D090 80095EF0 2406013D */  li    $a2, 317
/* B0D094 80095EF4 AFA300A4 */  sw    $v1, 0xa4($sp)
/* B0D098 80095EF8 AFA9006C */  sw    $t1, 0x6c($sp)
/* B0D09C 80095EFC AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0D0A0 80095F00 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D0A4 80095F04 AFAC04BC */  sw    $t4, 0x4bc($sp)
/* B0D0A8 80095F08 0C0007FC */  jal   __assert
/* B0D0AC 80095F0C AFAD002C */   sw    $t5, 0x2c($sp)
/* B0D0B0 80095F10 8FAC04BC */  lw    $t4, 0x4bc($sp)
/* B0D0B4 80095F14 8FA300A4 */  lw    $v1, 0xa4($sp)
/* B0D0B8 80095F18 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D0BC 80095F1C 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D0C0 80095F20 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D0C4 80095F24 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D0C8 80095F28 91840001 */  lbu   $a0, 1($t4)
.L80095F2C:
/* B0D0CC 80095F2C AFB00078 */  sw    $s0, 0x78($sp)
/* B0D0D0 80095F30 18800061 */  blez  $a0, .L800960B8
/* B0D0D4 80095F34 00004025 */   move  $t0, $zero
/* B0D0D8 80095F38 8FA404C0 */  lw    $a0, 0x4c0($sp)
/* B0D0DC 80095F3C 3C010001 */  lui   $at, (0x00011D60 >> 16) # lui $at, 1
/* B0D0E0 80095F40 34211D60 */  ori   $at, (0x00011D60 & 0xFFFF) # ori $at, $at, 0x1d60
/* B0D0E4 80095F44 00812021 */  addu  $a0, $a0, $at
/* B0D0E8 80095F48 AFA40028 */  sw    $a0, 0x28($sp)
/* B0D0EC 80095F4C 860F0000 */  lh    $t7, ($s0)
.L80095F50:
/* B0D0F0 80095F50 8FA40028 */  lw    $a0, 0x28($sp)
/* B0D0F4 80095F54 27A50090 */  addiu $a1, $sp, 0x90
/* B0D0F8 80095F58 448F2000 */  mtc1  $t7, $f4
/* B0D0FC 80095F5C 27A60084 */  addiu $a2, $sp, 0x84
/* B0D100 80095F60 27A70080 */  addiu $a3, $sp, 0x80
/* B0D104 80095F64 468021A0 */  cvt.s.w $f6, $f4
/* B0D108 80095F68 E7A60090 */  swc1  $f6, 0x90($sp)
/* B0D10C 80095F6C 86180002 */  lh    $t8, 2($s0)
/* B0D110 80095F70 44984000 */  mtc1  $t8, $f8
/* B0D114 80095F74 00000000 */  nop   
/* B0D118 80095F78 468042A0 */  cvt.s.w $f10, $f8
/* B0D11C 80095F7C E7AA0094 */  swc1  $f10, 0x94($sp)
/* B0D120 80095F80 86190004 */  lh    $t9, 4($s0)
/* B0D124 80095F84 AFAD002C */  sw    $t5, 0x2c($sp)
/* B0D128 80095F88 AFAC04BC */  sw    $t4, 0x4bc($sp)
/* B0D12C 80095F8C 44998000 */  mtc1  $t9, $f16
/* B0D130 80095F90 AFAB00B0 */  sw    $t3, 0xb0($sp)
/* B0D134 80095F94 AFAA00B4 */  sw    $t2, 0xb4($sp)
/* B0D138 80095F98 468084A0 */  cvt.s.w $f18, $f16
/* B0D13C 80095F9C AFA9006C */  sw    $t1, 0x6c($sp)
/* B0D140 80095FA0 AFA8009C */  sw    $t0, 0x9c($sp)
/* B0D144 80095FA4 AFA300A4 */  sw    $v1, 0xa4($sp)
/* B0D148 80095FA8 0C029B84 */  jal   func_800A6E10
/* B0D14C 80095FAC E7B20098 */   swc1  $f18, 0x98($sp)
/* B0D150 80095FB0 860E0006 */  lh    $t6, 6($s0)
/* B0D154 80095FB4 C7A8008C */  lwc1  $f8, 0x8c($sp)
/* B0D158 80095FB8 8FA300A4 */  lw    $v1, 0xa4($sp)
/* B0D15C 80095FBC 448E2000 */  mtc1  $t6, $f4
/* B0D160 80095FC0 8FA8009C */  lw    $t0, 0x9c($sp)
/* B0D164 80095FC4 8FA9006C */  lw    $t1, 0x6c($sp)
/* B0D168 80095FC8 46802020 */  cvt.s.w $f0, $f4
/* B0D16C 80095FCC 8FAA00B4 */  lw    $t2, 0xb4($sp)
/* B0D170 80095FD0 8FAB00B0 */  lw    $t3, 0xb0($sp)
/* B0D174 80095FD4 8FAC04BC */  lw    $t4, 0x4bc($sp)
/* B0D178 80095FD8 8FAD002C */  lw    $t5, 0x2c($sp)
/* B0D17C 80095FDC 8FAF04C0 */  lw    $t7, 0x4c0($sp)
/* B0D180 80095FE0 46000187 */  neg.s $f6, $f0
/* B0D184 80095FE4 4608303C */  c.lt.s $f6, $f8
/* B0D188 80095FE8 00000000 */  nop   
/* B0D18C 80095FEC 4502002D */  bc1fl .L800960A4
/* B0D190 80095FF0 91840001 */   lbu   $a0, 1($t4)
/* B0D194 80095FF4 85F807B4 */  lh    $t8, 0x7b4($t7)
/* B0D198 80095FF8 46004081 */  sub.s $f2, $f8, $f0
/* B0D19C 80095FFC 01401025 */  move  $v0, $t2
/* B0D1A0 80096000 44985000 */  mtc1  $t8, $f10
/* B0D1A4 80096004 00000000 */  nop   
/* B0D1A8 80096008 46805420 */  cvt.s.w $f16, $f10
/* B0D1AC 8009600C 4610103C */  c.lt.s $f2, $f16
/* B0D1B0 80096010 00000000 */  nop   
/* B0D1B4 80096014 45020023 */  bc1fl .L800960A4
/* B0D1B8 80096018 91840001 */   lbu   $a0, 1($t4)
/* B0D1BC 8009601C AC700000 */  sw    $s0, ($v1)
/* B0D1C0 80096020 15400006 */  bnez  $t2, .L8009603C
/* B0D1C4 80096024 E4620004 */   swc1  $f2, 4($v1)
/* B0D1C8 80096028 00605825 */  move  $t3, $v1
/* B0D1CC 8009602C 00605025 */  move  $t2, $v1
/* B0D1D0 80096030 AC60000C */  sw    $zero, 0xc($v1)
/* B0D1D4 80096034 10000019 */  b     .L8009609C
/* B0D1D8 80096038 AC600008 */   sw    $zero, 8($v1)
.L8009603C:
/* B0D1DC 8009603C C4600004 */  lwc1  $f0, 4($v1)
/* B0D1E0 80096040 C4520004 */  lwc1  $f18, 4($v0)
.L80096044:
/* B0D1E4 80096044 4612003C */  c.lt.s $f0, $f18
/* B0D1E8 80096048 00000000 */  nop   
/* B0D1EC 8009604C 45010004 */  bc1t  .L80096060
/* B0D1F0 80096050 00000000 */   nop   
/* B0D1F4 80096054 8C42000C */  lw    $v0, 0xc($v0)
/* B0D1F8 80096058 5440FFFA */  bnezl $v0, .L80096044
/* B0D1FC 8009605C C4520004 */   lwc1  $f18, 4($v0)
.L80096060:
/* B0D200 80096060 54400007 */  bnezl $v0, .L80096080
/* B0D204 80096064 8C440008 */   lw    $a0, 8($v0)
/* B0D208 80096068 AC6B0008 */  sw    $t3, 8($v1)
/* B0D20C 8009606C AC60000C */  sw    $zero, 0xc($v1)
/* B0D210 80096070 AD63000C */  sw    $v1, 0xc($t3)
/* B0D214 80096074 10000009 */  b     .L8009609C
/* B0D218 80096078 00605825 */   move  $t3, $v1
/* B0D21C 8009607C 8C440008 */  lw    $a0, 8($v0)
.L80096080:
/* B0D220 80096080 14800003 */  bnez  $a0, .L80096090
/* B0D224 80096084 AC640008 */   sw    $a0, 8($v1)
/* B0D228 80096088 10000002 */  b     .L80096094
/* B0D22C 8009608C 00605025 */   move  $t2, $v1
.L80096090:
/* B0D230 80096090 AC83000C */  sw    $v1, 0xc($a0)
.L80096094:
/* B0D234 80096094 AC430008 */  sw    $v1, 8($v0)
/* B0D238 80096098 AC62000C */  sw    $v0, 0xc($v1)
.L8009609C:
/* B0D23C 8009609C 24630010 */  addiu $v1, $v1, 0x10
/* B0D240 800960A0 91840001 */  lbu   $a0, 1($t4)
.L800960A4:
/* B0D244 800960A4 25080001 */  addiu $t0, $t0, 1
/* B0D248 800960A8 26100010 */  addiu $s0, $s0, 0x10
/* B0D24C 800960AC 0104082A */  slt   $at, $t0, $a0
/* B0D250 800960B0 5420FFA7 */  bnezl $at, .L80095F50
/* B0D254 800960B4 860F0000 */   lh    $t7, ($s0)
.L800960B8:
/* B0D258 800960B8 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B0D25C 800960BC 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B0D260 800960C0 24080001 */  li    $t0, 1
/* B0D264 800960C4 1140004C */  beqz  $t2, .L800961F8
/* B0D268 800960C8 A7240D82 */   sh    $a0, 0xd82($t9)
/* B0D26C 800960CC 241F0002 */  li    $ra, 2
/* B0D270 800960D0 240B0001 */  li    $t3, 1
/* B0D274 800960D4 3C07DE00 */  lui   $a3, 0xde00
.L800960D8:
/* B0D278 800960D8 3C058016 */  lui   $a1, %hi(gGameInfo) # $a1, 0x8016
/* B0D27C 800960DC 8CA5FA90 */  lw    $a1, %lo(gGameInfo)($a1)
/* B0D280 800960E0 8D500000 */  lw    $s0, ($t2)
/* B0D284 800960E4 84A60D80 */  lh    $a2, 0xd80($a1)
/* B0D288 800960E8 10C0002B */  beqz  $a2, .L80096198
/* B0D28C 800960EC 00000000 */   nop   
/* B0D290 800960F0 91840001 */  lbu   $a0, 1($t4)
/* B0D294 800960F4 8FA20078 */  lw    $v0, 0x78($sp)
/* B0D298 800960F8 00001825 */  move  $v1, $zero
/* B0D29C 800960FC 18800006 */  blez  $a0, .L80096118
/* B0D2A0 80096100 00000000 */   nop   
.L80096104:
/* B0D2A4 80096104 12020004 */  beq   $s0, $v0, .L80096118
/* B0D2A8 80096108 24630001 */   addiu $v1, $v1, 1
/* B0D2AC 8009610C 0064082A */  slt   $at, $v1, $a0
/* B0D2B0 80096110 1420FFFC */  bnez  $at, .L80096104
/* B0D2B4 80096114 24420010 */   addiu $v0, $v0, 0x10
.L80096118:
/* B0D2B8 80096118 15660005 */  bne   $t3, $a2, .L80096130
/* B0D2BC 8009611C 00000000 */   nop   
/* B0D2C0 80096120 84AE0D86 */  lh    $t6, 0xd86($a1)
/* B0D2C4 80096124 01C8082A */  slt   $at, $t6, $t0
/* B0D2C8 80096128 10200006 */  beqz  $at, .L80096144
/* B0D2CC 8009612C 00000000 */   nop   
.L80096130:
/* B0D2D0 80096130 57E6002E */  bnel  $ra, $a2, .L800961EC
/* B0D2D4 80096134 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D2D8 80096138 84AF0D86 */  lh    $t7, 0xd86($a1)
/* B0D2DC 8009613C 550F002B */  bnel  $t0, $t7, .L800961EC
/* B0D2E0 80096140 8D4A000C */   lw    $t2, 0xc($t2)
.L80096144:
/* B0D2E4 80096144 12200009 */  beqz  $s1, .L8009616C
/* B0D2E8 80096148 00000000 */   nop   
/* B0D2EC 8009614C 8E030008 */  lw    $v1, 8($s0)
/* B0D2F0 80096150 10600006 */  beqz  $v1, .L8009616C
/* B0D2F4 80096154 00000000 */   nop   
/* B0D2F8 80096158 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0D2FC 8009615C 24580008 */  addiu $t8, $v0, 8
/* B0D300 80096160 AD3802C0 */  sw    $t8, 0x2c0($t1)
/* B0D304 80096164 AC430004 */  sw    $v1, 4($v0)
/* B0D308 80096168 AC470000 */  sw    $a3, ($v0)
.L8009616C:
/* B0D30C 8009616C 51A0001F */  beql  $t5, $zero, .L800961EC
/* B0D310 80096170 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D314 80096174 8E03000C */  lw    $v1, 0xc($s0)
/* B0D318 80096178 5060001C */  beql  $v1, $zero, .L800961EC
/* B0D31C 8009617C 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D320 80096180 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D324 80096184 24590008 */  addiu $t9, $v0, 8
/* B0D328 80096188 AD3902D0 */  sw    $t9, 0x2d0($t1)
/* B0D32C 8009618C AC430004 */  sw    $v1, 4($v0)
/* B0D330 80096190 10000015 */  b     .L800961E8
/* B0D334 80096194 AC470000 */   sw    $a3, ($v0)
.L80096198:
/* B0D338 80096198 12200009 */  beqz  $s1, .L800961C0
/* B0D33C 8009619C 00000000 */   nop   
/* B0D340 800961A0 8E030008 */  lw    $v1, 8($s0)
/* B0D344 800961A4 10600006 */  beqz  $v1, .L800961C0
/* B0D348 800961A8 00000000 */   nop   
/* B0D34C 800961AC 8D2202C0 */  lw    $v0, 0x2c0($t1)
/* B0D350 800961B0 244E0008 */  addiu $t6, $v0, 8
/* B0D354 800961B4 AD2E02C0 */  sw    $t6, 0x2c0($t1)
/* B0D358 800961B8 AC430004 */  sw    $v1, 4($v0)
/* B0D35C 800961BC AC470000 */  sw    $a3, ($v0)
.L800961C0:
/* B0D360 800961C0 51A0000A */  beql  $t5, $zero, .L800961EC
/* B0D364 800961C4 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D368 800961C8 8E03000C */  lw    $v1, 0xc($s0)
/* B0D36C 800961CC 50600007 */  beql  $v1, $zero, .L800961EC
/* B0D370 800961D0 8D4A000C */   lw    $t2, 0xc($t2)
/* B0D374 800961D4 8D2202D0 */  lw    $v0, 0x2d0($t1)
/* B0D378 800961D8 244F0008 */  addiu $t7, $v0, 8
/* B0D37C 800961DC AD2F02D0 */  sw    $t7, 0x2d0($t1)
/* B0D380 800961E0 AC430004 */  sw    $v1, 4($v0)
/* B0D384 800961E4 AC470000 */  sw    $a3, ($v0)
.L800961E8:
/* B0D388 800961E8 8D4A000C */  lw    $t2, 0xc($t2)
.L800961EC:
/* B0D38C 800961EC 25080001 */  addiu $t0, $t0, 1
/* B0D390 800961F0 1540FFB9 */  bnez  $t2, .L800960D8
/* B0D394 800961F4 00000000 */   nop   
.L800961F8:
/* B0D398 800961F8 3C198016 */  lui   $t9, %hi(gGameInfo) # $t9, 0x8016
/* B0D39C 800961FC 8F39FA90 */  lw    $t9, %lo(gGameInfo)($t9)
/* B0D3A0 80096200 2518FFFF */  addiu $t8, $t0, -1
/* B0D3A4 80096204 3C068014 */  lui   $a2, %hi(D_8013EF80) # $a2, 0x8014
/* B0D3A8 80096208 A7380D84 */  sh    $t8, 0xd84($t9)
/* B0D3AC 8009620C 8FAE04C0 */  lw    $t6, 0x4c0($sp)
/* B0D3B0 80096210 24C6EF80 */  addiu $a2, %lo(D_8013EF80) # addiu $a2, $a2, -0x1080
/* B0D3B4 80096214 27A4005C */  addiu $a0, $sp, 0x5c
/* B0D3B8 80096218 240701AE */  li    $a3, 430
/* B0D3BC 8009621C 0C031AD5 */  jal   Graph_CloseDisps
/* B0D3C0 80096220 8DC50000 */   lw    $a1, ($t6)
/* B0D3C4 80096224 8FBF001C */  lw    $ra, 0x1c($sp)
/* B0D3C8 80096228 8FB00014 */  lw    $s0, 0x14($sp)
/* B0D3CC 8009622C 8FB10018 */  lw    $s1, 0x18($sp)
/* B0D3D0 80096230 03E00008 */  jr    $ra
/* B0D3D4 80096234 27BD04C0 */   addiu $sp, $sp, 0x4c0


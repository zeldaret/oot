.rdata
glabel D_801353B8
    .asciz "ブラ─表示:頂点確保できず。強制終了\n"
    # EUC-JP: ブラ─表示:頂点確保できず。強制終了 | Blure display: Vertex cannot be secured. forced termination
    .balign 4

.text
glabel EffectBlure_DrawSimple
/* A99BB0 80022A10 27BDFF68 */  addiu $sp, $sp, -0x98
/* A99BB4 80022A14 AFBF004C */  sw    $ra, 0x4c($sp)
/* A99BB8 80022A18 AFBE0048 */  sw    $fp, 0x48($sp)
/* A99BBC 80022A1C AFB70044 */  sw    $s7, 0x44($sp)
/* A99BC0 80022A20 AFB60040 */  sw    $s6, 0x40($sp)
/* A99BC4 80022A24 AFB5003C */  sw    $s5, 0x3c($sp)
/* A99BC8 80022A28 AFB40038 */  sw    $s4, 0x38($sp)
/* A99BCC 80022A2C AFB30034 */  sw    $s3, 0x34($sp)
/* A99BD0 80022A30 AFB20030 */  sw    $s2, 0x30($sp)
/* A99BD4 80022A34 AFB1002C */  sw    $s1, 0x2c($sp)
/* A99BD8 80022A38 AFB00028 */  sw    $s0, 0x28($sp)
/* A99BDC 80022A3C AFA5009C */  sw    $a1, 0x9c($sp)
/* A99BE0 80022A40 9082019E */  lbu   $v0, 0x19e($a0)
/* A99BE4 80022A44 0080A025 */  move  $s4, $a0
/* A99BE8 80022A48 0080B025 */  move  $s6, $a0
/* A99BEC 80022A4C 28410002 */  slti  $at, $v0, 2
/* A99BF0 80022A50 14200127 */  bnez  $at, .L80022EF0
/* A99BF4 80022A54 0002B880 */   sll   $s7, $v0, 2
/* A99BF8 80022A58 00A02025 */  move  $a0, $a1
/* A99BFC 80022A5C 0C031A73 */  jal   Graph_Alloc
/* A99C00 80022A60 00172900 */   sll   $a1, $s7, 4
/* A99C04 80022A64 14400006 */  bnez  $v0, .L80022A80
/* A99C08 80022A68 0040A825 */   move  $s5, $v0
/* A99C0C 80022A6C 3C048013 */  lui   $a0, %hi(D_801353B8) # $a0, 0x8013
/* A99C10 80022A70 0C00084C */  jal   osSyncPrintf
/* A99C14 80022A74 248453B8 */   addiu $a0, %lo(D_801353B8) # addiu $a0, $a0, 0x53b8
/* A99C18 80022A78 1000011E */  b     .L80022EF4
/* A99C1C 80022A7C 8FBF004C */   lw    $ra, 0x4c($sp)
.L80022A80:
/* A99C20 80022A80 3C0E8011 */  lui   $t6, %hi(D_8011578C) # $t6, 0x8011
/* A99C24 80022A84 25CE578C */  addiu $t6, %lo(D_8011578C) # addiu $t6, $t6, 0x578c
/* A99C28 80022A88 89D80000 */  lwl   $t8, ($t6)
/* A99C2C 80022A8C 99D80003 */  lwr   $t8, 3($t6)
/* A99C30 80022A90 3C198011 */  lui   $t9, %hi(D_8011578C+0x10) # $t9, 0x8011
/* A99C34 80022A94 2739579C */  addiu $t9, %lo(D_8011578C+0x10) # addiu $t9, $t9, 0x579c
/* A99C38 80022A98 A8580000 */  swl   $t8, ($v0)
/* A99C3C 80022A9C B8580003 */  swr   $t8, 3($v0)
/* A99C40 80022AA0 89CF0004 */  lwl   $t7, 4($t6)
/* A99C44 80022AA4 99CF0007 */  lwr   $t7, 7($t6)
/* A99C48 80022AA8 00401825 */  move  $v1, $v0
/* A99C4C 80022AAC 3C0B8011 */  lui   $t3, %hi(D_8011578C+0x20) # $t3, 0x8011
/* A99C50 80022AB0 A84F0004 */  swl   $t7, 4($v0)
/* A99C54 80022AB4 B84F0007 */  swr   $t7, 7($v0)
/* A99C58 80022AB8 89D80008 */  lwl   $t8, 8($t6)
/* A99C5C 80022ABC 99D8000B */  lwr   $t8, 0xb($t6)
/* A99C60 80022AC0 256B57AC */  addiu $t3, %lo(D_8011578C+0x20) # addiu $t3, $t3, 0x57ac
/* A99C64 80022AC4 24630040 */  addiu $v1, $v1, 0x40
/* A99C68 80022AC8 A8580008 */  swl   $t8, 8($v0)
/* A99C6C 80022ACC B858000B */  swr   $t8, 0xb($v0)
/* A99C70 80022AD0 89CF000C */  lwl   $t7, 0xc($t6)
/* A99C74 80022AD4 99CF000F */  lwr   $t7, 0xf($t6)
/* A99C78 80022AD8 3C0E8011 */  lui   $t6, %hi(D_8011578C+0x30) # $t6, 0x8011
/* A99C7C 80022ADC 25CE57BC */  addiu $t6, %lo(D_8011578C+0x30) # addiu $t6, $t6, 0x57bc
/* A99C80 80022AE0 A84F000C */  swl   $t7, 0xc($v0)
/* A99C84 80022AE4 B84F000F */  swr   $t7, 0xf($v0)
/* A99C88 80022AE8 8B2A0000 */  lwl   $t2, ($t9)
/* A99C8C 80022AEC 9B2A0003 */  lwr   $t2, 3($t9)
/* A99C90 80022AF0 24080018 */  li    $t0, 24
/* A99C94 80022AF4 2410FFFE */  li    $s0, -2
/* A99C98 80022AF8 A86AFFD0 */  swl   $t2, -0x30($v1)
/* A99C9C 80022AFC B86AFFD3 */  swr   $t2, -0x2d($v1)
/* A99CA0 80022B00 8B290004 */  lwl   $t1, 4($t9)
/* A99CA4 80022B04 9B290007 */  lwr   $t1, 7($t9)
/* A99CA8 80022B08 2412FFFF */  li    $s2, -1
/* A99CAC 80022B0C 02809825 */  move  $s3, $s4
/* A99CB0 80022B10 A869FFD4 */  swl   $t1, -0x2c($v1)
/* A99CB4 80022B14 B869FFD7 */  swr   $t1, -0x29($v1)
/* A99CB8 80022B18 8B2A0008 */  lwl   $t2, 8($t9)
/* A99CBC 80022B1C 9B2A000B */  lwr   $t2, 0xb($t9)
/* A99CC0 80022B20 A86AFFD8 */  swl   $t2, -0x28($v1)
/* A99CC4 80022B24 B86AFFDB */  swr   $t2, -0x25($v1)
/* A99CC8 80022B28 8B29000C */  lwl   $t1, 0xc($t9)
/* A99CCC 80022B2C 9B29000F */  lwr   $t1, 0xf($t9)
/* A99CD0 80022B30 A869FFDC */  swl   $t1, -0x24($v1)
/* A99CD4 80022B34 B869FFDF */  swr   $t1, -0x21($v1)
/* A99CD8 80022B38 896D0000 */  lwl   $t5, ($t3)
/* A99CDC 80022B3C 996D0003 */  lwr   $t5, 3($t3)
/* A99CE0 80022B40 A86DFFE0 */  swl   $t5, -0x20($v1)
/* A99CE4 80022B44 B86DFFE3 */  swr   $t5, -0x1d($v1)
/* A99CE8 80022B48 896C0004 */  lwl   $t4, 4($t3)
/* A99CEC 80022B4C 996C0007 */  lwr   $t4, 7($t3)
/* A99CF0 80022B50 A86CFFE4 */  swl   $t4, -0x1c($v1)
/* A99CF4 80022B54 B86CFFE7 */  swr   $t4, -0x19($v1)
/* A99CF8 80022B58 896D0008 */  lwl   $t5, 8($t3)
/* A99CFC 80022B5C 996D000B */  lwr   $t5, 0xb($t3)
/* A99D00 80022B60 A86DFFE8 */  swl   $t5, -0x18($v1)
/* A99D04 80022B64 B86DFFEB */  swr   $t5, -0x15($v1)
/* A99D08 80022B68 896C000C */  lwl   $t4, 0xc($t3)
/* A99D0C 80022B6C 996C000F */  lwr   $t4, 0xf($t3)
/* A99D10 80022B70 A86CFFEC */  swl   $t4, -0x14($v1)
/* A99D14 80022B74 B86CFFEF */  swr   $t4, -0x11($v1)
/* A99D18 80022B78 89D80000 */  lwl   $t8, ($t6)
/* A99D1C 80022B7C 99D80003 */  lwr   $t8, 3($t6)
/* A99D20 80022B80 A878FFF0 */  swl   $t8, -0x10($v1)
/* A99D24 80022B84 B878FFF3 */  swr   $t8, -0xd($v1)
/* A99D28 80022B88 89CF0004 */  lwl   $t7, 4($t6)
/* A99D2C 80022B8C 99CF0007 */  lwr   $t7, 7($t6)
/* A99D30 80022B90 A86FFFF4 */  swl   $t7, -0xc($v1)
/* A99D34 80022B94 B86FFFF7 */  swr   $t7, -9($v1)
/* A99D38 80022B98 89D80008 */  lwl   $t8, 8($t6)
/* A99D3C 80022B9C 99D8000B */  lwr   $t8, 0xb($t6)
/* A99D40 80022BA0 A878FFF8 */  swl   $t8, -8($v1)
/* A99D44 80022BA4 B878FFFB */  swr   $t8, -5($v1)
/* A99D48 80022BA8 89CF000C */  lwl   $t7, 0xc($t6)
/* A99D4C 80022BAC 99CF000F */  lwr   $t7, 0xf($t6)
/* A99D50 80022BB0 A86FFFFC */  swl   $t7, -4($v1)
/* A99D54 80022BB4 B86FFFFF */  swr   $t7, -1($v1)
/* A99D58 80022BB8 9284019E */  lbu   $a0, 0x19e($s4)
/* A99D5C 80022BBC 28810002 */  slti  $at, $a0, 2
/* A99D60 80022BC0 1420005C */  bnez  $at, .L80022D34
/* A99D64 80022BC4 00801025 */   move  $v0, $a0
/* A99D68 80022BC8 00880019 */  multu $a0, $t0
/* A99D6C 80022BCC 3C048011 */  lui   $a0, %hi(D_801157CC+0x10) # $a0, 0x8011
/* A99D70 80022BD0 3C068011 */  lui   $a2, %hi(D_801157CC+0x30) # $a2, 0x8011
/* A99D74 80022BD4 3C058011 */  lui   $a1, %hi(D_801157CC+0x20) # $a1, 0x8011
/* A99D78 80022BD8 24A557EC */  addiu $a1, %lo(D_801157CC+0x20) # addiu $a1, $a1, 0x57ec
/* A99D7C 80022BDC 24C657FC */  addiu $a2, %lo(D_801157CC+0x30) # addiu $a2, $a2, 0x57fc
/* A99D80 80022BE0 248457DC */  addiu $a0, %lo(D_801157CC+0x10) # addiu $a0, $a0, 0x57dc
/* A99D84 80022BE4 02803825 */  move  $a3, $s4
/* A99D88 80022BE8 0000C812 */  mflo  $t9
/* A99D8C 80022BEC 02994821 */  addu  $t1, $s4, $t9
/* A99D90 80022BF0 252AFFD0 */  addiu $t2, $t1, -0x30
/* A99D94 80022BF4 028A082B */  sltu  $at, $s4, $t2
/* A99D98 80022BF8 1020004E */  beqz  $at, .L80022D34
/* A99D9C 80022BFC 00000000 */   nop   
/* A99DA0 80022C00 3C028011 */  lui   $v0, %hi(D_801157CC) # 0.000000
/* A99DA4 80022C04 244257CC */  addiu $v0, %lo(D_801157CC) # addiu $v0, $v0, 0x57cc
/* A99DA8 80022C08 884C0000 */  lwl   $t4, ($v0)
.L80022C0C:
/* A99DAC 80022C0C 984C0003 */  lwr   $t4, 3($v0)
/* A99DB0 80022C10 24E70018 */  addiu $a3, $a3, 0x18
/* A99DB4 80022C14 24630040 */  addiu $v1, $v1, 0x40
/* A99DB8 80022C18 A86CFFC0 */  swl   $t4, -0x40($v1)
/* A99DBC 80022C1C B86CFFC3 */  swr   $t4, -0x3d($v1)
/* A99DC0 80022C20 884B0004 */  lwl   $t3, 4($v0)
/* A99DC4 80022C24 984B0007 */  lwr   $t3, 7($v0)
/* A99DC8 80022C28 A86BFFC4 */  swl   $t3, -0x3c($v1)
/* A99DCC 80022C2C B86BFFC7 */  swr   $t3, -0x39($v1)
/* A99DD0 80022C30 884C0008 */  lwl   $t4, 8($v0)
/* A99DD4 80022C34 984C000B */  lwr   $t4, 0xb($v0)
/* A99DD8 80022C38 A86CFFC8 */  swl   $t4, -0x38($v1)
/* A99DDC 80022C3C B86CFFCB */  swr   $t4, -0x35($v1)
/* A99DE0 80022C40 884B000C */  lwl   $t3, 0xc($v0)
/* A99DE4 80022C44 984B000F */  lwr   $t3, 0xf($v0)
/* A99DE8 80022C48 A86BFFCC */  swl   $t3, -0x34($v1)
/* A99DEC 80022C4C B86BFFCF */  swr   $t3, -0x31($v1)
/* A99DF0 80022C50 888E0000 */  lwl   $t6, ($a0)
/* A99DF4 80022C54 988E0003 */  lwr   $t6, 3($a0)
/* A99DF8 80022C58 A86EFFD0 */  swl   $t6, -0x30($v1)
/* A99DFC 80022C5C B86EFFD3 */  swr   $t6, -0x2d($v1)
/* A99E00 80022C60 888D0004 */  lwl   $t5, 4($a0)
/* A99E04 80022C64 988D0007 */  lwr   $t5, 7($a0)
/* A99E08 80022C68 A86DFFD4 */  swl   $t5, -0x2c($v1)
/* A99E0C 80022C6C B86DFFD7 */  swr   $t5, -0x29($v1)
/* A99E10 80022C70 888E0008 */  lwl   $t6, 8($a0)
/* A99E14 80022C74 988E000B */  lwr   $t6, 0xb($a0)
/* A99E18 80022C78 A86EFFD8 */  swl   $t6, -0x28($v1)
/* A99E1C 80022C7C B86EFFDB */  swr   $t6, -0x25($v1)
/* A99E20 80022C80 888D000C */  lwl   $t5, 0xc($a0)
/* A99E24 80022C84 988D000F */  lwr   $t5, 0xf($a0)
/* A99E28 80022C88 A86DFFDC */  swl   $t5, -0x24($v1)
/* A99E2C 80022C8C B86DFFDF */  swr   $t5, -0x21($v1)
/* A99E30 80022C90 88B80000 */  lwl   $t8, ($a1)
/* A99E34 80022C94 98B80003 */  lwr   $t8, 3($a1)
/* A99E38 80022C98 A878FFE0 */  swl   $t8, -0x20($v1)
/* A99E3C 80022C9C B878FFE3 */  swr   $t8, -0x1d($v1)
/* A99E40 80022CA0 88AF0004 */  lwl   $t7, 4($a1)
/* A99E44 80022CA4 98AF0007 */  lwr   $t7, 7($a1)
/* A99E48 80022CA8 A86FFFE4 */  swl   $t7, -0x1c($v1)
/* A99E4C 80022CAC B86FFFE7 */  swr   $t7, -0x19($v1)
/* A99E50 80022CB0 88B80008 */  lwl   $t8, 8($a1)
/* A99E54 80022CB4 98B8000B */  lwr   $t8, 0xb($a1)
/* A99E58 80022CB8 A878FFE8 */  swl   $t8, -0x18($v1)
/* A99E5C 80022CBC B878FFEB */  swr   $t8, -0x15($v1)
/* A99E60 80022CC0 88AF000C */  lwl   $t7, 0xc($a1)
/* A99E64 80022CC4 98AF000F */  lwr   $t7, 0xf($a1)
/* A99E68 80022CC8 A86FFFEC */  swl   $t7, -0x14($v1)
/* A99E6C 80022CCC B86FFFEF */  swr   $t7, -0x11($v1)
/* A99E70 80022CD0 88C90000 */  lwl   $t1, ($a2)
/* A99E74 80022CD4 98C90003 */  lwr   $t1, 3($a2)
/* A99E78 80022CD8 A869FFF0 */  swl   $t1, -0x10($v1)
/* A99E7C 80022CDC B869FFF3 */  swr   $t1, -0xd($v1)
/* A99E80 80022CE0 88D90004 */  lwl   $t9, 4($a2)
/* A99E84 80022CE4 98D90007 */  lwr   $t9, 7($a2)
/* A99E88 80022CE8 A879FFF4 */  swl   $t9, -0xc($v1)
/* A99E8C 80022CEC B879FFF7 */  swr   $t9, -9($v1)
/* A99E90 80022CF0 88C90008 */  lwl   $t1, 8($a2)
/* A99E94 80022CF4 98C9000B */  lwr   $t1, 0xb($a2)
/* A99E98 80022CF8 A869FFF8 */  swl   $t1, -8($v1)
/* A99E9C 80022CFC B869FFFB */  swr   $t1, -5($v1)
/* A99EA0 80022D00 88D9000C */  lwl   $t9, 0xc($a2)
/* A99EA4 80022D04 98D9000F */  lwr   $t9, 0xf($a2)
/* A99EA8 80022D08 A879FFFC */  swl   $t9, -4($v1)
/* A99EAC 80022D0C B879FFFF */  swr   $t9, -1($v1)
/* A99EB0 80022D10 92CA019E */  lbu   $t2, 0x19e($s6)
/* A99EB4 80022D14 01480019 */  multu $t2, $t0
/* A99EB8 80022D18 00005812 */  mflo  $t3
/* A99EBC 80022D1C 02CB6021 */  addu  $t4, $s6, $t3
/* A99EC0 80022D20 258DFFD0 */  addiu $t5, $t4, -0x30
/* A99EC4 80022D24 00ED082B */  sltu  $at, $a3, $t5
/* A99EC8 80022D28 5420FFB8 */  bnezl $at, .L80022C0C
/* A99ECC 80022D2C 884C0000 */   lwl   $t4, ($v0)
/* A99ED0 80022D30 9282019E */  lbu   $v0, 0x19e($s4)
.L80022D34:
/* A99ED4 80022D34 1840006A */  blez  $v0, .L80022EE0
/* A99ED8 80022D38 00008825 */   move  $s1, $zero
/* A99EDC 80022D3C 27BE0074 */  addiu $fp, $sp, 0x74
.L80022D40:
/* A99EE0 80022D40 8E6E0004 */  lw    $t6, 4($s3)
/* A99EE4 80022D44 928F019F */  lbu   $t7, 0x19f($s4)
/* A99EE8 80022D48 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* A99EEC 80022D4C 448E2000 */  mtc1  $t6, $f4
/* A99EF0 80022D50 448F4000 */  mtc1  $t7, $f8
/* A99EF4 80022D54 468021A0 */  cvt.s.w $f6, $f4
/* A99EF8 80022D58 05E10004 */  bgez  $t7, .L80022D6C
/* A99EFC 80022D5C 468042A0 */   cvt.s.w $f10, $f8
/* A99F00 80022D60 44818000 */  mtc1  $at, $f16
/* A99F04 80022D64 00000000 */  nop   
/* A99F08 80022D68 46105280 */  add.s $f10, $f10, $f16
.L80022D6C:
/* A99F0C 80022D6C 460A3003 */  div.s $f0, $f6, $f10
/* A99F10 80022D70 27B8006C */  addiu $t8, $sp, 0x6c
/* A99F14 80022D74 27B90064 */  addiu $t9, $sp, 0x64
/* A99F18 80022D78 27A90060 */  addiu $t1, $sp, 0x60
/* A99F1C 80022D7C AFA90018 */  sw    $t1, 0x18($sp)
/* A99F20 80022D80 AFB90014 */  sw    $t9, 0x14($sp)
/* A99F24 80022D84 AFB80010 */  sw    $t8, 0x10($sp)
/* A99F28 80022D88 02802025 */  move  $a0, $s4
/* A99F2C 80022D8C 02202825 */  move  $a1, $s1
/* A99F30 80022D90 03C03825 */  move  $a3, $fp
/* A99F34 80022D94 44060000 */  mfc1  $a2, $f0
/* A99F38 80022D98 0C008294 */  jal   EffectBlure_GetComputedValues
/* A99F3C 80022D9C 00000000 */   nop   
/* A99F40 80022DA0 06000011 */  bltz  $s0, .L80022DE8
/* A99F44 80022DA4 26310001 */   addiu $s1, $s1, 1
/* A99F48 80022DA8 87AB0074 */  lh    $t3, 0x74($sp)
/* A99F4C 80022DAC 00105100 */  sll   $t2, $s0, 4
/* A99F50 80022DB0 02AA1021 */  addu  $v0, $s5, $t2
/* A99F54 80022DB4 A44B0000 */  sh    $t3, ($v0)
/* A99F58 80022DB8 87AC0076 */  lh    $t4, 0x76($sp)
/* A99F5C 80022DBC A44C0002 */  sh    $t4, 2($v0)
/* A99F60 80022DC0 87AD0078 */  lh    $t5, 0x78($sp)
/* A99F64 80022DC4 A44D0004 */  sh    $t5, 4($v0)
/* A99F68 80022DC8 93AE0064 */  lbu   $t6, 0x64($sp)
/* A99F6C 80022DCC A04E000C */  sb    $t6, 0xc($v0)
/* A99F70 80022DD0 93AF0065 */  lbu   $t7, 0x65($sp)
/* A99F74 80022DD4 A04F000D */  sb    $t7, 0xd($v0)
/* A99F78 80022DD8 93B80066 */  lbu   $t8, 0x66($sp)
/* A99F7C 80022DDC A058000E */  sb    $t8, 0xe($v0)
/* A99F80 80022DE0 93B90067 */  lbu   $t9, 0x67($sp)
/* A99F84 80022DE4 A059000F */  sb    $t9, 0xf($v0)
.L80022DE8:
/* A99F88 80022DE8 06400011 */  bltz  $s2, .L80022E30
/* A99F8C 80022DEC 02401825 */   move  $v1, $s2
/* A99F90 80022DF0 87AA006C */  lh    $t2, 0x6c($sp)
/* A99F94 80022DF4 00034900 */  sll   $t1, $v1, 4
/* A99F98 80022DF8 02A91021 */  addu  $v0, $s5, $t1
/* A99F9C 80022DFC A44A0000 */  sh    $t2, ($v0)
/* A99FA0 80022E00 87AB006E */  lh    $t3, 0x6e($sp)
/* A99FA4 80022E04 A44B0002 */  sh    $t3, 2($v0)
/* A99FA8 80022E08 87AC0070 */  lh    $t4, 0x70($sp)
/* A99FAC 80022E0C A44C0004 */  sh    $t4, 4($v0)
/* A99FB0 80022E10 93AD0060 */  lbu   $t5, 0x60($sp)
/* A99FB4 80022E14 A04D000C */  sb    $t5, 0xc($v0)
/* A99FB8 80022E18 93AE0061 */  lbu   $t6, 0x61($sp)
/* A99FBC 80022E1C A04E000D */  sb    $t6, 0xd($v0)
/* A99FC0 80022E20 93AF0062 */  lbu   $t7, 0x62($sp)
/* A99FC4 80022E24 A04F000E */  sb    $t7, 0xe($v0)
/* A99FC8 80022E28 93B80063 */  lbu   $t8, 0x63($sp)
/* A99FCC 80022E2C A058000F */  sb    $t8, 0xf($v0)
.L80022E30:
/* A99FD0 80022E30 24630001 */  addiu $v1, $v1, 1
/* A99FD4 80022E34 02E3082A */  slt   $at, $s7, $v1
/* A99FD8 80022E38 14200010 */  bnez  $at, .L80022E7C
/* A99FDC 80022E3C 87A90074 */   lh    $t1, 0x74($sp)
/* A99FE0 80022E40 0003C900 */  sll   $t9, $v1, 4
/* A99FE4 80022E44 02B91021 */  addu  $v0, $s5, $t9
/* A99FE8 80022E48 A4490000 */  sh    $t1, ($v0)
/* A99FEC 80022E4C 87AA0076 */  lh    $t2, 0x76($sp)
/* A99FF0 80022E50 A44A0002 */  sh    $t2, 2($v0)
/* A99FF4 80022E54 87AB0078 */  lh    $t3, 0x78($sp)
/* A99FF8 80022E58 A44B0004 */  sh    $t3, 4($v0)
/* A99FFC 80022E5C 93AC0064 */  lbu   $t4, 0x64($sp)
/* A9A000 80022E60 A04C000C */  sb    $t4, 0xc($v0)
/* A9A004 80022E64 93AD0065 */  lbu   $t5, 0x65($sp)
/* A9A008 80022E68 A04D000D */  sb    $t5, 0xd($v0)
/* A9A00C 80022E6C 93AE0066 */  lbu   $t6, 0x66($sp)
/* A9A010 80022E70 A04E000E */  sb    $t6, 0xe($v0)
/* A9A014 80022E74 93AF0067 */  lbu   $t7, 0x67($sp)
/* A9A018 80022E78 A04F000F */  sb    $t7, 0xf($v0)
.L80022E7C:
/* A9A01C 80022E7C 24630001 */  addiu $v1, $v1, 1
/* A9A020 80022E80 02E3082A */  slt   $at, $s7, $v1
/* A9A024 80022E84 14200010 */  bnez  $at, .L80022EC8
/* A9A028 80022E88 87B9006C */   lh    $t9, 0x6c($sp)
/* A9A02C 80022E8C 0003C100 */  sll   $t8, $v1, 4
/* A9A030 80022E90 02B81021 */  addu  $v0, $s5, $t8
/* A9A034 80022E94 A4590000 */  sh    $t9, ($v0)
/* A9A038 80022E98 87A9006E */  lh    $t1, 0x6e($sp)
/* A9A03C 80022E9C A4490002 */  sh    $t1, 2($v0)
/* A9A040 80022EA0 87AA0070 */  lh    $t2, 0x70($sp)
/* A9A044 80022EA4 A44A0004 */  sh    $t2, 4($v0)
/* A9A048 80022EA8 93AB0060 */  lbu   $t3, 0x60($sp)
/* A9A04C 80022EAC A04B000C */  sb    $t3, 0xc($v0)
/* A9A050 80022EB0 93AC0061 */  lbu   $t4, 0x61($sp)
/* A9A054 80022EB4 A04C000D */  sb    $t4, 0xd($v0)
/* A9A058 80022EB8 93AD0062 */  lbu   $t5, 0x62($sp)
/* A9A05C 80022EBC A04D000E */  sb    $t5, 0xe($v0)
/* A9A060 80022EC0 93AE0063 */  lbu   $t6, 0x63($sp)
/* A9A064 80022EC4 A04E000F */  sb    $t6, 0xf($v0)
.L80022EC8:
/* A9A068 80022EC8 92CF019E */  lbu   $t7, 0x19e($s6)
/* A9A06C 80022ECC 26100004 */  addiu $s0, $s0, 4
/* A9A070 80022ED0 26520004 */  addiu $s2, $s2, 4
/* A9A074 80022ED4 022F082A */  slt   $at, $s1, $t7
/* A9A078 80022ED8 1420FF99 */  bnez  $at, .L80022D40
/* A9A07C 80022EDC 26730018 */   addiu $s3, $s3, 0x18
.L80022EE0:
/* A9A080 80022EE0 8FA4009C */  lw    $a0, 0x9c($sp)
/* A9A084 80022EE4 02802825 */  move  $a1, $s4
/* A9A088 80022EE8 0C00893D */  jal   EffectBlure_DrawSimpleVertices
/* A9A08C 80022EEC 02A03025 */   move  $a2, $s5
.L80022EF0:
/* A9A090 80022EF0 8FBF004C */  lw    $ra, 0x4c($sp)
.L80022EF4:
/* A9A094 80022EF4 8FB00028 */  lw    $s0, 0x28($sp)
/* A9A098 80022EF8 8FB1002C */  lw    $s1, 0x2c($sp)
/* A9A09C 80022EFC 8FB20030 */  lw    $s2, 0x30($sp)
/* A9A0A0 80022F00 8FB30034 */  lw    $s3, 0x34($sp)
/* A9A0A4 80022F04 8FB40038 */  lw    $s4, 0x38($sp)
/* A9A0A8 80022F08 8FB5003C */  lw    $s5, 0x3c($sp)
/* A9A0AC 80022F0C 8FB60040 */  lw    $s6, 0x40($sp)
/* A9A0B0 80022F10 8FB70044 */  lw    $s7, 0x44($sp)
/* A9A0B4 80022F14 8FBE0048 */  lw    $fp, 0x48($sp)
/* A9A0B8 80022F18 03E00008 */  jr    $ra
/* A9A0BC 80022F1C 27BD0098 */   addiu $sp, $sp, 0x98


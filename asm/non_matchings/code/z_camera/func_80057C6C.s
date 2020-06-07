.rdata
glabel D_80139824
    .asciz "\x1B[34mcamera: initialize --- \x1B[m UID %d\n"
    .balign 4

.late_rodata
glabel D_8013A3F4
    .float 0.01

.text
glabel func_80057C6C
/* ACEE0C 80057C6C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* ACEE10 80057C70 AFBF001C */  sw    $ra, 0x1c($sp)
/* ACEE14 80057C74 AFB00018 */  sw    $s0, 0x18($sp)
/* ACEE18 80057C78 AFA50024 */  sw    $a1, 0x24($sp)
/* ACEE1C 80057C7C AFA60028 */  sw    $a2, 0x28($sp)
/* ACEE20 80057C80 00808025 */  move  $s0, $a0
/* ACEE24 80057C84 AFA7002C */  sw    $a3, 0x2c($sp)
/* ACEE28 80057C88 2406016C */  li    $a2, 364
/* ACEE2C 80057C8C 0C041A18 */  jal   func_80106860
/* ACEE30 80057C90 00002825 */   move  $a1, $zero
/* ACEE34 80057C94 3C0E8012 */  lui   $t6, %hi(sInitRegs) # $t6, 0x8012
/* ACEE38 80057C98 8DCED390 */  lw    $t6, %lo(sInitRegs)($t6)
/* ACEE3C 80057C9C 3C058012 */  lui   $a1, %hi(sOREGInitCnt) # $a1, 0x8012
/* ACEE40 80057CA0 24A59F4C */  addiu $a1, %lo(sOREGInitCnt) # addiu $a1, $a1, -0x60b4
/* ACEE44 80057CA4 51C00035 */  beql  $t6, $zero, .L80057D7C
/* ACEE48 80057CA8 8FAB002C */   lw    $t3, 0x2c($sp)
/* ACEE4C 80057CAC 84AF0000 */  lh    $t7, ($a1)
/* ACEE50 80057CB0 00001825 */  move  $v1, $zero
/* ACEE54 80057CB4 00001025 */  move  $v0, $zero
/* ACEE58 80057CB8 19E00010 */  blez  $t7, .L80057CFC
/* ACEE5C 80057CBC 3C048012 */   lui   $a0, %hi(sOREGInit) # $a0, 0x8012
/* ACEE60 80057CC0 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* ACEE64 80057CC4 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* ACEE68 80057CC8 24849EE0 */  addiu $a0, %lo(sOREGInit) # addiu $a0, $a0, -0x6120
/* ACEE6C 80057CCC 8CF90000 */  lw    $t9, ($a3)
.L80057CD0:
/* ACEE70 80057CD0 84980000 */  lh    $t8, ($a0)
/* ACEE74 80057CD4 24630001 */  addiu $v1, $v1, 1
/* ACEE78 80057CD8 03225021 */  addu  $t2, $t9, $v0
/* ACEE7C 80057CDC A5580194 */  sh    $t8, 0x194($t2)
/* ACEE80 80057CE0 84AB0000 */  lh    $t3, ($a1)
/* ACEE84 80057CE4 24420002 */  addiu $v0, $v0, 2
/* ACEE88 80057CE8 24840002 */  addiu $a0, $a0, 2
/* ACEE8C 80057CEC 006B082A */  slt   $at, $v1, $t3
/* ACEE90 80057CF0 5420FFF7 */  bnezl $at, .L80057CD0
/* ACEE94 80057CF4 8CF90000 */   lw    $t9, ($a3)
/* ACEE98 80057CF8 00001825 */  move  $v1, $zero
.L80057CFC:
/* ACEE9C 80057CFC 3C058012 */  lui   $a1, %hi(sPREGInitCnt) # $a1, 0x8012
/* ACEEA0 80057D00 24A59F88 */  addiu $a1, %lo(sPREGInitCnt) # addiu $a1, $a1, -0x6078
/* ACEEA4 80057D04 84AC0000 */  lh    $t4, ($a1)
/* ACEEA8 80057D08 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* ACEEAC 80057D0C 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* ACEEB0 80057D10 1980000E */  blez  $t4, .L80057D4C
/* ACEEB4 80057D14 00001025 */   move  $v0, $zero
/* ACEEB8 80057D18 3C048012 */  lui   $a0, %hi(sPREGInit) # $a0, 0x8012
/* ACEEBC 80057D1C 24849F50 */  addiu $a0, %lo(sPREGInit) # addiu $a0, $a0, -0x60b0
/* ACEEC0 80057D20 8CEE0000 */  lw    $t6, ($a3)
.L80057D24:
/* ACEEC4 80057D24 848D0000 */  lh    $t5, ($a0)
/* ACEEC8 80057D28 24630001 */  addiu $v1, $v1, 1
/* ACEECC 80057D2C 01C27821 */  addu  $t7, $t6, $v0
/* ACEED0 80057D30 A5ED0254 */  sh    $t5, 0x254($t7)
/* ACEED4 80057D34 84B90000 */  lh    $t9, ($a1)
/* ACEED8 80057D38 24420002 */  addiu $v0, $v0, 2
/* ACEEDC 80057D3C 24840002 */  addiu $a0, $a0, 2
/* ACEEE0 80057D40 0079082A */  slt   $at, $v1, $t9
/* ACEEE4 80057D44 5420FFF7 */  bnezl $at, .L80057D24
/* ACEEE8 80057D48 8CEE0000 */   lw    $t6, ($a3)
.L80057D4C:
/* ACEEEC 80057D4C 3C058016 */  lui   $a1, %hi(D_8015BD80) # $a1, 0x8016
/* ACEEF0 80057D50 24A5BD80 */  addiu $a1, %lo(D_8015BD80) # addiu $a1, $a1, -0x4280
/* ACEEF4 80057D54 0C02E563 */  jal   func_800B958C
/* ACEEF8 80057D58 02002025 */   move  $a0, $s0
/* ACEEFC 80057D5C 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* ACEF00 80057D60 3C018012 */  lui   $at, %hi(sInitRegs) # $at, 0x8012
/* ACEF04 80057D64 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* ACEF08 80057D68 AC20D390 */  sw    $zero, %lo(sInitRegs)($at)
/* ACEF0C 80057D6C 8CEA0000 */  lw    $t2, ($a3)
/* ACEF10 80057D70 2418FFFF */  li    $t8, -1
/* ACEF14 80057D74 A5580304 */  sh    $t8, 0x304($t2)
/* ACEF18 80057D78 8FAB002C */  lw    $t3, 0x2c($sp)
.L80057D7C:
/* ACEF1C 80057D7C 3C028016 */  lui   $v0, %hi(D_8015BD7C) # $v0, 0x8016
/* ACEF20 80057D80 2442BD7C */  addiu $v0, %lo(D_8015BD7C) # addiu $v0, $v0, -0x4284
/* ACEF24 80057D84 3C048016 */  lui   $a0, %hi(D_8015BD80) # $a0, 0x8016
/* ACEF28 80057D88 AC4B0000 */  sw    $t3, ($v0)
/* ACEF2C 80057D8C 2484BD80 */  addiu $a0, %lo(D_8015BD80) # addiu $a0, $a0, -0x4280
/* ACEF30 80057D90 02002825 */  move  $a1, $s0
/* ACEF34 80057D94 0C02D356 */  jal   func_800B4D58
/* ACEF38 80057D98 AE0B008C */   sw    $t3, 0x8c($s0)
/* ACEF3C 80057D9C 3C068012 */  lui   $a2, %hi(D_8011D39C) # $a2, 0x8012
/* ACEF40 80057DA0 24C6D39C */  addiu $a2, %lo(D_8011D39C) # addiu $a2, $a2, -0x2c64
/* ACEF44 80057DA4 84C20000 */  lh    $v0, ($a2)
/* ACEF48 80057DA8 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* ACEF4C 80057DAC 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* ACEF50 80057DB0 00022C00 */  sll   $a1, $v0, 0x10
/* ACEF54 80057DB4 00052C03 */  sra   $a1, $a1, 0x10
/* ACEF58 80057DB8 244E0001 */  addiu $t6, $v0, 1
/* ACEF5C 80057DBC 2409FFFF */  li    $t1, -1
/* ACEF60 80057DC0 10A0001E */  beqz  $a1, .L80057E3C
/* ACEF64 80057DC4 A4CE0000 */   sh    $t6, ($a2)
/* ACEF68 80057DC8 24080004 */  li    $t0, 4
.L80057DCC:
/* ACEF6C 80057DCC 14A00004 */  bnez  $a1, .L80057DE0
/* ACEF70 80057DD0 00001825 */   move  $v1, $zero
/* ACEF74 80057DD4 84CD0000 */  lh    $t5, ($a2)
/* ACEF78 80057DD8 25AF0001 */  addiu $t7, $t5, 1
/* ACEF7C 80057DDC A4CF0000 */  sh    $t7, ($a2)
.L80057DE0:
/* ACEF80 80057DE0 8E04008C */  lw    $a0, 0x8c($s0)
/* ACEF84 80057DE4 0003C880 */  sll   $t9, $v1, 2
.L80057DE8:
/* ACEF88 80057DE8 0099C021 */  addu  $t8, $a0, $t9
/* ACEF8C 80057DEC 8F020790 */  lw    $v0, 0x790($t8)
/* ACEF90 80057DF0 50400005 */  beql  $v0, $zero, .L80057E08
/* ACEF94 80057DF4 24630001 */   addiu $v1, $v1, 1
/* ACEF98 80057DF8 844A0130 */  lh    $t2, 0x130($v0)
/* ACEF9C 80057DFC 10AA0007 */  beq   $a1, $t2, .L80057E1C
/* ACEFA0 80057E00 00000000 */   nop
/* ACEFA4 80057E04 24630001 */  addiu $v1, $v1, 1
.L80057E08:
/* ACEFA8 80057E08 00031C00 */  sll   $v1, $v1, 0x10
/* ACEFAC 80057E0C 00031C03 */  sra   $v1, $v1, 0x10
/* ACEFB0 80057E10 28610004 */  slti  $at, $v1, 4
/* ACEFB4 80057E14 5420FFF4 */  bnezl $at, .L80057DE8
/* ACEFB8 80057E18 0003C880 */   sll   $t9, $v1, 2
.L80057E1C:
/* ACEFBC 80057E1C 10680007 */  beq   $v1, $t0, .L80057E3C
/* ACEFC0 80057E20 00000000 */   nop
/* ACEFC4 80057E24 84C20000 */  lh    $v0, ($a2)
/* ACEFC8 80057E28 00022C00 */  sll   $a1, $v0, 0x10
/* ACEFCC 80057E2C 00052C03 */  sra   $a1, $a1, 0x10
/* ACEFD0 80057E30 244B0001 */  addiu $t3, $v0, 1
/* ACEFD4 80057E34 14A0FFE5 */  bnez  $a1, .L80057DCC
/* ACEFD8 80057E38 A4CB0000 */   sh    $t3, ($a2)
.L80057E3C:
/* ACEFDC 80057E3C 3C018014 */  lui   $at, %hi(D_8013A3F4)
/* ACEFE0 80057E40 C420A3F4 */  lwc1  $f0, %lo(D_8013A3F4)($at)
/* ACEFE4 80057E44 240C3FFF */  li    $t4, 16383
/* ACEFE8 80057E48 A60C0136 */  sh    $t4, 0x136($s0)
/* ACEFEC 80057E4C 8A0D0134 */  lwl   $t5, 0x134($s0)
/* ACEFF0 80057E50 9A0D0137 */  lwr   $t5, 0x137($s0)
/* ACEFF4 80057E54 3C014120 */  li    $at, 0x41200000 # 0.000000
/* ACEFF8 80057E58 44816000 */  mtc1  $at, $f12
/* ACEFFC 80057E5C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACF000 80057E60 44817000 */  mtc1  $at, $f14
/* ACF004 80057E64 AA0D013A */  swl   $t5, 0x13a($s0)
/* ACF008 80057E68 44801000 */  mtc1  $zero, $f2
/* ACF00C 80057E6C 3C014270 */  li    $at, 0x42700000 # 0.000000
/* ACF010 80057E70 BA0D013D */  swr   $t5, 0x13d($s0)
/* ACF014 80057E74 960D0138 */  lhu   $t5, 0x138($s0)
/* ACF018 80057E78 44812000 */  mtc1  $at, $f4
/* ACF01C 80057E7C A6050130 */  sh    $a1, 0x130($s0)
/* ACF020 80057E80 E60C00C0 */  swc1  $f12, 0xc0($s0)
/* ACF024 80057E84 E60C00C8 */  swc1  $f12, 0xc8($s0)
/* ACF028 80057E88 E60E006C */  swc1  $f14, 0x6c($s0)
/* ACF02C 80057E8C E6020068 */  swc1  $f2, 0x68($s0)
/* ACF030 80057E90 E6020070 */  swc1  $f2, 0x70($s0)
/* ACF034 80057E94 A60D013E */  sh    $t5, 0x13e($s0)
/* ACF038 80057E98 E60400FC */  swc1  $f4, 0xfc($s0)
/* ACF03C 80057E9C 8CEF0000 */  lw    $t7, ($a3)
/* ACF040 80057EA0 3C018012 */  lui   $at, %hi(D_8011D3A8) # $at, 0x8012
/* ACF044 80057EA4 3C048014 */  lui   $a0, %hi(D_80139824)
/* ACF048 80057EA8 85F901A2 */  lh    $t9, 0x1a2($t7)
/* ACF04C 80057EAC 240F0020 */  li    $t7, 32
/* ACF050 80057EB0 24849824 */  addiu $a0, %lo(D_80139824) # addiu $a0, $a0, -0x67dc
/* ACF054 80057EB4 44993000 */  mtc1  $t9, $f6
/* ACF058 80057EB8 24190021 */  li    $t9, 33
/* ACF05C 80057EBC 46803220 */  cvt.s.w $f8, $f6
/* ACF060 80057EC0 E60800C4 */  swc1  $f8, 0xc4($s0)
/* ACF064 80057EC4 8CF80000 */  lw    $t8, ($a3)
/* ACF068 80057EC8 870A0198 */  lh    $t2, 0x198($t8)
/* ACF06C 80057ECC 448A5000 */  mtc1  $t2, $f10
/* ACF070 80057ED0 00000000 */  nop
/* ACF074 80057ED4 46805420 */  cvt.s.w $f16, $f10
/* ACF078 80057ED8 46008482 */  mul.s $f18, $f16, $f0
/* ACF07C 80057EDC E61200CC */  swc1  $f18, 0xcc($s0)
/* ACF080 80057EE0 8CEB0000 */  lw    $t3, ($a3)
/* ACF084 80057EE4 856C019A */  lh    $t4, 0x19a($t3)
/* ACF088 80057EE8 240B0032 */  li    $t3, 50
/* ACF08C 80057EEC 448C2000 */  mtc1  $t4, $f4
/* ACF090 80057EF0 240C7FFF */  li    $t4, 32767
/* ACF094 80057EF4 468021A0 */  cvt.s.w $f6, $f4
/* ACF098 80057EF8 46003202 */  mul.s $f8, $f6, $f0
/* ACF09C 80057EFC E60800D0 */  swc1  $f8, 0xd0($s0)
/* ACF0A0 80057F00 8CEE0000 */  lw    $t6, ($a3)
/* ACF0A4 80057F04 85CD019C */  lh    $t5, 0x19c($t6)
/* ACF0A8 80057F08 448D5000 */  mtc1  $t5, $f10
/* ACF0AC 80057F0C 00000000 */  nop
/* ACF0B0 80057F10 46805420 */  cvt.s.w $f16, $f10
/* ACF0B4 80057F14 46008482 */  mul.s $f18, $f16, $f0
/* ACF0B8 80057F18 44800000 */  mtc1  $zero, $f0
/* ACF0BC 80057F1C E61200D4 */  swc1  $f18, 0xd4($s0)
/* ACF0C0 80057F20 AC2FD3A8 */  sw    $t7, %lo(D_8011D3A8)($at)
/* ACF0C4 80057F24 3C018012 */  lui   $at, %hi(D_8011D3A4) # $at, 0x8012
/* ACF0C8 80057F28 AC20D3A4 */  sw    $zero, %lo(D_8011D3A4)($at)
/* ACF0CC 80057F2C A600014C */  sh    $zero, 0x14c($s0)
/* ACF0D0 80057F30 860E014C */  lh    $t6, 0x14c($s0)
/* ACF0D4 80057F34 A6190154 */  sh    $t9, 0x154($s0)
/* ACF0D8 80057F38 A6090166 */  sh    $t1, 0x166($s0)
/* ACF0DC 80057F3C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* ACF0E0 80057F40 86180154 */  lh    $t8, 0x154($s0)
/* ACF0E4 80057F44 860A0166 */  lh    $t2, 0x166($s0)
/* ACF0E8 80057F48 44812000 */  mtc1  $at, $f4
/* ACF0EC 80057F4C 35CD4000 */  ori   $t5, $t6, 0x4000
/* ACF0F0 80057F50 A6000144 */  sh    $zero, 0x144($s0)
/* ACF0F4 80057F54 A60B0146 */  sh    $t3, 0x146($s0)
/* ACF0F8 80057F58 A60C0168 */  sh    $t4, 0x168($s0)
/* ACF0FC 80057F5C A6090160 */  sh    $t1, 0x160($s0)
/* ACF100 80057F60 A60D014C */  sh    $t5, 0x14c($s0)
/* ACF104 80057F64 3C018012 */  lui   $at, %hi(D_8011D3A0) # $at, 0x8012
/* ACF108 80057F68 340FFF00 */  li    $t7, 65280
/* ACF10C 80057F6C E60E006C */  swc1  $f14, 0x6c($s0)
/* ACF110 80057F70 E6020070 */  swc1  $f2, 0x70($s0)
/* ACF114 80057F74 E6020068 */  swc1  $f2, 0x68($s0)
/* ACF118 80057F78 E6000080 */  swc1  $f0, 0x80($s0)
/* ACF11C 80057F7C E6000084 */  swc1  $f0, 0x84($s0)
/* ACF120 80057F80 E6000088 */  swc1  $f0, 0x88($s0)
/* ACF124 80057F84 A6180142 */  sh    $t8, 0x142($s0)
/* ACF128 80057F88 A60A0148 */  sh    $t2, 0x148($s0)
/* ACF12C 80057F8C E6040100 */  swc1  $f4, 0x100($s0)
/* ACF130 80057F90 AC2FD3A0 */  sw    $t7, %lo(D_8011D3A0)($at)
/* ACF134 80057F94 3C018012 */  lui   $at, %hi(D_8011D398) # $at, 0x8012
/* ACF138 80057F98 AC29D398 */  sw    $t1, %lo(D_8011D398)($at)
/* ACF13C 80057F9C 3C018012 */  lui   $at, %hi(D_8011D3F0) # $at, 0x8012
/* ACF140 80057FA0 24190003 */  li    $t9, 3
/* ACF144 80057FA4 AC39D3F0 */  sw    $t9, %lo(D_8011D3F0)($at)
/* ACF148 80057FA8 0C00084C */  jal   osSyncPrintf
/* ACF14C 80057FAC 86050130 */   lh    $a1, 0x130($s0)
/* ACF150 80057FB0 8FBF001C */  lw    $ra, 0x1c($sp)
/* ACF154 80057FB4 8FB00018 */  lw    $s0, 0x18($sp)
/* ACF158 80057FB8 27BD0020 */  addiu $sp, $sp, 0x20
/* ACF15C 80057FBC 03E00008 */  jr    $ra
/* ACF160 80057FC0 00000000 */   nop


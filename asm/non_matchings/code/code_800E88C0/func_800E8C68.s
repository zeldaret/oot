glabel func_800E8C68
/* B5FE08 800E8C68 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5FE0C 800E8C6C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5FE10 800E8C70 9482001A */  lhu   $v0, 0x1a($a0)
/* B5FE14 800E8C74 8C830000 */  lw    $v1, ($a0)
/* B5FE18 800E8C78 2401FFFF */  li    $at, -1
/* B5FE1C 800E8C7C 10400005 */  beqz  $v0, .L800E8C94
/* B5FE20 800E8C80 244EFFFF */   addiu $t6, $v0, -1
/* B5FE24 800E8C84 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B5FE28 800E8C88 44810000 */  mtc1  $at, $f0
/* B5FE2C 800E8C8C 10000081 */  b     .L800E8E94
/* B5FE30 800E8C90 A48E001A */   sh    $t6, 0x1a($a0)
.L800E8C94:
/* B5FE34 800E8C94 50610056 */  beql  $v1, $at, .L800E8DF0
/* B5FE38 800E8C98 44802000 */   mtc1  $zero, $f4
/* B5FE3C 800E8C9C 94820018 */  lhu   $v0, 0x18($a0)
/* B5FE40 800E8CA0 24010001 */  li    $at, 1
/* B5FE44 800E8CA4 50400019 */  beql  $v0, $zero, .L800E8D0C
/* B5FE48 800E8CA8 C484000C */   lwc1  $f4, 0xc($a0)
/* B5FE4C 800E8CAC 14410008 */  bne   $v0, $at, .L800E8CD0
/* B5FE50 800E8CB0 00402825 */   move  $a1, $v0
/* B5FE54 800E8CB4 946F0016 */  lhu   $t7, 0x16($v1)
/* B5FE58 800E8CB8 94820018 */  lhu   $v0, 0x18($a0)
/* B5FE5C 800E8CBC 448F2000 */  mtc1  $t7, $f4
/* B5FE60 800E8CC0 00000000 */  nop
/* B5FE64 800E8CC4 468021A0 */  cvt.s.w $f6, $f4
/* B5FE68 800E8CC8 1000000C */  b     .L800E8CFC
/* B5FE6C 800E8CCC E486000C */   swc1  $f6, 0xc($a0)
.L800E8CD0:
/* B5FE70 800E8CD0 94780016 */  lhu   $t8, 0x16($v1)
/* B5FE74 800E8CD4 44853000 */  mtc1  $a1, $f6
/* B5FE78 800E8CD8 C480000C */  lwc1  $f0, 0xc($a0)
/* B5FE7C 800E8CDC 44984000 */  mtc1  $t8, $f8
/* B5FE80 800E8CE0 00000000 */  nop
/* B5FE84 800E8CE4 468042A0 */  cvt.s.w $f10, $f8
/* B5FE88 800E8CE8 46803220 */  cvt.s.w $f8, $f6
/* B5FE8C 800E8CEC 46005101 */  sub.s $f4, $f10, $f0
/* B5FE90 800E8CF0 46082283 */  div.s $f10, $f4, $f8
/* B5FE94 800E8CF4 460A0180 */  add.s $f6, $f0, $f10
/* B5FE98 800E8CF8 E486000C */  swc1  $f6, 0xc($a0)
.L800E8CFC:
/* B5FE9C 800E8CFC 2459FFFF */  addiu $t9, $v0, -1
/* B5FEA0 800E8D00 10000010 */  b     .L800E8D44
/* B5FEA4 800E8D04 A4990018 */   sh    $t9, 0x18($a0)
/* B5FEA8 800E8D08 C484000C */  lwc1  $f4, 0xc($a0)
.L800E8D0C:
/* B5FEAC 800E8D0C 946A0016 */  lhu   $t2, 0x16($v1)
/* B5FEB0 800E8D10 4600220D */  trunc.w.s $f8, $f4
/* B5FEB4 800E8D14 44094000 */  mfc1  $t1, $f8
/* B5FEB8 800E8D18 00000000 */  nop
/* B5FEBC 800E8D1C 512A000A */  beql  $t1, $t2, .L800E8D48
/* B5FEC0 800E8D20 94820016 */   lhu   $v0, 0x16($a0)
/* B5FEC4 800E8D24 9462001A */  lhu   $v0, 0x1a($v1)
/* B5FEC8 800E8D28 14400006 */  bnez  $v0, .L800E8D44
/* B5FECC 800E8D2C A4820018 */   sh    $v0, 0x18($a0)
/* B5FED0 800E8D30 946B0016 */  lhu   $t3, 0x16($v1)
/* B5FED4 800E8D34 448B5000 */  mtc1  $t3, $f10
/* B5FED8 800E8D38 00000000 */  nop
/* B5FEDC 800E8D3C 468051A0 */  cvt.s.w $f6, $f10
/* B5FEE0 800E8D40 E486000C */  swc1  $f6, 0xc($a0)
.L800E8D44:
/* B5FEE4 800E8D44 94820016 */  lhu   $v0, 0x16($a0)
.L800E8D48:
/* B5FEE8 800E8D48 24010001 */  li    $at, 1
/* B5FEEC 800E8D4C 50400019 */  beql  $v0, $zero, .L800E8DB4
/* B5FEF0 800E8D50 C4840010 */   lwc1  $f4, 0x10($a0)
/* B5FEF4 800E8D54 14410008 */  bne   $v0, $at, .L800E8D78
/* B5FEF8 800E8D58 00402825 */   move  $a1, $v0
/* B5FEFC 800E8D5C 946C0014 */  lhu   $t4, 0x14($v1)
/* B5FF00 800E8D60 94820016 */  lhu   $v0, 0x16($a0)
/* B5FF04 800E8D64 448C2000 */  mtc1  $t4, $f4
/* B5FF08 800E8D68 00000000 */  nop
/* B5FF0C 800E8D6C 46802220 */  cvt.s.w $f8, $f4
/* B5FF10 800E8D70 1000000C */  b     .L800E8DA4
/* B5FF14 800E8D74 E4880010 */   swc1  $f8, 0x10($a0)
.L800E8D78:
/* B5FF18 800E8D78 946D0014 */  lhu   $t5, 0x14($v1)
/* B5FF1C 800E8D7C 44854000 */  mtc1  $a1, $f8
/* B5FF20 800E8D80 C4800010 */  lwc1  $f0, 0x10($a0)
/* B5FF24 800E8D84 448D5000 */  mtc1  $t5, $f10
/* B5FF28 800E8D88 00000000 */  nop
/* B5FF2C 800E8D8C 468051A0 */  cvt.s.w $f6, $f10
/* B5FF30 800E8D90 468042A0 */  cvt.s.w $f10, $f8
/* B5FF34 800E8D94 46003101 */  sub.s $f4, $f6, $f0
/* B5FF38 800E8D98 460A2183 */  div.s $f6, $f4, $f10
/* B5FF3C 800E8D9C 46060200 */  add.s $f8, $f0, $f6
/* B5FF40 800E8DA0 E4880010 */  swc1  $f8, 0x10($a0)
.L800E8DA4:
/* B5FF44 800E8DA4 244EFFFF */  addiu $t6, $v0, -1
/* B5FF48 800E8DA8 10000010 */  b     .L800E8DEC
/* B5FF4C 800E8DAC A48E0016 */   sh    $t6, 0x16($a0)
/* B5FF50 800E8DB0 C4840010 */  lwc1  $f4, 0x10($a0)
.L800E8DB4:
/* B5FF54 800E8DB4 94790014 */  lhu   $t9, 0x14($v1)
/* B5FF58 800E8DB8 4600228D */  trunc.w.s $f10, $f4
/* B5FF5C 800E8DBC 44185000 */  mfc1  $t8, $f10
/* B5FF60 800E8DC0 00000000 */  nop
/* B5FF64 800E8DC4 5319000A */  beql  $t8, $t9, .L800E8DF0
/* B5FF68 800E8DC8 44802000 */   mtc1  $zero, $f4
/* B5FF6C 800E8DCC 94620018 */  lhu   $v0, 0x18($v1)
/* B5FF70 800E8DD0 14400006 */  bnez  $v0, .L800E8DEC
/* B5FF74 800E8DD4 A4820016 */   sh    $v0, 0x16($a0)
/* B5FF78 800E8DD8 94680014 */  lhu   $t0, 0x14($v1)
/* B5FF7C 800E8DDC 44883000 */  mtc1  $t0, $f6
/* B5FF80 800E8DE0 00000000 */  nop
/* B5FF84 800E8DE4 46803220 */  cvt.s.w $f8, $f6
/* B5FF88 800E8DE8 E4880010 */  swc1  $f8, 0x10($a0)
.L800E8DEC:
/* B5FF8C 800E8DEC 44802000 */  mtc1  $zero, $f4
.L800E8DF0:
/* B5FF90 800E8DF0 C48A000C */  lwc1  $f10, 0xc($a0)
/* B5FF94 800E8DF4 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B5FF98 800E8DF8 460A2032 */  c.eq.s $f4, $f10
/* B5FF9C 800E8DFC 00000000 */  nop
/* B5FFA0 800E8E00 45000004 */  bc1f  .L800E8E14
/* B5FFA4 800E8E04 00000000 */   nop
/* B5FFA8 800E8E08 44810000 */  mtc1  $at, $f0
/* B5FFAC 800E8E0C 10000022 */  b     .L800E8E98
/* B5FFB0 800E8E10 8FBF0014 */   lw    $ra, 0x14($sp)
.L800E8E14:
/* B5FFB4 800E8E14 0C03A30C */  jal   func_800E8C30
/* B5FFB8 800E8E18 AFA40018 */   sw    $a0, 0x18($sp)
/* B5FFBC 800E8E1C 8FA40018 */  lw    $a0, 0x18($sp)
/* B5FFC0 800E8E20 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B5FFC4 800E8E24 44819000 */  mtc1  $at, $f18
/* B5FFC8 800E8E28 3C013980 */  li    $at, 0x39800000 # 0.000000
/* B5FFCC 800E8E2C 44814000 */  mtc1  $at, $f8
/* B5FFD0 800E8E30 C486000C */  lwc1  $f6, 0xc($a0)
/* B5FFD4 800E8E34 44822000 */  mtc1  $v0, $f4
/* B5FFD8 800E8E38 3C014700 */  li    $at, 0x47000000 # 0.000000
/* B5FFDC 800E8E3C 46083402 */  mul.s $f16, $f6, $f8
/* B5FFE0 800E8E40 44813000 */  mtc1  $at, $f6
/* B5FFE4 800E8E44 3C014780 */  lui   $at, 0x4780
/* B5FFE8 800E8E48 3C098013 */  lui   $t1, %hi(D_80130514)
/* B5FFEC 800E8E4C 8D290514 */  lw    $t1, %lo(D_80130514)($t1)
/* B5FFF0 800E8E50 468022A0 */  cvt.s.w $f10, $f4
/* B5FFF4 800E8E54 252A0001 */  addiu $t2, $t1, 1
/* B5FFF8 800E8E58 46128080 */  add.s $f2, $f16, $f18
/* B5FFFC 800E8E5C 46065200 */  add.s $f8, $f10, $f6
/* B60000 800E8E60 44813000 */  mtc1  $at, $f6
/* B60004 800E8E64 3C018013 */  lui   $at, %hi(D_80130510)
/* B60008 800E8E68 46029303 */  div.s $f12, $f18, $f2
/* B6000C 800E8E6C 460C1101 */  sub.s $f4, $f2, $f12
/* B60010 800E8E70 46082282 */  mul.s $f10, $f4, $f8
/* B60014 800E8E74 46065103 */  div.s $f4, $f10, $f6
/* B60018 800E8E78 C42A0510 */  lwc1  $f10, %lo(D_80130510)($at)
/* B6001C 800E8E7C 460C2200 */  add.s $f8, $f4, $f12
/* B60020 800E8E80 46089003 */  div.s $f0, $f18, $f8
/* B60024 800E8E84 46005180 */  add.s $f6, $f10, $f0
/* B60028 800E8E88 E4260510 */  swc1  $f6, %lo(D_80130510)($at)
/* B6002C 800E8E8C 3C018013 */  lui   $at, %hi(D_80130514) # $at, 0x8013
/* B60030 800E8E90 AC2A0514 */  sw    $t2, %lo(D_80130514)($at)
.L800E8E94:
/* B60034 800E8E94 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E8E98:
/* B60038 800E8E98 27BD0018 */  addiu $sp, $sp, 0x18
/* B6003C 800E8E9C 03E00008 */  jr    $ra
/* B60040 800E8EA0 00000000 */   nop


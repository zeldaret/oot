.rdata
glabel D_809A157C
    .asciz "../z_eff_ss_dead_dd.c"
    .balign 4

glabel D_809A1594
    .asciz "../z_eff_ss_dead_dd.c"
    .balign 4

.late_rodata
glabel D_809A15AC
    .float 0.01
    .balign 4



.text
glabel func_809A12B4
/* 0002D4 809A12B4 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 0002D8 809A12B8 AFB00014 */  sw    $s0, 0x14($sp)
/* 0002DC 809A12BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0002E0 809A12C0 AFB10018 */  sw    $s1, 0x18($sp)
/* 0002E4 809A12C4 AFA40120 */  sw    $a0, 0x120($sp)
/* 0002E8 809A12C8 AFA50124 */  sw    $a1, 0x124($sp)
/* 0002EC 809A12CC 8C910000 */  lw    $s1, ($a0)
/* 0002F0 809A12D0 00C08025 */  move  $s0, $a2
/* 0002F4 809A12D4 3C06809A */  lui   $a2, %hi(D_809A157C) # $a2, 0x809a
/* 0002F8 809A12D8 24C6157C */  addiu $a2, %lo(D_809A157C) # addiu $a2, $a2, 0x157c
/* 0002FC 809A12DC 27A40040 */  addiu $a0, $sp, 0x40
/* 000300 809A12E0 240700D6 */  li    $a3, 214
/* 000304 809A12E4 0C031AB1 */  jal   Graph_OpenDisps
/* 000308 809A12E8 02202825 */   move  $a1, $s1
/* 00030C 809A12EC 860F0040 */  lh    $t7, 0x40($s0)
/* 000310 809A12F0 3C01809A */  lui   $at, %hi(D_809A15AC) # $at, 0x809a
/* 000314 809A12F4 C42815AC */  lwc1  $f8, %lo(D_809A15AC)($at)
/* 000318 809A12F8 448F2000 */  mtc1  $t7, $f4
/* 00031C 809A12FC 8E050000 */  lw    $a1, ($s0)
/* 000320 809A1300 8E060004 */  lw    $a2, 4($s0)
/* 000324 809A1304 468021A0 */  cvt.s.w $f6, $f4
/* 000328 809A1308 8E070008 */  lw    $a3, 8($s0)
/* 00032C 809A130C 27A400DC */  addiu $a0, $sp, 0xdc
/* 000330 809A1310 46083002 */  mul.s $f0, $f6, $f8
/* 000334 809A1314 0C029E89 */  jal   func_800A7A24
/* 000338 809A1318 E7A00054 */   swc1  $f0, 0x54($sp)
/* 00033C 809A131C C7A00054 */  lwc1  $f0, 0x54($sp)
/* 000340 809A1320 27A4009C */  addiu $a0, $sp, 0x9c
/* 000344 809A1324 44050000 */  mfc1  $a1, $f0
/* 000348 809A1328 44060000 */  mfc1  $a2, $f0
/* 00034C 809A132C 44070000 */  mfc1  $a3, $f0
/* 000350 809A1330 0C029DA9 */  jal   func_800A76A4
/* 000354 809A1334 00000000 */   nop   
/* 000358 809A1338 27A400DC */  addiu $a0, $sp, 0xdc
/* 00035C 809A133C 27A5009C */  addiu $a1, $sp, 0x9c
/* 000360 809A1340 0C029BE8 */  jal   func_800A6FA0
/* 000364 809A1344 27A6005C */   addiu $a2, $sp, 0x5c
/* 000368 809A1348 02202025 */  move  $a0, $s1
/* 00036C 809A134C 0C029F9C */  jal   func_800A7E70
/* 000370 809A1350 27A5005C */   addiu $a1, $sp, 0x5c
/* 000374 809A1354 1040004B */  beqz  $v0, .L809A1484
/* 000378 809A1358 02202025 */   move  $a0, $s1
/* 00037C 809A135C 0C0252F1 */  jal   func_80094BC4
/* 000380 809A1360 AFA20058 */   sw    $v0, 0x58($sp)
/* 000384 809A1364 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 000388 809A1368 8FA50058 */  lw    $a1, 0x58($sp)
/* 00038C 809A136C 3C19FA00 */  lui   $t9, 0xfa00
/* 000390 809A1370 24580008 */  addiu $t8, $v0, 8
/* 000394 809A1374 AE3802D0 */  sw    $t8, 0x2d0($s1)
/* 000398 809A1378 AC590000 */  sw    $t9, ($v0)
/* 00039C 809A137C 8608004A */  lh    $t0, 0x4a($s0)
/* 0003A0 809A1380 860E0046 */  lh    $t6, 0x46($s0)
/* 0003A4 809A1384 860B0044 */  lh    $t3, 0x44($s0)
/* 0003A8 809A1388 310900FF */  andi  $t1, $t0, 0xff
/* 0003AC 809A138C 86080048 */  lh    $t0, 0x48($s0)
/* 0003B0 809A1390 31CF00FF */  andi  $t7, $t6, 0xff
/* 0003B4 809A1394 000B6600 */  sll   $t4, $t3, 0x18
/* 0003B8 809A1398 012C6825 */  or    $t5, $t1, $t4
/* 0003BC 809A139C 000FC400 */  sll   $t8, $t7, 0x10
/* 0003C0 809A13A0 310A00FF */  andi  $t2, $t0, 0xff
/* 0003C4 809A13A4 000A5A00 */  sll   $t3, $t2, 8
/* 0003C8 809A13A8 01B8C825 */  or    $t9, $t5, $t8
/* 0003CC 809A13AC 032B4825 */  or    $t1, $t9, $t3
/* 0003D0 809A13B0 AC490004 */  sw    $t1, 4($v0)
/* 0003D4 809A13B4 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 0003D8 809A13B8 3C0EFB00 */  lui   $t6, 0xfb00
/* 0003DC 809A13BC 244C0008 */  addiu $t4, $v0, 8
/* 0003E0 809A13C0 AE2C02D0 */  sw    $t4, 0x2d0($s1)
/* 0003E4 809A13C4 AC4E0000 */  sw    $t6, ($v0)
/* 0003E8 809A13C8 860F004A */  lh    $t7, 0x4a($s0)
/* 0003EC 809A13CC 860B004E */  lh    $t3, 0x4e($s0)
/* 0003F0 809A13D0 8608004C */  lh    $t0, 0x4c($s0)
/* 0003F4 809A13D4 31ED00FF */  andi  $t5, $t7, 0xff
/* 0003F8 809A13D8 860F0050 */  lh    $t7, 0x50($s0)
/* 0003FC 809A13DC 316900FF */  andi  $t1, $t3, 0xff
/* 000400 809A13E0 00085600 */  sll   $t2, $t0, 0x18
/* 000404 809A13E4 01AAC825 */  or    $t9, $t5, $t2
/* 000408 809A13E8 00096400 */  sll   $t4, $t1, 0x10
/* 00040C 809A13EC 31F800FF */  andi  $t8, $t7, 0xff
/* 000410 809A13F0 00184200 */  sll   $t0, $t8, 8
/* 000414 809A13F4 032C7025 */  or    $t6, $t9, $t4
/* 000418 809A13F8 01C86825 */  or    $t5, $t6, $t0
/* 00041C 809A13FC AC4D0004 */  sw    $t5, 4($v0)
/* 000420 809A1400 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 000424 809A1404 3C0BDA38 */  lui   $t3, (0xDA380003 >> 16) # lui $t3, 0xda38
/* 000428 809A1408 356B0003 */  ori   $t3, (0xDA380003 & 0xFFFF) # ori $t3, $t3, 3
/* 00042C 809A140C 244A0008 */  addiu $t2, $v0, 8
/* 000430 809A1410 AE2A02D0 */  sw    $t2, 0x2d0($s1)
/* 000434 809A1414 AC450004 */  sw    $a1, 4($v0)
/* 000438 809A1418 AC4B0000 */  sw    $t3, ($v0)
/* 00043C 809A141C 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 000440 809A1420 3C0C0100 */  lui   $t4, 0x100
/* 000444 809A1424 3C19DA38 */  lui   $t9, (0xDA380001 >> 16) # lui $t9, 0xda38
/* 000448 809A1428 24490008 */  addiu $t1, $v0, 8
/* 00044C 809A142C AE2902D0 */  sw    $t1, 0x2d0($s1)
/* 000450 809A1430 37390001 */  ori   $t9, (0xDA380001 & 0xFFFF) # ori $t9, $t9, 1
/* 000454 809A1434 258C0000 */  addiu $t4, $t4, 0
/* 000458 809A1438 AC4C0004 */  sw    $t4, 4($v0)
/* 00045C 809A143C AC590000 */  sw    $t9, ($v0)
/* 000460 809A1440 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 000464 809A1444 3C0EFF2D */  lui   $t6, (0xFF2DFEFF >> 16) # lui $t6, 0xff2d
/* 000468 809A1448 3C18FCFF */  lui   $t8, (0xFCFF97FF >> 16) # lui $t8, 0xfcff
/* 00046C 809A144C 244F0008 */  addiu $t7, $v0, 8
/* 000470 809A1450 AE2F02D0 */  sw    $t7, 0x2d0($s1)
/* 000474 809A1454 371897FF */  ori   $t8, (0xFCFF97FF & 0xFFFF) # ori $t8, $t8, 0x97ff
/* 000478 809A1458 35CEFEFF */  ori   $t6, (0xFF2DFEFF & 0xFFFF) # ori $t6, $t6, 0xfeff
/* 00047C 809A145C AC4E0004 */  sw    $t6, 4($v0)
/* 000480 809A1460 AC580000 */  sw    $t8, ($v0)
/* 000484 809A1464 8E2202D0 */  lw    $v0, 0x2d0($s1)
/* 000488 809A1468 3C0A0403 */  lui   $t2, %hi(D_04037730) # $t2, 0x403
/* 00048C 809A146C 254A7730 */  addiu $t2, %lo(D_04037730) # addiu $t2, $t2, 0x7730
/* 000490 809A1470 24480008 */  addiu $t0, $v0, 8
/* 000494 809A1474 AE2802D0 */  sw    $t0, 0x2d0($s1)
/* 000498 809A1478 3C0DDE00 */  lui   $t5, 0xde00
/* 00049C 809A147C AC4D0000 */  sw    $t5, ($v0)
/* 0004A0 809A1480 AC4A0004 */  sw    $t2, 4($v0)
.L809A1484:
/* 0004A4 809A1484 3C06809A */  lui   $a2, %hi(D_809A1594) # $a2, 0x809a
/* 0004A8 809A1488 24C61594 */  addiu $a2, %lo(D_809A1594) # addiu $a2, $a2, 0x1594
/* 0004AC 809A148C 27A40040 */  addiu $a0, $sp, 0x40
/* 0004B0 809A1490 02202825 */  move  $a1, $s1
/* 0004B4 809A1494 0C031AD5 */  jal   Graph_CloseDisps
/* 0004B8 809A1498 24070103 */   li    $a3, 259
/* 0004BC 809A149C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0004C0 809A14A0 8FB00014 */  lw    $s0, 0x14($sp)
/* 0004C4 809A14A4 8FB10018 */  lw    $s1, 0x18($sp)
/* 0004C8 809A14A8 03E00008 */  jr    $ra
/* 0004CC 809A14AC 27BD0120 */   addiu $sp, $sp, 0x120

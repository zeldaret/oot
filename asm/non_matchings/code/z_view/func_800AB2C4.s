.rdata
glabel D_80141240
    .asciz "../z_view.c"
    .balign 4

glabel D_8014124C
    .asciz "vp"
    .balign 4

glabel D_80141250
    .asciz "../z_view.c"
    .balign 4

glabel D_8014125C
    .asciz "projection"
    .balign 4

glabel D_80141268
    .asciz "../z_view.c"
    .balign 4

glabel D_80141274
    .asciz "../z_view.c"
    .balign 4

.text
glabel func_800AB2C4
/* B22464 800AB2C4 27BDFF90 */  addiu $sp, $sp, -0x70
/* B22468 800AB2C8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B2246C 800AB2CC AFB20030 */  sw    $s2, 0x30($sp)
/* B22470 800AB2D0 AFB1002C */  sw    $s1, 0x2c($sp)
/* B22474 800AB2D4 AFB00028 */  sw    $s0, 0x28($sp)
/* B22478 800AB2D8 8C900004 */  lw    $s0, 4($a0)
/* B2247C 800AB2DC 00809025 */  move  $s2, $a0
/* B22480 800AB2E0 3C068014 */  lui   $a2, %hi(D_80141240) # $a2, 0x8014
/* B22484 800AB2E4 24C61240 */  addiu $a2, %lo(D_80141240) # addiu $a2, $a2, 0x1240
/* B22488 800AB2E8 27A40050 */  addiu $a0, $sp, 0x50
/* B2248C 800AB2EC 24070309 */  li    $a3, 777
/* B22490 800AB2F0 0C031AB1 */  jal   Graph_OpenDisps
/* B22494 800AB2F4 02002825 */   move  $a1, $s0
/* B22498 800AB2F8 02002025 */  move  $a0, $s0
/* B2249C 800AB2FC 0C031A73 */  jal   Graph_Alloc
/* B224A0 800AB300 24050010 */   li    $a1, 16
/* B224A4 800AB304 3C048014 */  lui   $a0, %hi(D_8014124C) # $a0, 0x8014
/* B224A8 800AB308 3C068014 */  lui   $a2, %hi(D_80141250) # $a2, 0x8014
/* B224AC 800AB30C 00408825 */  move  $s1, $v0
/* B224B0 800AB310 24C61250 */  addiu $a2, %lo(D_80141250) # addiu $a2, $a2, 0x1250
/* B224B4 800AB314 2484124C */  addiu $a0, %lo(D_8014124C) # addiu $a0, $a0, 0x124c
/* B224B8 800AB318 00402825 */  move  $a1, $v0
/* B224BC 800AB31C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B224C0 800AB320 2407030D */   li    $a3, 781
/* B224C4 800AB324 02202025 */  move  $a0, $s1
/* B224C8 800AB328 0C02A864 */  jal   func_800AA190
/* B224CC 800AB32C 26450008 */   addiu $a1, $s2, 8
/* B224D0 800AB330 8E2F0000 */  lw    $t7, ($s1)
/* B224D4 800AB334 3C19E700 */  lui   $t9, 0xe700
/* B224D8 800AB338 3C014080 */  li    $at, 0x40800000 # 0.000000
/* B224DC 800AB33C AE4F0050 */  sw    $t7, 0x50($s2)
/* B224E0 800AB340 8E2E0004 */  lw    $t6, 4($s1)
/* B224E4 800AB344 44810000 */  mtc1  $at, $f0
/* B224E8 800AB348 3C01ED00 */  lui   $at, 0xed00
/* B224EC 800AB34C AE4E0054 */  sw    $t6, 0x54($s2)
/* B224F0 800AB350 8E2F0008 */  lw    $t7, 8($s1)
/* B224F4 800AB354 02002025 */  move  $a0, $s0
/* B224F8 800AB358 24050040 */  li    $a1, 64
/* B224FC 800AB35C AE4F0058 */  sw    $t7, 0x58($s2)
/* B22500 800AB360 8E2E000C */  lw    $t6, 0xc($s1)
/* B22504 800AB364 AE4E005C */  sw    $t6, 0x5c($s2)
/* B22508 800AB368 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B2250C 800AB36C 24580008 */  addiu $t8, $v0, 8
/* B22510 800AB370 AE1802B0 */  sw    $t8, 0x2b0($s0)
/* B22514 800AB374 AC400004 */  sw    $zero, 4($v0)
/* B22518 800AB378 AC590000 */  sw    $t9, ($v0)
/* B2251C 800AB37C 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B22520 800AB380 24480008 */  addiu $t0, $v0, 8
/* B22524 800AB384 AE0802B0 */  sw    $t0, 0x2b0($s0)
/* B22528 800AB388 8E490010 */  lw    $t1, 0x10($s2)
/* B2252C 800AB38C 8E4F0008 */  lw    $t7, 8($s2)
/* B22530 800AB390 44892000 */  mtc1  $t1, $f4
/* B22534 800AB394 448F8000 */  mtc1  $t7, $f16
/* B22538 800AB398 468021A0 */  cvt.s.w $f6, $f4
/* B2253C 800AB39C 468084A0 */  cvt.s.w $f18, $f16
/* B22540 800AB3A0 46003202 */  mul.s $f8, $f6, $f0
/* B22544 800AB3A4 00000000 */  nop   
/* B22548 800AB3A8 46009102 */  mul.s $f4, $f18, $f0
/* B2254C 800AB3AC 4600428D */  trunc.w.s $f10, $f8
/* B22550 800AB3B0 4600218D */  trunc.w.s $f6, $f4
/* B22554 800AB3B4 440B5000 */  mfc1  $t3, $f10
/* B22558 800AB3B8 44193000 */  mfc1  $t9, $f6
/* B2255C 800AB3BC 316C0FFF */  andi  $t4, $t3, 0xfff
/* B22560 800AB3C0 000C6B00 */  sll   $t5, $t4, 0xc
/* B22564 800AB3C4 01A17025 */  or    $t6, $t5, $at
/* B22568 800AB3C8 33280FFF */  andi  $t0, $t9, 0xfff
/* B2256C 800AB3CC 01C84825 */  or    $t1, $t6, $t0
/* B22570 800AB3D0 AC490000 */  sw    $t1, ($v0)
/* B22574 800AB3D4 8E4A0014 */  lw    $t2, 0x14($s2)
/* B22578 800AB3D8 8E58000C */  lw    $t8, 0xc($s2)
/* B2257C 800AB3DC 3C0BDC08 */  li    $t3, 0xDC080000 # 0.000000
/* B22580 800AB3E0 448A4000 */  mtc1  $t2, $f8
/* B22584 800AB3E4 44982000 */  mtc1  $t8, $f4
/* B22588 800AB3E8 356B0008 */  ori   $t3, $t3, 8
/* B2258C 800AB3EC 468042A0 */  cvt.s.w $f10, $f8
/* B22590 800AB3F0 468021A0 */  cvt.s.w $f6, $f4
/* B22594 800AB3F4 46005402 */  mul.s $f16, $f10, $f0
/* B22598 800AB3F8 00000000 */  nop   
/* B2259C 800AB3FC 46003202 */  mul.s $f8, $f6, $f0
/* B225A0 800AB400 4600848D */  trunc.w.s $f18, $f16
/* B225A4 800AB404 4600428D */  trunc.w.s $f10, $f8
/* B225A8 800AB408 440C9000 */  mfc1  $t4, $f18
/* B225AC 800AB40C 440E5000 */  mfc1  $t6, $f10
/* B225B0 800AB410 318D0FFF */  andi  $t5, $t4, 0xfff
/* B225B4 800AB414 000D7B00 */  sll   $t7, $t5, 0xc
/* B225B8 800AB418 31C80FFF */  andi  $t0, $t6, 0xfff
/* B225BC 800AB41C 01E84825 */  or    $t1, $t7, $t0
/* B225C0 800AB420 AC490004 */  sw    $t1, 4($v0)
/* B225C4 800AB424 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B225C8 800AB428 244A0008 */  addiu $t2, $v0, 8
/* B225CC 800AB42C AE0A02B0 */  sw    $t2, 0x2b0($s0)
/* B225D0 800AB430 AC510004 */  sw    $s1, 4($v0)
/* B225D4 800AB434 0C031A73 */  jal   Graph_Alloc
/* B225D8 800AB438 AC4B0000 */   sw    $t3, ($v0)
/* B225DC 800AB43C 3C048014 */  lui   $a0, %hi(D_8014125C) # $a0, 0x8014
/* B225E0 800AB440 3C068014 */  lui   $a2, %hi(D_80141268) # $a2, 0x8014
/* B225E4 800AB444 00408825 */  move  $s1, $v0
/* B225E8 800AB448 24C61268 */  addiu $a2, %lo(D_80141268) # addiu $a2, $a2, 0x1268
/* B225EC 800AB44C 2484125C */  addiu $a0, %lo(D_8014125C) # addiu $a0, $a0, 0x125c
/* B225F0 800AB450 00402825 */  move  $a1, $v0
/* B225F4 800AB454 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B225F8 800AB458 24070317 */   li    $a3, 791
/* B225FC 800AB45C AE5100E0 */  sw    $s1, 0xe0($s2)
/* B22600 800AB460 3C0C8013 */  lui   $t4, %hi(gScreenWidth)
/* B22604 800AB464 8D8CD270 */  lw    $t4, %lo(gScreenWidth)($t4)
/* B22608 800AB468 3C0D8013 */  lui   $t5, %hi(gScreenHeight)
/* B2260C 800AB46C 8DADD274 */  lw    $t5, %lo(gScreenHeight)($t5)
/* B22610 800AB470 448C8000 */  mtc1  $t4, $f16
/* B22614 800AB474 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B22618 800AB478 448D4000 */  mtc1  $t5, $f8
/* B2261C 800AB47C 46808020 */  cvt.s.w $f0, $f16
/* B22620 800AB480 44816000 */  mtc1  $at, $f12
/* B22624 800AB484 02202025 */  move  $a0, $s1
/* B22628 800AB488 468040A0 */  cvt.s.w $f2, $f8
/* B2262C 800AB48C 46000487 */  neg.s $f18, $f0
/* B22630 800AB490 46001287 */  neg.s $f10, $f2
/* B22634 800AB494 460C9102 */  mul.s $f4, $f18, $f12
/* B22638 800AB498 00000000 */  nop   
/* B2263C 800AB49C 460C0182 */  mul.s $f6, $f0, $f12
/* B22640 800AB4A0 00000000 */  nop   
/* B22644 800AB4A4 460C5402 */  mul.s $f16, $f10, $f12
/* B22648 800AB4A8 44052000 */  mfc1  $a1, $f4
/* B2264C 800AB4AC 460C1482 */  mul.s $f18, $f2, $f12
/* B22650 800AB4B0 44063000 */  mfc1  $a2, $f6
/* B22654 800AB4B4 44078000 */  mfc1  $a3, $f16
/* B22658 800AB4B8 E7B20010 */  swc1  $f18, 0x10($sp)
/* B2265C 800AB4BC C644001C */  lwc1  $f4, 0x1c($s2)
/* B22660 800AB4C0 E7A40014 */  swc1  $f4, 0x14($sp)
/* B22664 800AB4C4 C6460020 */  lwc1  $f6, 0x20($s2)
/* B22668 800AB4C8 E7A60018 */  swc1  $f6, 0x18($sp)
/* B2266C 800AB4CC C6480024 */  lwc1  $f8, 0x24($s2)
/* B22670 800AB4D0 0C041169 */  jal   func_801045A4
/* B22674 800AB4D4 E7A8001C */   swc1  $f8, 0x1c($sp)
/* B22678 800AB4D8 02207025 */  move  $t6, $s1
/* B2267C 800AB4DC 02407825 */  move  $t7, $s2
/* B22680 800AB4E0 2628003C */  addiu $t0, $s1, 0x3c
.L800AB4E4:
/* B22684 800AB4E4 8DD90000 */  lw    $t9, ($t6)
/* B22688 800AB4E8 25CE000C */  addiu $t6, $t6, 0xc
/* B2268C 800AB4EC 25EF000C */  addiu $t7, $t7, 0xc
/* B22690 800AB4F0 ADF90054 */  sw    $t9, 0x54($t7)
/* B22694 800AB4F4 8DD8FFF8 */  lw    $t8, -8($t6)
/* B22698 800AB4F8 ADF80058 */  sw    $t8, 0x58($t7)
/* B2269C 800AB4FC 8DD9FFFC */  lw    $t9, -4($t6)
/* B226A0 800AB500 15C8FFF8 */  bne   $t6, $t0, .L800AB4E4
/* B226A4 800AB504 ADF9005C */   sw    $t9, 0x5c($t7)
/* B226A8 800AB508 8DD90000 */  lw    $t9, ($t6)
/* B226AC 800AB50C 3C0ADA38 */  lui   $t2, (0xDA380007 >> 16) # lui $t2, 0xda38
/* B226B0 800AB510 354A0007 */  ori   $t2, (0xDA380007 & 0xFFFF) # ori $t2, $t2, 7
/* B226B4 800AB514 ADF90060 */  sw    $t9, 0x60($t7)
/* B226B8 800AB518 8E0202B0 */  lw    $v0, 0x2b0($s0)
/* B226BC 800AB51C 3C068014 */  lui   $a2, %hi(D_80141274) # $a2, 0x8014
/* B226C0 800AB520 24C61274 */  addiu $a2, %lo(D_80141274) # addiu $a2, $a2, 0x1274
/* B226C4 800AB524 24490008 */  addiu $t1, $v0, 8
/* B226C8 800AB528 AE0902B0 */  sw    $t1, 0x2b0($s0)
/* B226CC 800AB52C 27A40050 */  addiu $a0, $sp, 0x50
/* B226D0 800AB530 02002825 */  move  $a1, $s0
/* B226D4 800AB534 24070321 */  li    $a3, 801
/* B226D8 800AB538 AC510004 */  sw    $s1, 4($v0)
/* B226DC 800AB53C 0C031AD5 */  jal   Graph_CloseDisps
/* B226E0 800AB540 AC4A0000 */   sw    $t2, ($v0)
/* B226E4 800AB544 8FBF0034 */  lw    $ra, 0x34($sp)
/* B226E8 800AB548 8FB00028 */  lw    $s0, 0x28($sp)
/* B226EC 800AB54C 8FB1002C */  lw    $s1, 0x2c($sp)
/* B226F0 800AB550 8FB20030 */  lw    $s2, 0x30($sp)
/* B226F4 800AB554 27BD0070 */  addiu $sp, $sp, 0x70
/* B226F8 800AB558 03E00008 */  jr    $ra
/* B226FC 800AB55C 24020001 */   li    $v0, 1


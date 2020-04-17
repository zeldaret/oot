.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel sinf
/* B77430 80100290 E7AC0000 */  swc1  $f12, ($sp)
/* B77434 80100294 8FA20000 */  lw    $v0, ($sp)
/* B77438 80100298 C7A40000 */  lwc1  $f4, ($sp)
/* B7743C 8010029C 00021D83 */  sra   $v1, $v0, 0x16
/* B77440 801002A0 306E01FF */  andi  $t6, $v1, 0x1ff
/* B77444 801002A4 29C100FF */  slti  $at, $t6, 0xff
/* B77448 801002A8 10200019 */  beqz  $at, .L80100310
/* B7744C 801002AC 01C01825 */   move  $v1, $t6
/* B77450 801002B0 29C100E6 */  slti  $at, $t6, 0xe6
/* B77454 801002B4 14200014 */  bnez  $at, .L80100308
/* B77458 801002B8 460020A1 */   cvt.d.s $f2, $f4
/* B7745C 801002BC 46221302 */  mul.d $f12, $f2, $f2
/* B77460 801002C0 3C038015 */  lui   $v1, %hi(D_8014B210) # $v1, 0x8015
/* B77464 801002C4 2463B210 */  addiu $v1, %lo(D_8014B210) # addiu $v1, $v1, -0x4df0
/* B77468 801002C8 D4660020 */  ldc1  $f6, 0x20($v1)
/* B7746C 801002CC D46A0018 */  ldc1  $f10, 0x18($v1)
/* B77470 801002D0 D4640010 */  ldc1  $f4, 0x10($v1)
/* B77474 801002D4 462C3202 */  mul.d $f8, $f6, $f12
/* B77478 801002D8 462A4400 */  add.d $f16, $f8, $f10
/* B7747C 801002DC D46A0008 */  ldc1  $f10, 8($v1)
/* B77480 801002E0 462C8482 */  mul.d $f18, $f16, $f12
/* B77484 801002E4 46249180 */  add.d $f6, $f18, $f4
/* B77488 801002E8 462C3202 */  mul.d $f8, $f6, $f12
/* B7748C 801002EC 46285380 */  add.d $f14, $f10, $f8
/* B77490 801002F0 462C1402 */  mul.d $f16, $f2, $f12
/* B77494 801002F4 00000000 */  nop   
/* B77498 801002F8 462E8482 */  mul.d $f18, $f16, $f14
/* B7749C 801002FC 46229100 */  add.d $f4, $f18, $f2
/* B774A0 80100300 03E00008 */  jr    $ra
/* B774A4 80100304 46202020 */   cvt.s.d $f0, $f4

.L80100308:
/* B774A8 80100308 03E00008 */  jr    $ra
/* B774AC 8010030C C7A00000 */   lwc1  $f0, ($sp)

.L80100310:
/* B774B0 80100310 28610136 */  slti  $at, $v1, 0x136
/* B774B4 80100314 10200044 */  beqz  $at, .L80100428
/* B774B8 80100318 C7A40000 */   lwc1  $f4, ($sp)
/* B774BC 8010031C C7A60000 */  lwc1  $f6, ($sp)
/* B774C0 80100320 3C018015 */  lui   $at, %hi(D_8014B238)
/* B774C4 80100324 D42AB238 */  ldc1  $f10, %lo(D_8014B238)($at)
/* B774C8 80100328 460030A1 */  cvt.d.s $f2, $f6
/* B774CC 8010032C 44804800 */  mtc1  $zero, $f9
/* B774D0 80100330 462A1002 */  mul.d $f0, $f2, $f10
/* B774D4 80100334 44804000 */  mtc1  $zero, $f8
/* B774D8 80100338 3C013FE0 */  li    $at, 0x3FE00000 # 0.000000
/* B774DC 8010033C 4620403E */  c.le.d $f8, $f0
/* B774E0 80100340 00000000 */  nop   
/* B774E4 80100344 4502000B */  bc1fl .L80100374
/* B774E8 80100348 44813800 */   mtc1  $at, $f7
/* B774EC 8010034C 3C013FE0 */  li    $at, 0x3FE00000 # 0.000000
/* B774F0 80100350 44818800 */  mtc1  $at, $f17
/* B774F4 80100354 44808000 */  mtc1  $zero, $f16
/* B774F8 80100358 00000000 */  nop   
/* B774FC 8010035C 46300480 */  add.d $f18, $f0, $f16
/* B77500 80100360 4620910D */  trunc.w.d $f4, $f18
/* B77504 80100364 44022000 */  mfc1  $v0, $f4
/* B77508 80100368 10000009 */  b     .L80100390
/* B7750C 8010036C 44828000 */   mtc1  $v0, $f16
/* B77510 80100370 44813800 */  mtc1  $at, $f7
.L80100374:
/* B77514 80100374 44803000 */  mtc1  $zero, $f6
/* B77518 80100378 00000000 */  nop   
/* B7751C 8010037C 46260281 */  sub.d $f10, $f0, $f6
/* B77520 80100380 4620520D */  trunc.w.d $f8, $f10
/* B77524 80100384 44024000 */  mfc1  $v0, $f8
/* B77528 80100388 00000000 */  nop   
/* B7752C 8010038C 44828000 */  mtc1  $v0, $f16
.L80100390:
/* B77530 80100390 3C018015 */  lui   $at, %hi(D_8014B240)
/* B77534 80100394 D432B240 */  ldc1  $f18, %lo(D_8014B240)($at)
/* B77538 80100398 46808021 */  cvt.d.w $f0, $f16
/* B7753C 8010039C 3C018015 */  lui   $at, %hi(D_8014B248)
/* B77540 801003A0 D426B248 */  ldc1  $f6, %lo(D_8014B248)($at)
/* B77544 801003A4 3C038015 */  lui   $v1, %hi(D_8014B210) # $v1, 0x8015
/* B77548 801003A8 2463B210 */  addiu $v1, %lo(D_8014B210) # addiu $v1, $v1, -0x4df0
/* B7754C 801003AC 46320102 */  mul.d $f4, $f0, $f18
/* B77550 801003B0 D4680020 */  ldc1  $f8, 0x20($v1)
/* B77554 801003B4 D4720018 */  ldc1  $f18, 0x18($v1)
/* B77558 801003B8 30590001 */  andi  $t9, $v0, 1
/* B7755C 801003BC 46260282 */  mul.d $f10, $f0, $f6
/* B77560 801003C0 46241081 */  sub.d $f2, $f2, $f4
/* B77564 801003C4 462A1081 */  sub.d $f2, $f2, $f10
/* B77568 801003C8 D46A0010 */  ldc1  $f10, 0x10($v1)
/* B7756C 801003CC 46221302 */  mul.d $f12, $f2, $f2
/* B77570 801003D0 00000000 */  nop   
/* B77574 801003D4 462C4402 */  mul.d $f16, $f8, $f12
/* B77578 801003D8 46328100 */  add.d $f4, $f16, $f18
/* B7757C 801003DC D4720008 */  ldc1  $f18, 8($v1)
/* B77580 801003E0 462C2182 */  mul.d $f6, $f4, $f12
/* B77584 801003E4 462A3200 */  add.d $f8, $f6, $f10
/* B77588 801003E8 462C4402 */  mul.d $f16, $f8, $f12
/* B7758C 801003EC 17200007 */  bnez  $t9, .L8010040C
/* B77590 801003F0 46309380 */   add.d $f14, $f18, $f16
/* B77594 801003F4 462C1102 */  mul.d $f4, $f2, $f12
/* B77598 801003F8 00000000 */  nop   
/* B7759C 801003FC 462E2182 */  mul.d $f6, $f4, $f14
/* B775A0 80100400 46223280 */  add.d $f10, $f6, $f2
/* B775A4 80100404 03E00008 */  jr    $ra
/* B775A8 80100408 46205020 */   cvt.s.d $f0, $f10

.L8010040C:
/* B775AC 8010040C 462C1202 */  mul.d $f8, $f2, $f12
/* B775B0 80100410 00000000 */  nop   
/* B775B4 80100414 462E4482 */  mul.d $f18, $f8, $f14
/* B775B8 80100418 46229400 */  add.d $f16, $f18, $f2
/* B775BC 8010041C 46208020 */  cvt.s.d $f0, $f16
/* B775C0 80100420 03E00008 */  jr    $ra
/* B775C4 80100424 46000007 */   neg.s $f0, $f0

.L80100428:
/* B775C8 80100428 46042032 */  c.eq.s $f4, $f4
/* B775CC 8010042C 3C018015 */  lui   $at, %hi(D_8014B250)
/* B775D0 80100430 45010004 */  bc1t  .L80100444
/* B775D4 80100434 00000000 */   nop   
/* B775D8 80100438 3C018015 */  lui   $at, %hi(__libm_qnan_f)
/* B775DC 8010043C 03E00008 */  jr    $ra
/* B775E0 80100440 C420B2D0 */   lwc1  $f0, %lo(__libm_qnan_f)($at)

.L80100444:
/* B775E4 80100444 C420B250 */  lwc1  $f0, %lo(D_8014B250)($at)
/* B775E8 80100448 03E00008 */  jr    $ra
/* B775EC 8010044C 00000000 */   nop   

glabel sins
/* B775F0 80100450 308EFFFF */  andi  $t6, $a0, 0xffff
/* B775F4 80100454 000E7902 */  srl   $t7, $t6, 4
/* B775F8 80100458 31F8FFFF */  andi  $t8, $t7, 0xffff
/* B775FC 8010045C 33190400 */  andi  $t9, $t8, 0x400
/* B77600 80100460 AFA40000 */  sw    $a0, ($sp)
/* B77604 80100464 13200008 */  beqz  $t9, .L80100488
/* B77608 80100468 03001025 */   move  $v0, $t8
/* B7760C 8010046C 330803FF */  andi  $t0, $t8, 0x3ff
/* B77610 80100470 00084840 */  sll   $t1, $t0, 1
/* B77614 80100474 00095023 */  negu  $t2, $t1
/* B77618 80100478 3C038013 */  lui   $v1, %hi(D_80134CCE)
/* B7761C 8010047C 006A1821 */  addu  $v1, $v1, $t2
/* B77620 80100480 10000006 */  b     .L8010049C
/* B77624 80100484 84634CCE */   lh    $v1, %lo(D_80134CCE)($v1)
.L80100488:
/* B77628 80100488 304B03FF */  andi  $t3, $v0, 0x3ff
/* B7762C 8010048C 000B6040 */  sll   $t4, $t3, 1
/* B77630 80100490 3C038013 */  lui   $v1, %hi(D_801344D0)
/* B77634 80100494 006C1821 */  addu  $v1, $v1, $t4
/* B77638 80100498 846344D0 */  lh    $v1, %lo(D_801344D0)($v1)
.L8010049C:
/* B7763C 8010049C 304D0800 */  andi  $t5, $v0, 0x800
/* B77640 801004A0 11A00005 */  beqz  $t5, .L801004B8
/* B77644 801004A4 00601025 */   move  $v0, $v1
/* B77648 801004A8 00031023 */  negu  $v0, $v1
/* B7764C 801004AC 00027400 */  sll   $t6, $v0, 0x10
/* B77650 801004B0 03E00008 */  jr    $ra
/* B77654 801004B4 000E1403 */   sra   $v0, $t6, 0x10

.L801004B8:
/* B77658 801004B8 03E00008 */  jr    $ra
/* B7765C 801004BC 00000000 */   nop   

glabel func_801004C0
/* B77660 801004C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B77664 801004C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B77668 801004C8 3C058017 */  lui   $a1, %hi(D_80175670) # $a1, 0x8017
/* B7766C 801004CC 24A55670 */  addiu $a1, %lo(D_80175670) # addiu $a1, $a1, 0x5670
/* B77670 801004D0 0C001BC4 */  jal   bcopy
/* B77674 801004D4 24060040 */   li    $a2, 64
/* B77678 801004D8 3C048017 */  lui   $a0, %hi(D_80175680) # $a0, 0x8017
/* B7767C 801004DC 8C845680 */  lw    $a0, %lo(D_80175680)($a0)
/* B77680 801004E0 10800005 */  beqz  $a0, .L801004F8
/* B77684 801004E4 00000000 */   nop   
/* B77688 801004E8 0C001378 */  jal   osVirtualToPhysical
/* B7768C 801004EC 00000000 */   nop   
/* B77690 801004F0 3C018017 */  lui   $at, %hi(D_80175680) # $at, 0x8017
/* B77694 801004F4 AC225680 */  sw    $v0, %lo(D_80175680)($at)
.L801004F8:
/* B77698 801004F8 3C048017 */  lui   $a0, %hi(D_80175688) # $a0, 0x8017
/* B7769C 801004FC 8C845688 */  lw    $a0, %lo(D_80175688)($a0)
/* B776A0 80100500 10800005 */  beqz  $a0, .L80100518
/* B776A4 80100504 00000000 */   nop   
/* B776A8 80100508 0C001378 */  jal   osVirtualToPhysical
/* B776AC 8010050C 00000000 */   nop   
/* B776B0 80100510 3C018017 */  lui   $at, %hi(D_80175688) # $at, 0x8017
/* B776B4 80100514 AC225688 */  sw    $v0, %lo(D_80175688)($at)
.L80100518:
/* B776B8 80100518 3C048017 */  lui   $a0, %hi(D_80175690) # $a0, 0x8017
/* B776BC 8010051C 8C845690 */  lw    $a0, %lo(D_80175690)($a0)
/* B776C0 80100520 10800005 */  beqz  $a0, .L80100538
/* B776C4 80100524 00000000 */   nop   
/* B776C8 80100528 0C001378 */  jal   osVirtualToPhysical
/* B776CC 8010052C 00000000 */   nop   
/* B776D0 80100530 3C018017 */  lui   $at, %hi(D_80175690) # $at, 0x8017
/* B776D4 80100534 AC225690 */  sw    $v0, %lo(D_80175690)($at)
.L80100538:
/* B776D8 80100538 3C048017 */  lui   $a0, %hi(D_80175698) # $a0, 0x8017
/* B776DC 8010053C 8C845698 */  lw    $a0, %lo(D_80175698)($a0)
/* B776E0 80100540 10800005 */  beqz  $a0, .L80100558
/* B776E4 80100544 00000000 */   nop   
/* B776E8 80100548 0C001378 */  jal   osVirtualToPhysical
/* B776EC 8010054C 00000000 */   nop   
/* B776F0 80100550 3C018017 */  lui   $at, %hi(D_80175698) # $at, 0x8017
/* B776F4 80100554 AC225698 */  sw    $v0, %lo(D_80175698)($at)
.L80100558:
/* B776F8 80100558 3C048017 */  lui   $a0, %hi(D_8017569C) # $a0, 0x8017
/* B776FC 8010055C 8C84569C */  lw    $a0, %lo(D_8017569C)($a0)
/* B77700 80100560 10800005 */  beqz  $a0, .L80100578
/* B77704 80100564 00000000 */   nop   
/* B77708 80100568 0C001378 */  jal   osVirtualToPhysical
/* B7770C 8010056C 00000000 */   nop   
/* B77710 80100570 3C018017 */  lui   $at, %hi(D_8017569C) # $at, 0x8017
/* B77714 80100574 AC22569C */  sw    $v0, %lo(D_8017569C)($at)
.L80100578:
/* B77718 80100578 3C048017 */  lui   $a0, %hi(D_801756A0) # $a0, 0x8017
/* B7771C 8010057C 8C8456A0 */  lw    $a0, %lo(D_801756A0)($a0)
/* B77720 80100580 10800005 */  beqz  $a0, .L80100598
/* B77724 80100584 00000000 */   nop   
/* B77728 80100588 0C001378 */  jal   osVirtualToPhysical
/* B7772C 8010058C 00000000 */   nop   
/* B77730 80100590 3C018017 */  lui   $at, %hi(D_801756A0) # $at, 0x8017
/* B77734 80100594 AC2256A0 */  sw    $v0, %lo(D_801756A0)($at)
.L80100598:
/* B77738 80100598 3C048017 */  lui   $a0, %hi(D_801756A8) # $a0, 0x8017
/* B7773C 8010059C 8C8456A8 */  lw    $a0, %lo(D_801756A8)($a0)
/* B77740 801005A0 50800006 */  beql  $a0, $zero, .L801005BC
/* B77744 801005A4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B77748 801005A8 0C001378 */  jal   osVirtualToPhysical
/* B7774C 801005AC 00000000 */   nop   
/* B77750 801005B0 3C018017 */  lui   $at, %hi(D_801756A8) # $at, 0x8017
/* B77754 801005B4 AC2256A8 */  sw    $v0, %lo(D_801756A8)($at)
/* B77758 801005B8 8FBF0014 */  lw    $ra, 0x14($sp)
.L801005BC:
/* B7775C 801005BC 3C028017 */  lui   $v0, %hi(D_80175670) # $v0, 0x8017
/* B77760 801005C0 24425670 */  addiu $v0, %lo(D_80175670) # addiu $v0, $v0, 0x5670
/* B77764 801005C4 03E00008 */  jr    $ra
/* B77768 801005C8 27BD0018 */   addiu $sp, $sp, 0x18

glabel osSpTaskLoad
/* B7776C 801005CC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B77770 801005D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B77774 801005D4 AFB00014 */  sw    $s0, 0x14($sp)
/* B77778 801005D8 00808025 */  move  $s0, $a0
/* B7777C 801005DC AFB30020 */  sw    $s3, 0x20($sp)
/* B77780 801005E0 AFB2001C */  sw    $s2, 0x1c($sp)
/* B77784 801005E4 0C040130 */  jal   func_801004C0
/* B77788 801005E8 AFB10018 */   sw    $s1, 0x18($sp)
/* B7778C 801005EC 8C4E0004 */  lw    $t6, 4($v0)
/* B77790 801005F0 00409025 */  move  $s2, $v0
/* B77794 801005F4 02402025 */  move  $a0, $s2
/* B77798 801005F8 31CF0001 */  andi  $t7, $t6, 1
/* B7779C 801005FC 11E00013 */  beqz  $t7, .L8010064C
/* B777A0 80100600 00000000 */   nop   
/* B777A4 80100604 8C580038 */  lw    $t8, 0x38($v0)
/* B777A8 80100608 8C59003C */  lw    $t9, 0x3c($v0)
/* B777AC 8010060C 2401FFFE */  li    $at, -2
/* B777B0 80100610 AC580018 */  sw    $t8, 0x18($v0)
/* B777B4 80100614 AC59001C */  sw    $t9, 0x1c($v0)
/* B777B8 80100618 8E080004 */  lw    $t0, 4($s0)
/* B777BC 8010061C 01014824 */  and   $t1, $t0, $at
/* B777C0 80100620 AE090004 */  sw    $t1, 4($s0)
/* B777C4 80100624 8C4A0004 */  lw    $t2, 4($v0)
/* B777C8 80100628 314B0004 */  andi  $t3, $t2, 4
/* B777CC 8010062C 11600007 */  beqz  $t3, .L8010064C
/* B777D0 80100630 00000000 */   nop   
/* B777D4 80100634 8E0C0038 */  lw    $t4, 0x38($s0)
/* B777D8 80100638 3C01A000 */  lui   $at, 0xa000
/* B777DC 8010063C 258D0BFC */  addiu $t5, $t4, 0xbfc
/* B777E0 80100640 01A17025 */  or    $t6, $t5, $at
/* B777E4 80100644 8DCF0000 */  lw    $t7, ($t6)
/* B777E8 80100648 AC4F0010 */  sw    $t7, 0x10($v0)
.L8010064C:
/* B777EC 8010064C 0C0011B0 */  jal   osWritebackDCache
/* B777F0 80100650 24050040 */   li    $a1, 64
/* B777F4 80100654 0C041920 */  jal   __osSpSetStatus
/* B777F8 80100658 24042B00 */   li    $a0, 11008
/* B777FC 8010065C 3C130400 */  lui   $s3, (0x04001000 >> 16) # lui $s3, 0x400
/* B77800 80100660 36731000 */  ori   $s3, (0x04001000 & 0xFFFF) # ori $s3, $s3, 0x1000
/* B77804 80100664 0C0419E8 */  jal   __osSpSetPc
/* B77808 80100668 02602025 */   move  $a0, $s3
/* B7780C 8010066C 2411FFFF */  li    $s1, -1
/* B77810 80100670 54510006 */  bnel  $v0, $s1, .L8010068C
/* B77814 80100674 3C100400 */   lui   $s0, 0x400
.L80100678:
/* B77818 80100678 0C0419E8 */  jal   __osSpSetPc
/* B7781C 8010067C 02602025 */   move  $a0, $s3
/* B77820 80100680 1051FFFD */  beq   $v0, $s1, .L80100678
/* B77824 80100684 00000000 */   nop   
/* B77828 80100688 3C100400 */  lui   $s0, (0x04000FC0 >> 16) # lui $s0, 0x400
.L8010068C:
/* B7782C 8010068C 36100FC0 */  ori   $s0, (0x04000FC0 & 0xFFFF) # ori $s0, $s0, 0xfc0
/* B77830 80100690 02002825 */  move  $a1, $s0
/* B77834 80100694 24040001 */  li    $a0, 1
/* B77838 80100698 02403025 */  move  $a2, $s2
/* B7783C 8010069C 0C0404D8 */  jal   __osSpRawStartDma
/* B77840 801006A0 24070040 */   li    $a3, 64
/* B77844 801006A4 14510007 */  bne   $v0, $s1, .L801006C4
/* B77848 801006A8 24040001 */   li    $a0, 1
.L801006AC:
/* B7784C 801006AC 02002825 */  move  $a1, $s0
/* B77850 801006B0 02403025 */  move  $a2, $s2
/* B77854 801006B4 0C0404D8 */  jal   __osSpRawStartDma
/* B77858 801006B8 24070040 */   li    $a3, 64
/* B7785C 801006BC 5051FFFB */  beql  $v0, $s1, .L801006AC
/* B77860 801006C0 24040001 */   li    $a0, 1
.L801006C4:
/* B77864 801006C4 0C040ECC */  jal   __osSpDeviceBusy
/* B77868 801006C8 00000000 */   nop   
/* B7786C 801006CC 50400006 */  beql  $v0, $zero, .L801006E8
/* B77870 801006D0 24040001 */   li    $a0, 1
.L801006D4:
/* B77874 801006D4 0C040ECC */  jal   __osSpDeviceBusy
/* B77878 801006D8 00000000 */   nop   
/* B7787C 801006DC 1440FFFD */  bnez  $v0, .L801006D4
/* B77880 801006E0 00000000 */   nop   
/* B77884 801006E4 24040001 */  li    $a0, 1
.L801006E8:
/* B77888 801006E8 02602825 */  move  $a1, $s3
/* B7788C 801006EC 8E460008 */  lw    $a2, 8($s2)
/* B77890 801006F0 0C0404D8 */  jal   __osSpRawStartDma
/* B77894 801006F4 8E47000C */   lw    $a3, 0xc($s2)
/* B77898 801006F8 14510007 */  bne   $v0, $s1, .L80100718
/* B7789C 801006FC 24040001 */   li    $a0, 1
.L80100700:
/* B778A0 80100700 02602825 */  move  $a1, $s3
/* B778A4 80100704 8E460008 */  lw    $a2, 8($s2)
/* B778A8 80100708 0C0404D8 */  jal   __osSpRawStartDma
/* B778AC 8010070C 8E47000C */   lw    $a3, 0xc($s2)
/* B778B0 80100710 5051FFFB */  beql  $v0, $s1, .L80100700
/* B778B4 80100714 24040001 */   li    $a0, 1
.L80100718:
/* B778B8 80100718 8FBF0024 */  lw    $ra, 0x24($sp)
/* B778BC 8010071C 8FB00014 */  lw    $s0, 0x14($sp)
/* B778C0 80100720 8FB10018 */  lw    $s1, 0x18($sp)
/* B778C4 80100724 8FB2001C */  lw    $s2, 0x1c($sp)
/* B778C8 80100728 8FB30020 */  lw    $s3, 0x20($sp)
/* B778CC 8010072C 03E00008 */  jr    $ra
/* B778D0 80100730 27BD0028 */   addiu $sp, $sp, 0x28

glabel osSpTaskStartGo
/* B778D4 80100734 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B778D8 80100738 AFBF0014 */  sw    $ra, 0x14($sp)
/* B778DC 8010073C 0C040ECC */  jal   __osSpDeviceBusy
/* B778E0 80100740 AFA40018 */   sw    $a0, 0x18($sp)
/* B778E4 80100744 10400005 */  beqz  $v0, .L8010075C
/* B778E8 80100748 00000000 */   nop   
.L8010074C:
/* B778EC 8010074C 0C040ECC */  jal   __osSpDeviceBusy
/* B778F0 80100750 00000000 */   nop   
/* B778F4 80100754 1440FFFD */  bnez  $v0, .L8010074C
/* B778F8 80100758 00000000 */   nop   
.L8010075C:
/* B778FC 8010075C 0C041920 */  jal   __osSpSetStatus
/* B77900 80100760 24040125 */   li    $a0, 293
/* B77904 80100764 8FBF0014 */  lw    $ra, 0x14($sp)
/* B77908 80100768 27BD0018 */  addiu $sp, $sp, 0x18
/* B7790C 8010076C 03E00008 */  jr    $ra
/* B77910 80100770 00000000 */   nop   

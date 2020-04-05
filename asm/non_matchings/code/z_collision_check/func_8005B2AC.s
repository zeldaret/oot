.rdata
glabel D_8013A5B0
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A5C8
    .asciz "vtx_tbl != NULL"
    .balign 4

glabel D_8013A5D8
    .asciz "../z_collision_check.c"
    .balign 4

glabel D_8013A5F0
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005B2AC
/* AD244C 8005B2AC 27BDFF70 */  addiu $sp, $sp, -0x90
/* AD2450 8005B2B0 AFB00028 */  sw    $s0, 0x28($sp)
/* AD2454 8005B2B4 AFA60098 */  sw    $a2, 0x98($sp)
/* AD2458 8005B2B8 00808025 */  move  $s0, $a0
/* AD245C 8005B2BC AFBF002C */  sw    $ra, 0x2c($sp)
/* AD2460 8005B2C0 AFA50094 */  sw    $a1, 0x94($sp)
/* AD2464 8005B2C4 AFA7009C */  sw    $a3, 0x9c($sp)
/* AD2468 8005B2C8 3C068014 */  lui   $a2, %hi(D_8013A5B0) # $a2, 0x8014
/* AD246C 8005B2CC 24C6A5B0 */  addiu $a2, %lo(D_8013A5B0) # addiu $a2, $a2, -0x5a50
/* AD2470 8005B2D0 240702C9 */  li    $a3, 713
/* AD2474 8005B2D4 02002825 */  move  $a1, $s0
/* AD2478 8005B2D8 0C031AB1 */  jal   Graph_OpenDisps
/* AD247C 8005B2DC 27A40064 */   addiu $a0, $sp, 0x64
/* AD2480 8005B2E0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2484 8005B2E4 3C0FDA38 */  lui   $t7, (0xDA380003 >> 16) # lui $t7, 0xda38
/* AD2488 8005B2E8 3C188013 */  lui   $t8, %hi(gMtxClear) # $t8, 0x8013
/* AD248C 8005B2EC 244E0008 */  addiu $t6, $v0, 8
/* AD2490 8005B2F0 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AD2494 8005B2F4 2718DB20 */  addiu $t8, %lo(gMtxClear) # addiu $t8, $t8, -0x24e0
/* AD2498 8005B2F8 35EF0003 */  ori   $t7, (0xDA380003 & 0xFFFF) # ori $t7, $t7, 3
/* AD249C 8005B2FC AC4F0000 */  sw    $t7, ($v0)
/* AD24A0 8005B300 AC580004 */  sw    $t8, 4($v0)
/* AD24A4 8005B304 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD24A8 8005B308 3C09FA00 */  lui   $t1, (0xFA0000FF >> 16) # lui $t1, 0xfa00
/* AD24AC 8005B30C 352900FF */  ori   $t1, (0xFA0000FF & 0xFFFF) # ori $t1, $t1, 0xff
/* AD24B0 8005B310 24590008 */  addiu $t9, $v0, 8
/* AD24B4 8005B314 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AD24B8 8005B318 AC490000 */  sw    $t1, ($v0)
/* AD24BC 8005B31C 93AE00A7 */  lbu   $t6, 0xa7($sp)
/* AD24C0 8005B320 93AB00A3 */  lbu   $t3, 0xa3($sp)
/* AD24C4 8005B324 93A900AB */  lbu   $t1, 0xab($sp)
/* AD24C8 8005B328 000E7C00 */  sll   $t7, $t6, 0x10
/* AD24CC 8005B32C 000B6600 */  sll   $t4, $t3, 0x18
/* AD24D0 8005B330 018FC025 */  or    $t8, $t4, $t7
/* AD24D4 8005B334 00095200 */  sll   $t2, $t1, 8
/* AD24D8 8005B338 030A5825 */  or    $t3, $t8, $t2
/* AD24DC 8005B33C 356D0032 */  ori   $t5, $t3, 0x32
/* AD24E0 8005B340 AC4D0004 */  sw    $t5, 4($v0)
/* AD24E4 8005B344 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD24E8 8005B348 3C04E700 */  lui   $a0, 0xe700
/* AD24EC 8005B34C 3C0FE200 */  lui   $t7, (0xE200001C >> 16) # lui $t7, 0xe200
/* AD24F0 8005B350 244E0008 */  addiu $t6, $v0, 8
/* AD24F4 8005B354 AE0E02C0 */  sw    $t6, 0x2c0($s0)
/* AD24F8 8005B358 AC400004 */  sw    $zero, 4($v0)
/* AD24FC 8005B35C AC440000 */  sw    $a0, ($v0)
/* AD2500 8005B360 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2504 8005B364 3C19C811 */  lui   $t9, (0xC8112078 >> 16) # lui $t9, 0xc811
/* AD2508 8005B368 37392078 */  ori   $t9, (0xC8112078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* AD250C 8005B36C 244C0008 */  addiu $t4, $v0, 8
/* AD2510 8005B370 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AD2514 8005B374 35EF001C */  ori   $t7, (0xE200001C & 0xFFFF) # ori $t7, $t7, 0x1c
/* AD2518 8005B378 AC4F0000 */  sw    $t7, ($v0)
/* AD251C 8005B37C AC590004 */  sw    $t9, 4($v0)
/* AD2520 8005B380 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2524 8005B384 3C18D700 */  lui   $t8, 0xd700
/* AD2528 8005B388 3C0DFC41 */  lui   $t5, (0xFC41C7FF >> 16) # lui $t5, 0xfc41
/* AD252C 8005B38C 24490008 */  addiu $t1, $v0, 8
/* AD2530 8005B390 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AD2534 8005B394 AC400004 */  sw    $zero, 4($v0)
/* AD2538 8005B398 AC580000 */  sw    $t8, ($v0)
/* AD253C 8005B39C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2540 8005B3A0 35ADC7FF */  ori   $t5, (0xFC41C7FF & 0xFFFF) # ori $t5, $t5, 0xc7ff
/* AD2544 8005B3A4 240EFE38 */  li    $t6, -456
/* AD2548 8005B3A8 244A0008 */  addiu $t2, $v0, 8
/* AD254C 8005B3AC AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD2550 8005B3B0 AC400004 */  sw    $zero, 4($v0)
/* AD2554 8005B3B4 AC440000 */  sw    $a0, ($v0)
/* AD2558 8005B3B8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD255C 8005B3BC 3C0FD9FF */  lui   $t7, (0xD9FFF9FF >> 16) # lui $t7, 0xd9ff
/* AD2560 8005B3C0 35EFF9FF */  ori   $t7, (0xD9FFF9FF & 0xFFFF) # ori $t7, $t7, 0xf9ff
/* AD2564 8005B3C4 244B0008 */  addiu $t3, $v0, 8
/* AD2568 8005B3C8 AE0B02C0 */  sw    $t3, 0x2c0($s0)
/* AD256C 8005B3CC AC4E0004 */  sw    $t6, 4($v0)
/* AD2570 8005B3D0 AC4D0000 */  sw    $t5, ($v0)
/* AD2574 8005B3D4 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2578 8005B3D8 3C09D9FF */  lui   $t1, (0xD9FFFFFF >> 16) # lui $t1, 0xd9ff
/* AD257C 8005B3DC 3529FFFF */  ori   $t1, (0xD9FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* AD2580 8005B3E0 244C0008 */  addiu $t4, $v0, 8
/* AD2584 8005B3E4 AE0C02C0 */  sw    $t4, 0x2c0($s0)
/* AD2588 8005B3E8 AC400004 */  sw    $zero, 4($v0)
/* AD258C 8005B3EC AC4F0000 */  sw    $t7, ($v0)
/* AD2590 8005B3F0 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD2594 8005B3F4 3C180002 */  lui   $t8, 2
/* AD2598 8005B3F8 24050030 */  li    $a1, 48
/* AD259C 8005B3FC 24590008 */  addiu $t9, $v0, 8
/* AD25A0 8005B400 AE1902C0 */  sw    $t9, 0x2c0($s0)
/* AD25A4 8005B404 AC580004 */  sw    $t8, 4($v0)
/* AD25A8 8005B408 AC490000 */  sw    $t1, ($v0)
/* AD25AC 8005B40C 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD25B0 8005B410 244A0008 */  addiu $t2, $v0, 8
/* AD25B4 8005B414 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD25B8 8005B418 AC440000 */  sw    $a0, ($v0)
/* AD25BC 8005B41C 02002025 */  move  $a0, $s0
/* AD25C0 8005B420 0C031A73 */  jal   Graph_Alloc
/* AD25C4 8005B424 AC400004 */   sw    $zero, 4($v0)
/* AD25C8 8005B428 14400009 */  bnez  $v0, .L8005B450
/* AD25CC 8005B42C 00404025 */   move  $t0, $v0
/* AD25D0 8005B430 3C048014 */  lui   $a0, %hi(D_8013A5C8) # $a0, 0x8014
/* AD25D4 8005B434 3C058014 */  lui   $a1, %hi(D_8013A5D8) # $a1, 0x8014
/* AD25D8 8005B438 24A5A5D8 */  addiu $a1, %lo(D_8013A5D8) # addiu $a1, $a1, -0x5a28
/* AD25DC 8005B43C 2484A5C8 */  addiu $a0, %lo(D_8013A5C8) # addiu $a0, $a0, -0x5a38
/* AD25E0 8005B440 240602D6 */  li    $a2, 726
/* AD25E4 8005B444 0C0007FC */  jal   __assert
/* AD25E8 8005B448 AFA2008C */   sw    $v0, 0x8c($sp)
/* AD25EC 8005B44C 8FA8008C */  lw    $t0, 0x8c($sp)
.L8005B450:
/* AD25F0 8005B450 8FA40094 */  lw    $a0, 0x94($sp)
/* AD25F4 8005B454 8FA50098 */  lw    $a1, 0x98($sp)
/* AD25F8 8005B458 8FA6009C */  lw    $a2, 0x9c($sp)
/* AD25FC 8005B45C C4840000 */  lwc1  $f4, ($a0)
/* AD2600 8005B460 27A70084 */  addiu $a3, $sp, 0x84
/* AD2604 8005B464 4600218D */  trunc.w.s $f6, $f4
/* AD2608 8005B468 440D3000 */  mfc1  $t5, $f6
/* AD260C 8005B46C 00000000 */  nop   
/* AD2610 8005B470 A50D0000 */  sh    $t5, ($t0)
/* AD2614 8005B474 C4880004 */  lwc1  $f8, 4($a0)
/* AD2618 8005B478 27AD007C */  addiu $t5, $sp, 0x7c
/* AD261C 8005B47C 4600428D */  trunc.w.s $f10, $f8
/* AD2620 8005B480 440C5000 */  mfc1  $t4, $f10
/* AD2624 8005B484 00000000 */  nop   
/* AD2628 8005B488 A50C0002 */  sh    $t4, 2($t0)
/* AD262C 8005B48C C4900008 */  lwc1  $f16, 8($a0)
/* AD2630 8005B490 4600848D */  trunc.w.s $f18, $f16
/* AD2634 8005B494 44199000 */  mfc1  $t9, $f18
/* AD2638 8005B498 00000000 */  nop   
/* AD263C 8005B49C A5190004 */  sh    $t9, 4($t0)
/* AD2640 8005B4A0 C4A40000 */  lwc1  $f4, ($a1)
/* AD2644 8005B4A4 4600218D */  trunc.w.s $f6, $f4
/* AD2648 8005B4A8 44183000 */  mfc1  $t8, $f6
/* AD264C 8005B4AC 00000000 */  nop   
/* AD2650 8005B4B0 A5180010 */  sh    $t8, 0x10($t0)
/* AD2654 8005B4B4 C4A80004 */  lwc1  $f8, 4($a1)
/* AD2658 8005B4B8 4600428D */  trunc.w.s $f10, $f8
/* AD265C 8005B4BC 440B5000 */  mfc1  $t3, $f10
/* AD2660 8005B4C0 00000000 */  nop   
/* AD2664 8005B4C4 A50B0012 */  sh    $t3, 0x12($t0)
/* AD2668 8005B4C8 C4B00008 */  lwc1  $f16, 8($a1)
/* AD266C 8005B4CC 27AB0080 */  addiu $t3, $sp, 0x80
/* AD2670 8005B4D0 4600848D */  trunc.w.s $f18, $f16
/* AD2674 8005B4D4 440E9000 */  mfc1  $t6, $f18
/* AD2678 8005B4D8 00000000 */  nop   
/* AD267C 8005B4DC A50E0014 */  sh    $t6, 0x14($t0)
/* AD2680 8005B4E0 C4C40000 */  lwc1  $f4, ($a2)
/* AD2684 8005B4E4 27AE0078 */  addiu $t6, $sp, 0x78
/* AD2688 8005B4E8 4600218D */  trunc.w.s $f6, $f4
/* AD268C 8005B4EC 440F3000 */  mfc1  $t7, $f6
/* AD2690 8005B4F0 00000000 */  nop   
/* AD2694 8005B4F4 A50F0020 */  sh    $t7, 0x20($t0)
/* AD2698 8005B4F8 C4C80004 */  lwc1  $f8, 4($a2)
/* AD269C 8005B4FC 4600428D */  trunc.w.s $f10, $f8
/* AD26A0 8005B500 44095000 */  mfc1  $t1, $f10
/* AD26A4 8005B504 00000000 */  nop   
/* AD26A8 8005B508 A5090022 */  sh    $t1, 0x22($t0)
/* AD26AC 8005B50C C4D00008 */  lwc1  $f16, 8($a2)
/* AD26B0 8005B510 4600848D */  trunc.w.s $f18, $f16
/* AD26B4 8005B514 440A9000 */  mfc1  $t2, $f18
/* AD26B8 8005B518 00000000 */  nop   
/* AD26BC 8005B51C A50A0024 */  sh    $t2, 0x24($t0)
/* AD26C0 8005B520 AFA8008C */  sw    $t0, 0x8c($sp)
/* AD26C4 8005B524 AFAE0018 */  sw    $t6, 0x18($sp)
/* AD26C8 8005B528 AFAD0014 */  sw    $t5, 0x14($sp)
/* AD26CC 8005B52C 0C03322D */  jal   func_800CC8B4
/* AD26D0 8005B530 AFAB0010 */   sw    $t3, 0x10($sp)
/* AD26D4 8005B534 8FA8008C */  lw    $t0, 0x8c($sp)
/* AD26D8 8005B538 240300FF */  li    $v1, 255
/* AD26DC 8005B53C 25040030 */  addiu $a0, $t0, 0x30
/* AD26E0 8005B540 0104082B */  sltu  $at, $t0, $a0
/* AD26E4 8005B544 1020002C */  beqz  $at, .L8005B5F8
/* AD26E8 8005B548 01001025 */   move  $v0, $t0
/* AD26EC 8005B54C 24420010 */  addiu $v0, $v0, 0x10
/* AD26F0 8005B550 0044082B */  sltu  $at, $v0, $a0
/* AD26F4 8005B554 A440FFF6 */  sh    $zero, -0xa($v0)
/* AD26F8 8005B558 A440FFF8 */  sh    $zero, -8($v0)
/* AD26FC 8005B55C 10200016 */  beqz  $at, .L8005B5B8
/* AD2700 8005B560 A440FFFA */   sh    $zero, -6($v0)
.L8005B564:
/* AD2704 8005B564 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD2708 8005B568 24420010 */  addiu $v0, $v0, 0x10
/* AD270C 8005B56C 0044082B */  sltu  $at, $v0, $a0
/* AD2710 8005B570 4600948D */  trunc.w.s $f18, $f18
/* AD2714 8005B574 44099000 */  mfc1  $t1, $f18
/* AD2718 8005B578 00000000 */  nop   
/* AD271C 8005B57C A049FFEC */  sb    $t1, -0x14($v0)
/* AD2720 8005B580 C7B20080 */  lwc1  $f18, 0x80($sp)
/* AD2724 8005B584 4600948D */  trunc.w.s $f18, $f18
/* AD2728 8005B588 440D9000 */  mfc1  $t5, $f18
/* AD272C 8005B58C 00000000 */  nop   
/* AD2730 8005B590 A04DFFED */  sb    $t5, -0x13($v0)
/* AD2734 8005B594 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* AD2738 8005B598 A043FFEF */  sb    $v1, -0x11($v0)
/* AD273C 8005B59C A440FFF6 */  sh    $zero, -0xa($v0)
/* AD2740 8005B5A0 4600948D */  trunc.w.s $f18, $f18
/* AD2744 8005B5A4 A440FFF8 */  sh    $zero, -8($v0)
/* AD2748 8005B5A8 A440FFFA */  sh    $zero, -6($v0)
/* AD274C 8005B5AC 44199000 */  mfc1  $t9, $f18
/* AD2750 8005B5B0 1420FFEC */  bnez  $at, .L8005B564
/* AD2754 8005B5B4 A059FFEE */   sb    $t9, -0x12($v0)
.L8005B5B8:
/* AD2758 8005B5B8 C7B20084 */  lwc1  $f18, 0x84($sp)
/* AD275C 8005B5BC 4600948D */  trunc.w.s $f18, $f18
/* AD2760 8005B5C0 44099000 */  mfc1  $t1, $f18
/* AD2764 8005B5C4 00000000 */  nop   
/* AD2768 8005B5C8 A049FFFC */  sb    $t1, -4($v0)
/* AD276C 8005B5CC C7B20080 */  lwc1  $f18, 0x80($sp)
/* AD2770 8005B5D0 4600948D */  trunc.w.s $f18, $f18
/* AD2774 8005B5D4 440D9000 */  mfc1  $t5, $f18
/* AD2778 8005B5D8 00000000 */  nop   
/* AD277C 8005B5DC A04DFFFD */  sb    $t5, -3($v0)
/* AD2780 8005B5E0 C7B2007C */  lwc1  $f18, 0x7c($sp)
/* AD2784 8005B5E4 A043FFFF */  sb    $v1, -1($v0)
/* AD2788 8005B5E8 4600948D */  trunc.w.s $f18, $f18
/* AD278C 8005B5EC 44199000 */  mfc1  $t9, $f18
/* AD2790 8005B5F0 00000000 */  nop   
/* AD2794 8005B5F4 A059FFFE */  sb    $t9, -2($v0)
.L8005B5F8:
/* AD2798 8005B5F8 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD279C 8005B5FC 3C180100 */  lui   $t8, (0x01003006 >> 16) # lui $t8, 0x100
/* AD27A0 8005B600 37183006 */  ori   $t8, (0x01003006 & 0xFFFF) # ori $t8, $t8, 0x3006
/* AD27A4 8005B604 24490008 */  addiu $t1, $v0, 8
/* AD27A8 8005B608 AE0902C0 */  sw    $t1, 0x2c0($s0)
/* AD27AC 8005B60C AC480004 */  sw    $t0, 4($v0)
/* AD27B0 8005B610 AC580000 */  sw    $t8, ($v0)
/* AD27B4 8005B614 8E0202C0 */  lw    $v0, 0x2c0($s0)
/* AD27B8 8005B618 3C0B0500 */  lui   $t3, (0x05000204 >> 16) # lui $t3, 0x500
/* AD27BC 8005B61C 356B0204 */  ori   $t3, (0x05000204 & 0xFFFF) # ori $t3, $t3, 0x204
/* AD27C0 8005B620 244A0008 */  addiu $t2, $v0, 8
/* AD27C4 8005B624 AE0A02C0 */  sw    $t2, 0x2c0($s0)
/* AD27C8 8005B628 3C068014 */  lui   $a2, %hi(D_8013A5F0) # $a2, 0x8014
/* AD27CC 8005B62C 24C6A5F0 */  addiu $a2, %lo(D_8013A5F0) # addiu $a2, $a2, -0x5a10
/* AD27D0 8005B630 27A40064 */  addiu $a0, $sp, 0x64
/* AD27D4 8005B634 02002825 */  move  $a1, $s0
/* AD27D8 8005B638 240702F5 */  li    $a3, 757
/* AD27DC 8005B63C AC400004 */  sw    $zero, 4($v0)
/* AD27E0 8005B640 0C031AD5 */  jal   Graph_CloseDisps
/* AD27E4 8005B644 AC4B0000 */   sw    $t3, ($v0)
/* AD27E8 8005B648 8FBF002C */  lw    $ra, 0x2c($sp)
/* AD27EC 8005B64C 8FB00028 */  lw    $s0, 0x28($sp)
/* AD27F0 8005B650 27BD0090 */  addiu $sp, $sp, 0x90
/* AD27F4 8005B654 03E00008 */  jr    $ra
/* AD27F8 8005B658 00000000 */   nop   


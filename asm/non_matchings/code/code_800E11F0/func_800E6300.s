glabel func_800E6300
/* B5D4A0 800E6300 90AE0000 */  lbu   $t6, ($a1)
/* B5D4A4 800E6304 25CFFFFF */  addiu $t7, $t6, -1
/* B5D4A8 800E6308 2DE1000E */  sltiu $at, $t7, 0xe
/* B5D4AC 800E630C 10200066 */  beqz  $at, .L800E64A8
/* B5D4B0 800E6310 000F7880 */   sll   $t7, $t7, 2
/* B5D4B4 800E6314 3C018015 */  lui   $at, %hi(jtbl_80149584)
/* B5D4B8 800E6318 002F0821 */  addu  $at, $at, $t7
/* B5D4BC 800E631C 8C2F9584 */  lw    $t7, %lo(jtbl_80149584)($at)
/* B5D4C0 800E6320 01E00008 */  jr    $t7
/* B5D4C4 800E6324 00000000 */   nop
glabel L800E6328
/* B5D4C8 800E6328 C4A00004 */  lwc1  $f0, 4($a1)
/* B5D4CC 800E632C C4840028 */  lwc1  $f4, 0x28($a0)
/* B5D4D0 800E6330 46040032 */  c.eq.s $f0, $f4
/* B5D4D4 800E6334 00000000 */  nop
/* B5D4D8 800E6338 4501005B */  bc1t  .L800E64A8
/* B5D4DC 800E633C 00000000 */   nop
/* B5D4E0 800E6340 90990001 */  lbu   $t9, 1($a0)
/* B5D4E4 800E6344 E4800028 */  swc1  $f0, 0x28($a0)
/* B5D4E8 800E6348 37280040 */  ori   $t0, $t9, 0x40
/* B5D4EC 800E634C 03E00008 */  jr    $ra
/* B5D4F0 800E6350 A0880001 */   sb    $t0, 1($a0)
glabel L800E6354
/* B5D4F4 800E6354 C4A00004 */  lwc1  $f0, 4($a1)
/* B5D4F8 800E6358 C486002C */  lwc1  $f6, 0x2c($a0)
/* B5D4FC 800E635C 46060032 */  c.eq.s $f0, $f6
/* B5D500 800E6360 00000000 */  nop
/* B5D504 800E6364 45010050 */  bc1t  .L800E64A8
/* B5D508 800E6368 00000000 */   nop
/* B5D50C 800E636C 908A0001 */  lbu   $t2, 1($a0)
/* B5D510 800E6370 E480002C */  swc1  $f0, 0x2c($a0)
/* B5D514 800E6374 354B0040 */  ori   $t3, $t2, 0x40
/* B5D518 800E6378 03E00008 */  jr    $ra
/* B5D51C 800E637C A08B0001 */   sb    $t3, 1($a0)
glabel L800E6380
/* B5D520 800E6380 80A20004 */  lb    $v0, 4($a1)
/* B5D524 800E6384 908C000A */  lbu   $t4, 0xa($a0)
/* B5D528 800E6388 104C0047 */  beq   $v0, $t4, .L800E64A8
/* B5D52C 800E638C 00000000 */   nop
/* B5D530 800E6390 908E0001 */  lbu   $t6, 1($a0)
/* B5D534 800E6394 A082000A */  sb    $v0, 0xa($a0)
/* B5D538 800E6398 35CF0020 */  ori   $t7, $t6, 0x20
/* B5D53C 800E639C 03E00008 */  jr    $ra
/* B5D540 800E63A0 A08F0001 */   sb    $t7, 1($a0)
glabel L800E63A4
/* B5D544 800E63A4 80A20004 */  lb    $v0, 4($a1)
/* B5D548 800E63A8 9098000A */  lbu   $t8, 0xa($a0)
/* B5D54C 800E63AC 1058003E */  beq   $v0, $t8, .L800E64A8
/* B5D550 800E63B0 00000000 */   nop
/* B5D554 800E63B4 90880001 */  lbu   $t0, 1($a0)
/* B5D558 800E63B8 A082000B */  sb    $v0, 0xb($a0)
/* B5D55C 800E63BC 35090020 */  ori   $t1, $t0, 0x20
/* B5D560 800E63C0 03E00008 */  jr    $ra
/* B5D564 800E63C4 A0890001 */   sb    $t1, 1($a0)
glabel L800E63C8
/* B5D568 800E63C8 C4A00004 */  lwc1  $f0, 4($a1)
/* B5D56C 800E63CC C4880038 */  lwc1  $f8, 0x38($a0)
/* B5D570 800E63D0 46080032 */  c.eq.s $f0, $f8
/* B5D574 800E63D4 00000000 */  nop
/* B5D578 800E63D8 45010033 */  bc1t  .L800E64A8
/* B5D57C 800E63DC 00000000 */   nop
/* B5D580 800E63E0 908B0001 */  lbu   $t3, 1($a0)
/* B5D584 800E63E4 E4800038 */  swc1  $f0, 0x38($a0)
/* B5D588 800E63E8 356C0080 */  ori   $t4, $t3, 0x80
/* B5D58C 800E63EC 03E00008 */  jr    $ra
/* B5D590 800E63F0 A08C0001 */   sb    $t4, 1($a0)
glabel L800E63F4
/* B5D594 800E63F4 80A20004 */  lb    $v0, 4($a1)
/* B5D598 800E63F8 908D0004 */  lbu   $t5, 4($a0)
/* B5D59C 800E63FC 104D002A */  beq   $v0, $t5, .L800E64A8
/* B5D5A0 800E6400 00000000 */   nop
/* B5D5A4 800E6404 03E00008 */  jr    $ra
/* B5D5A8 800E6408 A0820004 */   sb    $v0, 4($a0)
glabel L800E640C
/* B5D5AC 800E640C 90A20003 */  lbu   $v0, 3($a1)
/* B5D5B0 800E6410 28410008 */  slti  $at, $v0, 8
/* B5D5B4 800E6414 10200024 */  beqz  $at, .L800E64A8
/* B5D5B8 800E6418 00000000 */   nop
/* B5D5BC 800E641C 80AE0004 */  lb    $t6, 4($a1)
/* B5D5C0 800E6420 00827821 */  addu  $t7, $a0, $v0
/* B5D5C4 800E6424 03E00008 */  jr    $ra
/* B5D5C8 800E6428 A1EE00C4 */   sb    $t6, 0xc4($t7)
glabel L800E642C
/* B5D5CC 800E642C 80B90004 */  lb    $t9, 4($a1)
/* B5D5D0 800E6430 908A0000 */  lbu   $t2, ($a0)
/* B5D5D4 800E6434 00194100 */  sll   $t0, $t9, 4
/* B5D5D8 800E6438 31090010 */  andi  $t1, $t0, 0x10
/* B5D5DC 800E643C 314BFFEF */  andi  $t3, $t2, 0xffef
/* B5D5E0 800E6440 012B6025 */  or    $t4, $t1, $t3
/* B5D5E4 800E6444 03E00008 */  jr    $ra
/* B5D5E8 800E6448 A08C0000 */   sb    $t4, ($a0)
glabel L800E644C
/* B5D5EC 800E644C 80AD0004 */  lb    $t5, 4($a1)
/* B5D5F0 800E6450 03E00008 */  jr    $ra
/* B5D5F4 800E6454 A08D0003 */   sb    $t5, 3($a0)
glabel L800E6458
/* B5D5F8 800E6458 90AE0004 */  lbu   $t6, 4($a1)
/* B5D5FC 800E645C 24180001 */  li    $t8, 1
/* B5D600 800E6460 A498001A */  sh    $t8, 0x1a($a0)
/* B5D604 800E6464 000E78C0 */  sll   $t7, $t6, 3
/* B5D608 800E6468 03E00008 */  jr    $ra
/* B5D60C 800E646C A48F0016 */   sh    $t7, 0x16($a0)
glabel L800E6470
/* B5D610 800E6470 90B90004 */  lbu   $t9, 4($a1)
/* B5D614 800E6474 240A0001 */  li    $t2, 1
/* B5D618 800E6478 A48A0018 */  sh    $t2, 0x18($a0)
/* B5D61C 800E647C 00194140 */  sll   $t0, $t9, 5
/* B5D620 800E6480 03E00008 */  jr    $ra
/* B5D624 800E6484 A4880014 */   sh    $t0, 0x14($a0)
glabel L800E6488
/* B5D628 800E6488 90A90004 */  lbu   $t1, 4($a1)
/* B5D62C 800E648C 03E00008 */  jr    $ra
/* B5D630 800E6490 A089000F */   sb    $t1, 0xf($a0)
glabel L800E6494
/* B5D634 800E6494 94AB0004 */  lhu   $t3, 4($a1)
/* B5D638 800E6498 03E00008 */  jr    $ra
/* B5D63C 800E649C A48B0020 */   sh    $t3, 0x20($a0)
glabel L800E64A0
/* B5D640 800E64A0 90AC0004 */  lbu   $t4, 4($a1)
/* B5D644 800E64A4 A08C00D0 */  sb    $t4, 0xd0($a0)
.L800E64A8:
/* B5D648 800E64A8 03E00008 */  jr    $ra
/* B5D64C 800E64AC 00000000 */   nop


glabel func_800AD394
/* B24534 800AD394 00A01025 */  move  $v0, $a1
/* B24538 800AD398 AFA40000 */  sw    $a0, ($sp)
/* B2453C 800AD39C 3C0EE700 */  lui   $t6, 0xe700
/* B24540 800AD3A0 AC4E0000 */  sw    $t6, ($v0)
/* B24544 800AD3A4 AC400004 */  sw    $zero, 4($v0)
/* B24548 800AD3A8 24A50008 */  addiu $a1, $a1, 8
/* B2454C 800AD3AC 00A01025 */  move  $v0, $a1
/* B24550 800AD3B0 3C0FEF90 */  lui   $t7, (0xEF90CCF0 >> 16) # lui $t7, 0xef90
/* B24554 800AD3B4 3C180C18 */  lui   $t8, (0x0C184344 >> 16) # lui $t8, 0xc18
/* B24558 800AD3B8 37184344 */  ori   $t8, (0x0C184344 & 0xFFFF) # ori $t8, $t8, 0x4344
/* B2455C 800AD3BC 35EFCCF0 */  ori   $t7, (0xEF90CCF0 & 0xFFFF) # ori $t7, $t7, 0xccf0
/* B24560 800AD3C0 AC4F0000 */  sw    $t7, ($v0)
/* B24564 800AD3C4 AC580004 */  sw    $t8, 4($v0)
/* B24568 800AD3C8 24A50008 */  addiu $a1, $a1, 8
/* B2456C 800AD3CC 00A01025 */  move  $v0, $a1
/* B24570 800AD3D0 3C0EF5FC */  lui   $t6, (0xF5FCFD7B >> 16) # lui $t6, 0xf5fc
/* B24574 800AD3D4 3C19FC64 */  lui   $t9, (0xFC64FE60 >> 16) # lui $t9, 0xfc64
/* B24578 800AD3D8 3C070F00 */  lui   $a3, 0xf00
/* B2457C 800AD3DC 3739FE60 */  ori   $t9, (0xFC64FE60 & 0xFFFF) # ori $t9, $t9, 0xfe60
/* B24580 800AD3E0 35CEFD7B */  ori   $t6, (0xF5FCFD7B & 0xFFFF) # ori $t6, $t6, 0xfd7b
/* B24584 800AD3E4 3C0B0708 */  lui   $t3, (0x07080200 >> 16) # lui $t3, 0x708
/* B24588 800AD3E8 3C080008 */  lui   $t0, (0x00080200 >> 16) # lui $t0, 8
/* B2458C 800AD3EC 3C06F548 */  lui   $a2, (0xF548A000 >> 16) # lui $a2, 0xf548
/* B24590 800AD3F0 24E70000 */  addiu $a3, $a3, 0
/* B24594 800AD3F4 AC4E0004 */  sw    $t6, 4($v0)
/* B24598 800AD3F8 AC590000 */  sw    $t9, ($v0)
/* B2459C 800AD3FC 24A50008 */  addiu $a1, $a1, 8
/* B245A0 800AD400 34C6A000 */  ori   $a2, (0xF548A000 & 0xFFFF) # ori $a2, $a2, 0xa000
/* B245A4 800AD404 35080200 */  ori   $t0, (0x00080200 & 0xFFFF) # ori $t0, $t0, 0x200
/* B245A8 800AD408 356B0200 */  ori   $t3, (0x07080200 & 0xFFFF) # ori $t3, $t3, 0x200
/* B245AC 800AD40C 00002025 */  move  $a0, $zero
/* B245B0 800AD410 3C0DF300 */  lui   $t5, 0xf300
/* B245B4 800AD414 3C0CE600 */  lui   $t4, 0xe600
/* B245B8 800AD418 3C0AF550 */  lui   $t2, 0xf550
/* B245BC 800AD41C 3C09FD50 */  lui   $t1, 0xfd50
.L800AD420:
/* B245C0 800AD420 00A01025 */  move  $v0, $a1
/* B245C4 800AD424 AC490000 */  sw    $t1, ($v0)
/* B245C8 800AD428 AC470004 */  sw    $a3, 4($v0)
/* B245CC 800AD42C 24A50008 */  addiu $a1, $a1, 8
/* B245D0 800AD430 00A01025 */  move  $v0, $a1
/* B245D4 800AD434 AC4A0000 */  sw    $t2, ($v0)
/* B245D8 800AD438 AC4B0004 */  sw    $t3, 4($v0)
/* B245DC 800AD43C 24A50008 */  addiu $a1, $a1, 8
/* B245E0 800AD440 00A01025 */  move  $v0, $a1
/* B245E4 800AD444 240303BF */  li    $v1, 959
/* B245E8 800AD448 306F0FFF */  andi  $t7, $v1, 0xfff
/* B245EC 800AD44C AC4C0000 */  sw    $t4, ($v0)
/* B245F0 800AD450 AC400004 */  sw    $zero, 4($v0)
/* B245F4 800AD454 24A50008 */  addiu $a1, $a1, 8
/* B245F8 800AD458 00A01025 */  move  $v0, $a1
/* B245FC 800AD45C 000FC300 */  sll   $t8, $t7, 0xc
/* B24600 800AD460 3C010700 */  lui   $at, 0x700
/* B24604 800AD464 0301C825 */  or    $t9, $t8, $at
/* B24608 800AD468 372E001A */  ori   $t6, $t9, 0x1a
/* B2460C 800AD46C AC4E0004 */  sw    $t6, 4($v0)
/* B24610 800AD470 AC4D0000 */  sw    $t5, ($v0)
/* B24614 800AD474 24A50008 */  addiu $a1, $a1, 8
/* B24618 800AD478 00A01025 */  move  $v0, $a1
/* B2461C 800AD47C 3C0FE700 */  lui   $t7, 0xe700
/* B24620 800AD480 AC4F0000 */  sw    $t7, ($v0)
/* B24624 800AD484 AC400004 */  sw    $zero, 4($v0)
/* B24628 800AD488 24A50008 */  addiu $a1, $a1, 8
/* B2462C 800AD48C 00A01025 */  move  $v0, $a1
/* B24630 800AD490 AC460000 */  sw    $a2, ($v0)
/* B24634 800AD494 AC480004 */  sw    $t0, 4($v0)
/* B24638 800AD498 24A50008 */  addiu $a1, $a1, 8
/* B2463C 800AD49C 00A01025 */  move  $v0, $a1
/* B24640 800AD4A0 3C19009F */  lui   $t9, (0x009FC008 >> 16) # lui $t9, 0x9f
/* B24644 800AD4A4 3739C008 */  ori   $t9, (0x009FC008 & 0xFFFF) # ori $t9, $t9, 0xc008
/* B24648 800AD4A8 3C18F200 */  lui   $t8, 0xf200
/* B2464C 800AD4AC AC580000 */  sw    $t8, ($v0)
/* B24650 800AD4B0 AC590004 */  sw    $t9, 4($v0)
/* B24654 800AD4B4 24A50008 */  addiu $a1, $a1, 8
/* B24658 800AD4B8 00A01025 */  move  $v0, $a1
/* B2465C 800AD4BC AC460000 */  sw    $a2, ($v0)
/* B24660 800AD4C0 AC480004 */  sw    $t0, 4($v0)
/* B24664 800AD4C4 24A50008 */  addiu $a1, $a1, 8
/* B24668 800AD4C8 00A01025 */  move  $v0, $a1
/* B2466C 800AD4CC 3C0F00A0 */  lui   $t7, (0x00A04008 >> 16) # lui $t7, 0xa0
/* B24670 800AD4D0 3C0EF200 */  lui   $t6, (0xF2008000 >> 16) # lui $t6, 0xf200
/* B24674 800AD4D4 35CE8000 */  ori   $t6, (0xF2008000 & 0xFFFF) # ori $t6, $t6, 0x8000
/* B24678 800AD4D8 35EF4008 */  ori   $t7, (0x00A04008 & 0xFFFF) # ori $t7, $t7, 0x4008
/* B2467C 800AD4DC AC4F0004 */  sw    $t7, 4($v0)
/* B24680 800AD4E0 AC4E0000 */  sw    $t6, ($v0)
/* B24684 800AD4E4 24A50008 */  addiu $a1, $a1, 8
/* B24688 800AD4E8 00A01025 */  move  $v0, $a1
/* B2468C 800AD4EC 3C180118 */  lui   $t8, (0x01180200 >> 16) # lui $t8, 0x118
/* B24690 800AD4F0 37180200 */  ori   $t8, (0x01180200 & 0xFFFF) # ori $t8, $t8, 0x200
/* B24694 800AD4F4 AC580004 */  sw    $t8, 4($v0)
/* B24698 800AD4F8 AC460000 */  sw    $a2, ($v0)
/* B2469C 800AD4FC 24A50008 */  addiu $a1, $a1, 8
/* B246A0 800AD500 00A01025 */  move  $v0, $a1
/* B246A4 800AD504 3C0E01A0 */  lui   $t6, (0x01A00008 >> 16) # lui $t6, 0x1a0
/* B246A8 800AD508 3C19F200 */  lui   $t9, (0xF2004000 >> 16) # lui $t9, 0xf200
/* B246AC 800AD50C 37394000 */  ori   $t9, (0xF2004000 & 0xFFFF) # ori $t9, $t9, 0x4000
/* B246B0 800AD510 35CE0008 */  ori   $t6, (0x01A00008 & 0xFFFF) # ori $t6, $t6, 8
/* B246B4 800AD514 24830003 */  addiu $v1, $a0, 3
/* B246B8 800AD518 AC4E0004 */  sw    $t6, 4($v0)
/* B246BC 800AD51C AC590000 */  sw    $t9, ($v0)
/* B246C0 800AD520 24A50008 */  addiu $a1, $a1, 8
/* B246C4 800AD524 00037880 */  sll   $t7, $v1, 2
/* B246C8 800AD528 31F80FFF */  andi  $t8, $t7, 0xfff
/* B246CC 800AD52C 00A01025 */  move  $v0, $a1
/* B246D0 800AD530 00047080 */  sll   $t6, $a0, 2
/* B246D4 800AD534 3C01E450 */  lui   $at, 0xe450
/* B246D8 800AD538 0301C825 */  or    $t9, $t8, $at
/* B246DC 800AD53C 31CF0FFF */  andi  $t7, $t6, 0xfff
/* B246E0 800AD540 AC4F0004 */  sw    $t7, 4($v0)
/* B246E4 800AD544 AC590000 */  sw    $t9, ($v0)
/* B246E8 800AD548 24A50008 */  addiu $a1, $a1, 8
/* B246EC 800AD54C 00A01025 */  move  $v0, $a1
/* B246F0 800AD550 3C190040 */  lui   $t9, 0x40
/* B246F4 800AD554 3C18E100 */  lui   $t8, 0xe100
/* B246F8 800AD558 AC580000 */  sw    $t8, ($v0)
/* B246FC 800AD55C AC590004 */  sw    $t9, 4($v0)
/* B24700 800AD560 24A50008 */  addiu $a1, $a1, 8
/* B24704 800AD564 00A01025 */  move  $v0, $a1
/* B24708 800AD568 3C0F0800 */  lui   $t7, (0x08000400 >> 16) # lui $t7, 0x800
/* B2470C 800AD56C 286100EE */  slti  $at, $v1, 0xee
/* B24710 800AD570 35EF0400 */  ori   $t7, (0x08000400 & 0xFFFF) # ori $t7, $t7, 0x400
/* B24714 800AD574 3C0EF100 */  lui   $t6, 0xf100
/* B24718 800AD578 00602025 */  move  $a0, $v1
/* B2471C 800AD57C AC4E0000 */  sw    $t6, ($v0)
/* B24720 800AD580 AC4F0004 */  sw    $t7, 4($v0)
/* B24724 800AD584 24A50008 */  addiu $a1, $a1, 8
/* B24728 800AD588 1420FFA5 */  bnez  $at, .L800AD420
/* B2472C 800AD58C 24E70780 */   addiu $a3, $a3, 0x780
/* B24730 800AD590 00A01025 */  move  $v0, $a1
/* B24734 800AD594 3C18E700 */  lui   $t8, 0xe700
/* B24738 800AD598 AC580000 */  sw    $t8, ($v0)
/* B2473C 800AD59C AC400004 */  sw    $zero, 4($v0)
/* B24740 800AD5A0 24A50008 */  addiu $a1, $a1, 8
/* B24744 800AD5A4 00A01025 */  move  $v0, $a1
/* B24748 800AD5A8 3C19DF00 */  lui   $t9, 0xdf00
/* B2474C 800AD5AC AC590000 */  sw    $t9, ($v0)
/* B24750 800AD5B0 AC400004 */  sw    $zero, 4($v0)
/* B24754 800AD5B4 24A50008 */  addiu $a1, $a1, 8
/* B24758 800AD5B8 03E00008 */  jr    $ra
/* B2475C 800AD5BC 00A01025 */   move  $v0, $a1


glabel func_800F227C
/* B6941C 800F227C 3C068013 */  lui   $a2, %hi(D_80131EE4) # $a2, 0x8013
/* B69420 800F2280 24C61EE4 */  addiu $a2, %lo(D_80131EE4) # addiu $a2, $a2, 0x1ee4
/* B69424 800F2284 90CE0000 */  lbu   $t6, ($a2)
/* B69428 800F2288 3C028017 */  lui   $v0, %hi(D_8016BAB8) # $v0, 0x8017
/* B6942C 800F228C 11C0002C */  beqz  $t6, .L800F2340
/* B69430 800F2290 00000000 */   nop   
/* B69434 800F2294 8C42BAB8 */  lw    $v0, %lo(D_8016BAB8)($v0)
/* B69438 800F2298 3C038013 */  lui   $v1, %hi(D_80131EE0) # $v1, 0x8013
/* B6943C 800F229C 24631EE0 */  addiu $v1, %lo(D_80131EE0) # addiu $v1, $v1, 0x1ee0
/* B69440 800F22A0 304F0008 */  andi  $t7, $v0, 8
/* B69444 800F22A4 11E00004 */  beqz  $t7, .L800F22B8
/* B69448 800F22A8 30480004 */   andi  $t0, $v0, 4
/* B6944C 800F22AC 80780000 */  lb    $t8, ($v1)
/* B69450 800F22B0 2719FFFF */  addiu $t9, $t8, -1
/* B69454 800F22B4 A0790000 */  sb    $t9, ($v1)
.L800F22B8:
/* B69458 800F22B8 3C038013 */  lui   $v1, %hi(D_80131EE0) # $v1, 0x8013
/* B6945C 800F22BC 11000004 */  beqz  $t0, .L800F22D0
/* B69460 800F22C0 24631EE0 */   addiu $v1, %lo(D_80131EE0) # addiu $v1, $v1, 0x1ee0
/* B69464 800F22C4 80690000 */  lb    $t1, ($v1)
/* B69468 800F22C8 252A0001 */  addiu $t2, $t1, 1
/* B6946C 800F22CC A06A0000 */  sb    $t2, ($v1)
.L800F22D0:
/* B69470 800F22D0 304B0002 */  andi  $t3, $v0, 2
/* B69474 800F22D4 11600006 */  beqz  $t3, .L800F22F0
/* B69478 800F22D8 304E0001 */   andi  $t6, $v0, 1
/* B6947C 800F22DC 3C048013 */  lui   $a0, %hi(D_80131EDC) # $a0, 0x8013
/* B69480 800F22E0 24841EDC */  addiu $a0, %lo(D_80131EDC) # addiu $a0, $a0, 0x1edc
/* B69484 800F22E4 808C0000 */  lb    $t4, ($a0)
/* B69488 800F22E8 258DFFFF */  addiu $t5, $t4, -1
/* B6948C 800F22EC A08D0000 */  sb    $t5, ($a0)
.L800F22F0:
/* B69490 800F22F0 3C048013 */  lui   $a0, %hi(D_80131EDC) # $a0, 0x8013
/* B69494 800F22F4 11C00004 */  beqz  $t6, .L800F2308
/* B69498 800F22F8 24841EDC */   addiu $a0, %lo(D_80131EDC) # addiu $a0, $a0, 0x1edc
/* B6949C 800F22FC 808F0000 */  lb    $t7, ($a0)
/* B694A0 800F2300 25F80001 */  addiu $t8, $t7, 1
/* B694A4 800F2304 A0980000 */  sb    $t8, ($a0)
.L800F2308:
/* B694A8 800F2308 30598000 */  andi  $t9, $v0, 0x8000
/* B694AC 800F230C 13200007 */  beqz  $t9, .L800F232C
/* B694B0 800F2310 304B4000 */   andi  $t3, $v0, 0x4000
/* B694B4 800F2314 2408001A */  li    $t0, 26
/* B694B8 800F2318 24090001 */  li    $t1, 1
/* B694BC 800F231C 240A0006 */  li    $t2, 6
/* B694C0 800F2320 A0880000 */  sb    $t0, ($a0)
/* B694C4 800F2324 A0690000 */  sb    $t1, ($v1)
/* B694C8 800F2328 A0CA0002 */  sb    $t2, 2($a2)
.L800F232C:
/* B694CC 800F232C 11600004 */  beqz  $t3, .L800F2340
/* B694D0 800F2330 3C018013 */   lui   $at, %hi(D_80131ED4) # $at, 0x8013
/* B694D4 800F2334 A0201ED4 */  sb    $zero, %lo(D_80131ED4)($at)
/* B694D8 800F2338 3C018013 */  lui   $at, %hi(D_80131ED8) # $at, 0x8013
/* B694DC 800F233C A0201ED8 */  sb    $zero, %lo(D_80131ED8)($at)
.L800F2340:
/* B694E0 800F2340 3C028017 */  lui   $v0, %hi(D_8016BAB8) # $v0, 0x8017
/* B694E4 800F2344 8C42BAB8 */  lw    $v0, %lo(D_8016BAB8)($v0)
/* B694E8 800F2348 3C078013 */  lui   $a3, %hi(D_80131ED0) # $a3, 0x8013
/* B694EC 800F234C 24E71ED0 */  addiu $a3, %lo(D_80131ED0) # addiu $a3, $a3, 0x1ed0
/* B694F0 800F2350 304C0800 */  andi  $t4, $v0, 0x800
/* B694F4 800F2354 11800008 */  beqz  $t4, .L800F2378
/* B694F8 800F2358 304F0400 */   andi  $t7, $v0, 0x400
/* B694FC 800F235C 90E30000 */  lbu   $v1, ($a3)
/* B69500 800F2360 240E000A */  li    $t6, 10
/* B69504 800F2364 18600003 */  blez  $v1, .L800F2374
/* B69508 800F2368 246DFFFF */   addiu $t5, $v1, -1
/* B6950C 800F236C 10000002 */  b     .L800F2378
/* B69510 800F2370 A0ED0000 */   sb    $t5, ($a3)
.L800F2374:
/* B69514 800F2374 A0EE0000 */  sb    $t6, ($a3)
.L800F2378:
/* B69518 800F2378 3C078013 */  lui   $a3, %hi(D_80131ED0) # $a3, 0x8013
/* B6951C 800F237C 11E00008 */  beqz  $t7, .L800F23A0
/* B69520 800F2380 24E71ED0 */   addiu $a3, %lo(D_80131ED0) # addiu $a3, $a3, 0x1ed0
/* B69524 800F2384 90E30000 */  lbu   $v1, ($a3)
/* B69528 800F2388 2861000A */  slti  $at, $v1, 0xa
/* B6952C 800F238C 10200003 */  beqz  $at, .L800F239C
/* B69530 800F2390 24780001 */   addiu $t8, $v1, 1
/* B69534 800F2394 10000002 */  b     .L800F23A0
/* B69538 800F2398 A0F80000 */   sb    $t8, ($a3)
.L800F239C:
/* B6953C 800F239C A0E00000 */  sb    $zero, ($a3)
.L800F23A0:
/* B69540 800F23A0 30590200 */  andi  $t9, $v0, 0x200
/* B69544 800F23A4 1320000D */  beqz  $t9, .L800F23DC
/* B69548 800F23A8 304B0100 */   andi  $t3, $v0, 0x100
/* B6954C 800F23AC 90E30000 */  lbu   $v1, ($a3)
/* B69550 800F23B0 3C098013 */  lui   $t1, %hi(D_80131EF0)
/* B69554 800F23B4 00C32021 */  addu  $a0, $a2, $v1
/* B69558 800F23B8 90850000 */  lbu   $a1, ($a0)
/* B6955C 800F23BC 01234821 */  addu  $t1, $t1, $v1
/* B69560 800F23C0 18A00003 */  blez  $a1, .L800F23D0
/* B69564 800F23C4 24A8FFFF */   addiu $t0, $a1, -1
/* B69568 800F23C8 10000004 */  b     .L800F23DC
/* B6956C 800F23CC A0880000 */   sb    $t0, ($a0)
.L800F23D0:
/* B69570 800F23D0 91291EF0 */  lbu   $t1, %lo(D_80131EF0)($t1)
/* B69574 800F23D4 252AFFFF */  addiu $t2, $t1, -1
/* B69578 800F23D8 A08A0000 */  sb    $t2, ($a0)
.L800F23DC:
/* B6957C 800F23DC 5160000F */  beql  $t3, $zero, .L800F241C
/* B69580 800F23E0 90CF0008 */   lbu   $t7, 8($a2)
/* B69584 800F23E4 90E30000 */  lbu   $v1, ($a3)
/* B69588 800F23E8 3C0C8013 */  lui   $t4, %hi(D_80131EF0)
/* B6958C 800F23EC 01836021 */  addu  $t4, $t4, $v1
/* B69590 800F23F0 918C1EF0 */  lbu   $t4, %lo(D_80131EF0)($t4)
/* B69594 800F23F4 00C32021 */  addu  $a0, $a2, $v1
/* B69598 800F23F8 90850000 */  lbu   $a1, ($a0)
/* B6959C 800F23FC 258DFFFF */  addiu $t5, $t4, -1
/* B695A0 800F2400 00AD082A */  slt   $at, $a1, $t5
/* B695A4 800F2404 10200003 */  beqz  $at, .L800F2414
/* B695A8 800F2408 24AE0001 */   addiu $t6, $a1, 1
/* B695AC 800F240C 10000002 */  b     .L800F2418
/* B695B0 800F2410 A08E0000 */   sb    $t6, ($a0)
.L800F2414:
/* B695B4 800F2414 A0800000 */  sb    $zero, ($a0)
.L800F2418:
/* B695B8 800F2418 90CF0008 */  lbu   $t7, 8($a2)
.L800F241C:
/* B695BC 800F241C 90D90003 */  lbu   $t9, 3($a2)
/* B695C0 800F2420 90C90004 */  lbu   $t1, 4($a2)
/* B695C4 800F2424 000FC140 */  sll   $t8, $t7, 5
/* B695C8 800F2428 90CC0005 */  lbu   $t4, 5($a2)
/* B695CC 800F242C 90CF0006 */  lbu   $t7, 6($a2)
/* B695D0 800F2430 03194021 */  addu  $t0, $t8, $t9
/* B695D4 800F2434 00095040 */  sll   $t2, $t1, 1
/* B695D8 800F2438 90C90007 */  lbu   $t1, 7($a2)
/* B695DC 800F243C 010A5821 */  addu  $t3, $t0, $t2
/* B695E0 800F2440 000C6880 */  sll   $t5, $t4, 2
/* B695E4 800F2444 016D7021 */  addu  $t6, $t3, $t5
/* B695E8 800F2448 000FC0C0 */  sll   $t8, $t7, 3
/* B695EC 800F244C 01D8C821 */  addu  $t9, $t6, $t8
/* B695F0 800F2450 00094100 */  sll   $t0, $t1, 4
/* B695F4 800F2454 03285021 */  addu  $t2, $t9, $t0
/* B695F8 800F2458 3C018013 */  lui   $at, %hi(D_801333F0)
/* B695FC 800F245C 03E00008 */  jr    $ra
/* B69600 800F2460 A02A33F0 */   sb    $t2, %lo(D_801333F0)($at)


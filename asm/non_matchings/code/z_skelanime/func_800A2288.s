.rdata
glabel D_801402D8
    .asciz "\x1b[31m"
    .balign 4

glabel D_801402E0
    .asciz "Si2_draw2():skelがNULLです。NULLを返します。\n"
    # EUC-JP: がNULLです。| Is null. Returns null.
    .balign 4

glabel D_80140310
    .asciz "\x1b[m"
    .balign 4

glabel D_80140314
    .asciz "../z_skelanime.c"
    .balign 4

.text
glabel func_800A2288
/* B19428 800A2288 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1942C 800A228C AFBF0024 */  sw    $ra, 0x24($sp)
/* B19430 800A2290 AFA40058 */  sw    $a0, 0x58($sp)
/* B19434 800A2294 AFA5005C */  sw    $a1, 0x5c($sp)
/* B19438 800A2298 AFA60060 */  sw    $a2, 0x60($sp)
/* B1943C 800A229C 14A0000C */  bnez  $a1, .L800A22D0
/* B19440 800A22A0 AFA70064 */   sw    $a3, 0x64($sp)
/* B19444 800A22A4 3C048014 */  lui   $a0, %hi(D_801402D8) # $a0, 0x8014
/* B19448 800A22A8 0C00084C */  jal   osSyncPrintf
/* B1944C 800A22AC 248402D8 */   addiu $a0, %lo(D_801402D8) # addiu $a0, $a0, 0x2d8
/* B19450 800A22B0 3C048014 */  lui   $a0, %hi(D_801402E0) # $a0, 0x8014
/* B19454 800A22B4 0C00084C */  jal   osSyncPrintf
/* B19458 800A22B8 248402E0 */   addiu $a0, %lo(D_801402E0) # addiu $a0, $a0, 0x2e0
/* B1945C 800A22BC 3C048014 */  lui   $a0, %hi(D_80140310) # $a0, 0x8014
/* B19460 800A22C0 0C00084C */  jal   osSyncPrintf
/* B19464 800A22C4 24840310 */   addiu $a0, %lo(D_80140310) # addiu $a0, $a0, 0x310
/* B19468 800A22C8 10000071 */  b     .L800A2490
/* B1946C 800A22CC 00001025 */   move  $v0, $zero
.L800A22D0:
/* B19470 800A22D0 0C034213 */  jal   Matrix_Push
/* B19474 800A22D4 00000000 */   nop
/* B19478 800A22D8 8FAF005C */  lw    $t7, 0x5c($sp)
/* B1947C 800A22DC 3C0A8016 */  lui   $t2, %hi(gSegments)
/* B19480 800A22E0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19484 800A22E4 8DE20000 */  lw    $v0, ($t7)
/* B19488 800A22E8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B1948C 800A22EC 8FA30060 */  lw    $v1, 0x60($sp)
/* B19490 800A22F0 0002C900 */  sll   $t9, $v0, 4
/* B19494 800A22F4 00194702 */  srl   $t0, $t9, 0x1c
/* B19498 800A22F8 00084880 */  sll   $t1, $t0, 2
/* B1949C 800A22FC 01495021 */  addu  $t2, $t2, $t1
/* B194A0 800A2300 8D4A6FA8 */  lw    $t2, %lo(gSegments)($t2)
/* B194A4 800A2304 0041C024 */  and   $t8, $v0, $at
/* B194A8 800A2308 3C018000 */  lui   $at, 0x8000
/* B194AC 800A230C 030A5821 */  addu  $t3, $t8, $t2
/* B194B0 800A2310 01616021 */  addu  $t4, $t3, $at
/* B194B4 800A2314 AFAC0054 */  sw    $t4, 0x54($sp)
/* B194B8 800A2318 846D0000 */  lh    $t5, ($v1)
/* B194BC 800A231C 27B90038 */  addiu $t9, $sp, 0x38
/* B194C0 800A2320 27AC0038 */  addiu $t4, $sp, 0x38
/* B194C4 800A2324 448D2000 */  mtc1  $t5, $f4
/* B194C8 800A2328 24050001 */  li    $a1, 1
/* B194CC 800A232C 27A6004C */  addiu $a2, $sp, 0x4c
/* B194D0 800A2330 468021A0 */  cvt.s.w $f6, $f4
/* B194D4 800A2334 27A70040 */  addiu $a3, $sp, 0x40
/* B194D8 800A2338 E7A60040 */  swc1  $f6, 0x40($sp)
/* B194DC 800A233C 846E0002 */  lh    $t6, 2($v1)
/* B194E0 800A2340 448E4000 */  mtc1  $t6, $f8
/* B194E4 800A2344 27AE0070 */  addiu $t6, $sp, 0x70
/* B194E8 800A2348 468042A0 */  cvt.s.w $f10, $f8
/* B194EC 800A234C E7AA0044 */  swc1  $f10, 0x44($sp)
/* B194F0 800A2350 846F0004 */  lh    $t7, 4($v1)
/* B194F4 800A2354 448F8000 */  mtc1  $t7, $f16
/* B194F8 800A2358 00000000 */  nop
/* B194FC 800A235C 468084A0 */  cvt.s.w $f18, $f16
/* B19500 800A2360 E7B20048 */  swc1  $f18, 0x48($sp)
/* B19504 800A2364 88690006 */  lwl   $t1, 6($v1)
/* B19508 800A2368 98690009 */  lwr   $t1, 9($v1)
/* B1950C 800A236C AF290000 */  sw    $t1, ($t9)
/* B19510 800A2370 9469000A */  lhu   $t1, 0xa($v1)
/* B19514 800A2374 A7290004 */  sh    $t1, 4($t9)
/* B19518 800A2378 8FB80054 */  lw    $t8, 0x54($sp)
/* B1951C 800A237C 8FAB0064 */  lw    $t3, 0x64($sp)
/* B19520 800A2380 8FA40058 */  lw    $a0, 0x58($sp)
/* B19524 800A2384 8F0A0008 */  lw    $t2, 8($t8)
/* B19528 800A2388 11600007 */  beqz  $t3, .L800A23A8
/* B1952C 800A238C AFAA004C */   sw    $t2, 0x4c($sp)
/* B19530 800A2390 8FAD006C */  lw    $t5, 0x6c($sp)
/* B19534 800A2394 AFAC0010 */  sw    $t4, 0x10($sp)
/* B19538 800A2398 AFAE0018 */  sw    $t6, 0x18($sp)
/* B1953C 800A239C 0160F809 */  jalr  $t3
/* B19540 800A23A0 AFAD0014 */  sw    $t5, 0x14($sp)
/* B19544 800A23A4 1440001B */  bnez  $v0, .L800A2414
.L800A23A8:
/* B19548 800A23A8 27A40040 */   addiu $a0, $sp, 0x40
/* B1954C 800A23AC 0C0344D0 */  jal   Matrix_TranslateThenRotateZYX
/* B19550 800A23B0 27A50038 */   addiu $a1, $sp, 0x38
/* B19554 800A23B4 8FAF004C */  lw    $t7, 0x4c($sp)
/* B19558 800A23B8 8FB90070 */  lw    $t9, 0x70($sp)
/* B1955C 800A23BC 3C09DA38 */  lui   $t1, (0xDA380003 >> 16) # lui $t1, 0xda38
/* B19560 800A23C0 11E00014 */  beqz  $t7, .L800A2414
/* B19564 800A23C4 27280008 */   addiu $t0, $t9, 8
/* B19568 800A23C8 AFA80070 */  sw    $t0, 0x70($sp)
/* B1956C 800A23CC 35290003 */  ori   $t1, (0xDA380003 & 0xFFFF) # ori $t1, $t1, 3
/* B19570 800A23D0 AF290000 */  sw    $t1, ($t9)
/* B19574 800A23D4 8FB80058 */  lw    $t8, 0x58($sp)
/* B19578 800A23D8 3C058014 */  lui   $a1, %hi(D_80140314) # $a1, 0x8014
/* B1957C 800A23DC 24A50314 */  addiu $a1, %lo(D_80140314) # addiu $a1, $a1, 0x314
/* B19580 800A23E0 8F040000 */  lw    $a0, ($t8)
/* B19584 800A23E4 AFB90034 */  sw    $t9, 0x34($sp)
/* B19588 800A23E8 0C0346A2 */  jal   Matrix_NewMtx
/* B1958C 800A23EC 24060616 */   li    $a2, 1558
/* B19590 800A23F0 8FA30034 */  lw    $v1, 0x34($sp)
/* B19594 800A23F4 3C0DDE00 */  lui   $t5, 0xde00
/* B19598 800A23F8 AC620004 */  sw    $v0, 4($v1)
/* B1959C 800A23FC 8FAA0070 */  lw    $t2, 0x70($sp)
/* B195A0 800A2400 254C0008 */  addiu $t4, $t2, 8
/* B195A4 800A2404 AFAC0070 */  sw    $t4, 0x70($sp)
/* B195A8 800A2408 AD4D0000 */  sw    $t5, ($t2)
/* B195AC 800A240C 8FAE004C */  lw    $t6, 0x4c($sp)
/* B195B0 800A2410 AD4E0004 */  sw    $t6, 4($t2)
.L800A2414:
/* B195B4 800A2414 8FA20068 */  lw    $v0, 0x68($sp)
/* B195B8 800A2418 8FA40058 */  lw    $a0, 0x58($sp)
/* B195BC 800A241C 24050001 */  li    $a1, 1
/* B195C0 800A2420 10400008 */  beqz  $v0, .L800A2444
/* B195C4 800A2424 27A6004C */   addiu $a2, $sp, 0x4c
/* B195C8 800A2428 8FAB006C */  lw    $t3, 0x6c($sp)
/* B195CC 800A242C 27AF0070 */  addiu $t7, $sp, 0x70
/* B195D0 800A2430 AFAF0014 */  sw    $t7, 0x14($sp)
/* B195D4 800A2434 27A70038 */  addiu $a3, $sp, 0x38
/* B195D8 800A2438 0040F809 */  jalr  $v0
/* B195DC 800A243C AFAB0010 */  sw    $t3, 0x10($sp)
/* B195E0 800A2440 8FA20068 */  lw    $v0, 0x68($sp)
.L800A2444:
/* B195E4 800A2444 8FB90054 */  lw    $t9, 0x54($sp)
/* B195E8 800A2448 240100FF */  li    $at, 255
/* B195EC 800A244C 8FA40058 */  lw    $a0, 0x58($sp)
/* B195F0 800A2450 93250006 */  lbu   $a1, 6($t9)
/* B195F4 800A2454 8FA6005C */  lw    $a2, 0x5c($sp)
/* B195F8 800A2458 8FA70060 */  lw    $a3, 0x60($sp)
/* B195FC 800A245C 10A10009 */  beq   $a1, $at, .L800A2484
/* B19600 800A2460 8FA80064 */   lw    $t0, 0x64($sp)
/* B19604 800A2464 8FA9006C */  lw    $t1, 0x6c($sp)
/* B19608 800A2468 8FB80070 */  lw    $t8, 0x70($sp)
/* B1960C 800A246C AFA80010 */  sw    $t0, 0x10($sp)
/* B19610 800A2470 AFA20014 */  sw    $v0, 0x14($sp)
/* B19614 800A2474 AFA90018 */  sw    $t1, 0x18($sp)
/* B19618 800A2478 0C028811 */  jal   func_800A2044
/* B1961C 800A247C AFB8001C */   sw    $t8, 0x1c($sp)
/* B19620 800A2480 AFA20070 */  sw    $v0, 0x70($sp)
.L800A2484:
/* B19624 800A2484 0C034221 */  jal   Matrix_Pull
/* B19628 800A2488 00000000 */   nop
/* B1962C 800A248C 8FA20070 */  lw    $v0, 0x70($sp)
.L800A2490:
/* B19630 800A2490 8FBF0024 */  lw    $ra, 0x24($sp)
/* B19634 800A2494 27BD0058 */  addiu $sp, $sp, 0x58
/* B19638 800A2498 03E00008 */  jr    $ra
/* B1963C 800A249C 00000000 */   nop


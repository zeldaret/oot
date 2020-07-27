.rdata
glabel D_80144BD8
    .asciz "this"
    .balign 4

glabel D_80144BE0
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144BF0
    .asciz "glistpp"
    .balign 4

glabel D_80144BF8
    .asciz "../PreRender.c"
    .balign 4

glabel D_80144C08
    .asciz "glistp"
    .balign 4

glabel D_80144C10
    .asciz "../PreRender.c"
    .balign 4

.text
glabel func_800C213C
/* B392DC 800C213C 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B392E0 800C2140 AFBF0034 */  sw    $ra, 0x34($sp)
/* B392E4 800C2144 AFB70030 */  sw    $s7, 0x30($sp)
/* B392E8 800C2148 AFB6002C */  sw    $s6, 0x2c($sp)
/* B392EC 800C214C AFB50028 */  sw    $s5, 0x28($sp)
/* B392F0 800C2150 AFB40024 */  sw    $s4, 0x24($sp)
/* B392F4 800C2154 AFB30020 */  sw    $s3, 0x20($sp)
/* B392F8 800C2158 AFB2001C */  sw    $s2, 0x1c($sp)
/* B392FC 800C215C AFB10018 */  sw    $s1, 0x18($sp)
/* B39300 800C2160 AFB00014 */  sw    $s0, 0x14($sp)
/* B39304 800C2164 AFA50044 */  sw    $a1, 0x44($sp)
/* B39308 800C2168 8C8E0018 */  lw    $t6, 0x18($a0)
/* B3930C 800C216C 00809825 */  move  $s3, $a0
/* B39310 800C2170 3C048014 */  lui   $a0, %hi(D_80144BD8) # $a0, 0x8014
/* B39314 800C2174 11C000C6 */  beqz  $t6, .L800C2490
/* B39318 800C2178 24844BD8 */   addiu $a0, %lo(D_80144BD8) # addiu $a0, $a0, 0x4bd8
/* B3931C 800C217C 3C068014 */  lui   $a2, %hi(D_80144BE0) # $a2, 0x8014
/* B39320 800C2180 24C64BE0 */  addiu $a2, %lo(D_80144BE0) # addiu $a2, $a2, 0x4be0
/* B39324 800C2184 02602825 */  move  $a1, $s3
/* B39328 800C2188 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3932C 800C218C 24070233 */   li    $a3, 563
/* B39330 800C2190 3C048014 */  lui   $a0, %hi(D_80144BF0) # $a0, 0x8014
/* B39334 800C2194 3C068014 */  lui   $a2, %hi(D_80144BF8) # $a2, 0x8014
/* B39338 800C2198 24C64BF8 */  addiu $a2, %lo(D_80144BF8) # addiu $a2, $a2, 0x4bf8
/* B3933C 800C219C 24844BF0 */  addiu $a0, %lo(D_80144BF0) # addiu $a0, $a0, 0x4bf0
/* B39340 800C21A0 8FA50044 */  lw    $a1, 0x44($sp)
/* B39344 800C21A4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B39348 800C21A8 24070234 */   li    $a3, 564
/* B3934C 800C21AC 8FAF0044 */  lw    $t7, 0x44($sp)
/* B39350 800C21B0 3C048014 */  lui   $a0, %hi(D_80144C08) # $a0, 0x8014
/* B39354 800C21B4 3C068014 */  lui   $a2, %hi(D_80144C10) # $a2, 0x8014
/* B39358 800C21B8 8DE50000 */  lw    $a1, ($t7)
/* B3935C 800C21BC 24C64C10 */  addiu $a2, %lo(D_80144C10) # addiu $a2, $a2, 0x4c10
/* B39360 800C21C0 24844C08 */  addiu $a0, %lo(D_80144C08) # addiu $a0, $a0, 0x4c08
/* B39364 800C21C4 24070236 */  li    $a3, 566
/* B39368 800C21C8 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3936C 800C21CC AFA5003C */   sw    $a1, 0x3c($sp)
/* B39370 800C21D0 8FA5003C */  lw    $a1, 0x3c($sp)
/* B39374 800C21D4 3C17E700 */  lui   $s7, 0xe700
/* B39378 800C21D8 3C18FB00 */  lui   $t8, 0xfb00
/* B3937C 800C21DC 00A01025 */  move  $v0, $a1
/* B39380 800C21E0 AC570000 */  sw    $s7, ($v0)
/* B39384 800C21E4 AC400004 */  sw    $zero, 4($v0)
/* B39388 800C21E8 24A50008 */  addiu $a1, $a1, 8
/* B3938C 800C21EC 00A01025 */  move  $v0, $a1
/* B39390 800C21F0 2419FF20 */  li    $t9, -224
/* B39394 800C21F4 AC590004 */  sw    $t9, 4($v0)
/* B39398 800C21F8 AC580000 */  sw    $t8, ($v0)
/* B3939C 800C21FC 24A50008 */  addiu $a1, $a1, 8
/* B393A0 800C2200 00A01025 */  move  $v0, $a1
/* B393A4 800C2204 3C0EEF10 */  lui   $t6, (0xEF100CF0 >> 16) # lui $t6, 0xef10
/* B393A8 800C2208 3C0F0F0A */  lui   $t7, (0x0F0A100C >> 16) # lui $t7, 0xf0a
/* B393AC 800C220C 35EF100C */  ori   $t7, (0x0F0A100C & 0xFFFF) # ori $t7, $t7, 0x100c
/* B393B0 800C2210 35CE0CF0 */  ori   $t6, (0xEF100CF0 & 0xFFFF) # ori $t6, $t6, 0xcf0
/* B393B4 800C2214 AC4E0000 */  sw    $t6, ($v0)
/* B393B8 800C2218 AC4F0004 */  sw    $t7, 4($v0)
/* B393BC 800C221C 24A50008 */  addiu $a1, $a1, 8
/* B393C0 800C2220 00A01025 */  move  $v0, $a1
/* B393C4 800C2224 3C18FCFF */  lui   $t8, (0xFCFFE5FF >> 16) # lui $t8, 0xfcff
/* B393C8 800C2228 3C19FFFC */  lui   $t9, (0xFFFCFA38 >> 16) # lui $t9, 0xfffc
/* B393CC 800C222C 3739FA38 */  ori   $t9, (0xFFFCFA38 & 0xFFFF) # ori $t9, $t9, 0xfa38
/* B393D0 800C2230 3718E5FF */  ori   $t8, (0xFCFFE5FF & 0xFFFF) # ori $t8, $t8, 0xe5ff
/* B393D4 800C2234 AC580000 */  sw    $t8, ($v0)
/* B393D8 800C2238 AC590004 */  sw    $t9, 4($v0)
/* B393DC 800C223C 8E6D0004 */  lw    $t5, 4($s3)
/* B393E0 800C2240 24A50008 */  addiu $a1, $a1, 8
/* B393E4 800C2244 24110004 */  li    $s1, 4
/* B393E8 800C2248 19A0008B */  blez  $t5, .L800C2478
/* B393EC 800C224C 00002025 */   move  $a0, $zero
/* B393F0 800C2250 3C160100 */  lui   $s6, 0x100
/* B393F4 800C2254 3C15E600 */  lui   $s5, 0xe600
/* B393F8 800C2258 3C140700 */  lui   $s4, 0x700
.L800C225C:
/* B393FC 800C225C 8E630000 */  lw    $v1, ($s3)
/* B39400 800C2260 01B1082A */  slt   $at, $t5, $s1
/* B39404 800C2264 00A01025 */  move  $v0, $a1
/* B39408 800C2268 2463FFFF */  addiu $v1, $v1, -1
/* B3940C 800C226C 10200002 */  beqz  $at, .L800C2278
/* B39410 800C2270 0060F825 */   move  $ra, $v1
/* B39414 800C2274 01A08825 */  move  $s1, $t5
.L800C2278:
/* B39418 800C2278 306E0FFF */  andi  $t6, $v1, 0xfff
/* B3941C 800C227C 3C01FD10 */  lui   $at, 0xfd10
/* B39420 800C2280 01C17825 */  or    $t7, $t6, $at
/* B39424 800C2284 AC4F0000 */  sw    $t7, ($v0)
/* B39428 800C2288 8E780014 */  lw    $t8, 0x14($s3)
/* B3942C 800C228C 001F1840 */  sll   $v1, $ra, 1
/* B39430 800C2290 24630009 */  addiu $v1, $v1, 9
/* B39434 800C2294 000318C3 */  sra   $v1, $v1, 3
/* B39438 800C2298 24A50008 */  addiu $a1, $a1, 8
/* B3943C 800C229C AC580004 */  sw    $t8, 4($v0)
/* B39440 800C22A0 00A01025 */  move  $v0, $a1
/* B39444 800C22A4 306301FF */  andi  $v1, $v1, 0x1ff
/* B39448 800C22A8 00031A40 */  sll   $v1, $v1, 9
/* B3944C 800C22AC 3C01F510 */  lui   $at, 0xf510
/* B39450 800C22B0 00611825 */  or    $v1, $v1, $at
/* B39454 800C22B4 AC430000 */  sw    $v1, ($v0)
/* B39458 800C22B8 AC540004 */  sw    $s4, 4($v0)
/* B3945C 800C22BC 24A50008 */  addiu $a1, $a1, 8
/* B39460 800C22C0 00A01025 */  move  $v0, $a1
/* B39464 800C22C4 001F5080 */  sll   $t2, $ra, 2
/* B39468 800C22C8 00919021 */  addu  $s2, $a0, $s1
/* B3946C 800C22CC 2650FFFF */  addiu $s0, $s2, -1
/* B39470 800C22D0 314A0FFF */  andi  $t2, $t2, 0xfff
/* B39474 800C22D4 AC550000 */  sw    $s5, ($v0)
/* B39478 800C22D8 AC400004 */  sw    $zero, 4($v0)
/* B3947C 800C22DC 24A50008 */  addiu $a1, $a1, 8
/* B39480 800C22E0 00A01025 */  move  $v0, $a1
/* B39484 800C22E4 000A5300 */  sll   $t2, $t2, 0xc
/* B39488 800C22E8 00105880 */  sll   $t3, $s0, 2
/* B3948C 800C22EC 00046080 */  sll   $t4, $a0, 2
/* B39490 800C22F0 318C0FFF */  andi  $t4, $t4, 0xfff
/* B39494 800C22F4 316B0FFF */  andi  $t3, $t3, 0xfff
/* B39498 800C22F8 0154C825 */  or    $t9, $t2, $s4
/* B3949C 800C22FC 3C01F400 */  lui   $at, 0xf400
/* B394A0 800C2300 01814025 */  or    $t0, $t4, $at
/* B394A4 800C2304 032B4825 */  or    $t1, $t9, $t3
/* B394A8 800C2308 AC490004 */  sw    $t1, 4($v0)
/* B394AC 800C230C AC480000 */  sw    $t0, ($v0)
/* B394B0 800C2310 24A50008 */  addiu $a1, $a1, 8
/* B394B4 800C2314 00A01025 */  move  $v0, $a1
/* B394B8 800C2318 AC570000 */  sw    $s7, ($v0)
/* B394BC 800C231C AC400004 */  sw    $zero, 4($v0)
/* B394C0 800C2320 24A50008 */  addiu $a1, $a1, 8
/* B394C4 800C2324 00A01025 */  move  $v0, $a1
/* B394C8 800C2328 AC430000 */  sw    $v1, ($v0)
/* B394CC 800C232C AC400004 */  sw    $zero, 4($v0)
/* B394D0 800C2330 24A50008 */  addiu $a1, $a1, 8
/* B394D4 800C2334 00A01025 */  move  $v0, $a1
/* B394D8 800C2338 3C01F200 */  lui   $at, 0xf200
/* B394DC 800C233C 01813025 */  or    $a2, $t4, $at
/* B394E0 800C2340 014B7025 */  or    $t6, $t2, $t3
/* B394E4 800C2344 AC4E0004 */  sw    $t6, 4($v0)
/* B394E8 800C2348 AC460000 */  sw    $a2, ($v0)
/* B394EC 800C234C 8E6F0000 */  lw    $t7, ($s3)
/* B394F0 800C2350 24A50008 */  addiu $a1, $a1, 8
/* B394F4 800C2354 3C01FD88 */  lui   $at, 0xfd88
/* B394F8 800C2358 25F8FFFF */  addiu $t8, $t7, -1
/* B394FC 800C235C 33190FFF */  andi  $t9, $t8, 0xfff
/* B39500 800C2360 03217025 */  or    $t6, $t9, $at
/* B39504 800C2364 00A01025 */  move  $v0, $a1
/* B39508 800C2368 AC4E0000 */  sw    $t6, ($v0)
/* B3950C 800C236C 8E6F0018 */  lw    $t7, 0x18($s3)
/* B39510 800C2370 27E30008 */  addiu $v1, $ra, 8
/* B39514 800C2374 000318C3 */  sra   $v1, $v1, 3
/* B39518 800C2378 306301FF */  andi  $v1, $v1, 0x1ff
/* B3951C 800C237C 24A50008 */  addiu $a1, $a1, 8
/* B39520 800C2380 AC4F0004 */  sw    $t7, 4($v0)
/* B39524 800C2384 00A01025 */  move  $v0, $a1
/* B39528 800C2388 00031A40 */  sll   $v1, $v1, 9
/* B3952C 800C238C 3C01F588 */  lui   $at, 0xf588
/* B39530 800C2390 00611825 */  or    $v1, $v1, $at
/* B39534 800C2394 34630160 */  ori   $v1, $v1, 0x160
/* B39538 800C2398 AC430000 */  sw    $v1, ($v0)
/* B3953C 800C239C AC540004 */  sw    $s4, 4($v0)
/* B39540 800C23A0 24A50008 */  addiu $a1, $a1, 8
/* B39544 800C23A4 00A01025 */  move  $v0, $a1
/* B39548 800C23A8 AC550000 */  sw    $s5, ($v0)
/* B3954C 800C23AC AC400004 */  sw    $zero, 4($v0)
/* B39550 800C23B0 24A50008 */  addiu $a1, $a1, 8
/* B39554 800C23B4 00A01025 */  move  $v0, $a1
/* B39558 800C23B8 AC480000 */  sw    $t0, ($v0)
/* B3955C 800C23BC AC490004 */  sw    $t1, 4($v0)
/* B39560 800C23C0 24A50008 */  addiu $a1, $a1, 8
/* B39564 800C23C4 00A01025 */  move  $v0, $a1
/* B39568 800C23C8 AC570000 */  sw    $s7, ($v0)
/* B3956C 800C23CC AC400004 */  sw    $zero, 4($v0)
/* B39570 800C23D0 24A50008 */  addiu $a1, $a1, 8
/* B39574 800C23D4 00A01025 */  move  $v0, $a1
/* B39578 800C23D8 02CAC025 */  or    $t8, $s6, $t2
/* B3957C 800C23DC 030BC825 */  or    $t9, $t8, $t3
/* B39580 800C23E0 AC430000 */  sw    $v1, ($v0)
/* B39584 800C23E4 AC560004 */  sw    $s6, 4($v0)
/* B39588 800C23E8 24A50008 */  addiu $a1, $a1, 8
/* B3958C 800C23EC 27EE0001 */  addiu $t6, $ra, 1
/* B39590 800C23F0 00A01025 */  move  $v0, $a1
/* B39594 800C23F4 000E7880 */  sll   $t7, $t6, 2
/* B39598 800C23F8 AC590004 */  sw    $t9, 4($v0)
/* B3959C 800C23FC 31F80FFF */  andi  $t8, $t7, 0xfff
/* B395A0 800C2400 0018CB00 */  sll   $t9, $t8, 0xc
/* B395A4 800C2404 AC460000 */  sw    $a2, ($v0)
/* B395A8 800C2408 24A50008 */  addiu $a1, $a1, 8
/* B395AC 800C240C 260F0001 */  addiu $t7, $s0, 1
/* B395B0 800C2410 3C01E400 */  lui   $at, 0xe400
/* B395B4 800C2414 03217025 */  or    $t6, $t9, $at
/* B395B8 800C2418 000FC080 */  sll   $t8, $t7, 2
/* B395BC 800C241C 00A01025 */  move  $v0, $a1
/* B395C0 800C2420 33190FFF */  andi  $t9, $t8, 0xfff
/* B395C4 800C2424 01D97825 */  or    $t7, $t6, $t9
/* B395C8 800C2428 AC4F0000 */  sw    $t7, ($v0)
/* B395CC 800C242C AC4C0004 */  sw    $t4, 4($v0)
/* B395D0 800C2430 24A50008 */  addiu $a1, $a1, 8
/* B395D4 800C2434 00A01025 */  move  $v0, $a1
/* B395D8 800C2438 00047140 */  sll   $t6, $a0, 5
/* B395DC 800C243C 3C18E100 */  lui   $t8, 0xe100
/* B395E0 800C2440 AC580000 */  sw    $t8, ($v0)
/* B395E4 800C2444 31D9FFFF */  andi  $t9, $t6, 0xffff
/* B395E8 800C2448 AC590004 */  sw    $t9, 4($v0)
/* B395EC 800C244C 24A50008 */  addiu $a1, $a1, 8
/* B395F0 800C2450 00A01025 */  move  $v0, $a1
/* B395F4 800C2454 3C180400 */  lui   $t8, (0x04000400 >> 16) # lui $t8, 0x400
/* B395F8 800C2458 37180400 */  ori   $t8, (0x04000400 & 0xFFFF) # ori $t8, $t8, 0x400
/* B395FC 800C245C 3C0FF100 */  lui   $t7, 0xf100
/* B39600 800C2460 01B16823 */  subu  $t5, $t5, $s1
/* B39604 800C2464 AC4F0000 */  sw    $t7, ($v0)
/* B39608 800C2468 AC580004 */  sw    $t8, 4($v0)
/* B3960C 800C246C 24A50008 */  addiu $a1, $a1, 8
/* B39610 800C2470 1DA0FF7A */  bgtz  $t5, .L800C225C
/* B39614 800C2474 02402025 */   move  $a0, $s2
.L800C2478:
/* B39618 800C2478 00A01025 */  move  $v0, $a1
/* B3961C 800C247C AC570000 */  sw    $s7, ($v0)
/* B39620 800C2480 AC400004 */  sw    $zero, 4($v0)
/* B39624 800C2484 8FAE0044 */  lw    $t6, 0x44($sp)
/* B39628 800C2488 24A50008 */  addiu $a1, $a1, 8
/* B3962C 800C248C ADC50000 */  sw    $a1, ($t6)
.L800C2490:
/* B39630 800C2490 8FBF0034 */  lw    $ra, 0x34($sp)
/* B39634 800C2494 8FB00014 */  lw    $s0, 0x14($sp)
/* B39638 800C2498 8FB10018 */  lw    $s1, 0x18($sp)
/* B3963C 800C249C 8FB2001C */  lw    $s2, 0x1c($sp)
/* B39640 800C24A0 8FB30020 */  lw    $s3, 0x20($sp)
/* B39644 800C24A4 8FB40024 */  lw    $s4, 0x24($sp)
/* B39648 800C24A8 8FB50028 */  lw    $s5, 0x28($sp)
/* B3964C 800C24AC 8FB6002C */  lw    $s6, 0x2c($sp)
/* B39650 800C24B0 8FB70030 */  lw    $s7, 0x30($sp)
/* B39654 800C24B4 03E00008 */  jr    $ra
/* B39658 800C24B8 27BD0040 */   addiu $sp, $sp, 0x40


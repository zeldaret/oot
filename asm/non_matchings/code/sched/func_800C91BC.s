.rdata
glabel D_801460E0
    .asciz "sc->curRSPTask"
    .balign 4

glabel D_801460F0
    .asciz "../sched.c"
    .balign 4

glabel D_801460FC
    .asciz "RSP DONE %d %d"
    .balign 4

glabel D_8014610C
    .asciz "[YIELDED]\n"
    .balign 4

glabel D_80146118
    .asciz "[NOT YIELDED]\n"
    .balign 4

glabel D_80146128
    .asciz "SP sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4    

.text
glabel func_800C91BC
/* B4035C 800C91BC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* B40360 800C91C0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B40364 800C91C4 AFB00020 */  sw    $s0, 0x20($sp)
/* B40368 800C91C8 AFA00048 */  sw    $zero, 0x48($sp)
/* B4036C 800C91CC AFA00044 */  sw    $zero, 0x44($sp)
/* B40370 800C91D0 8C820230 */  lw    $v0, 0x230($a0)
/* B40374 800C91D4 00808025 */  move  $s0, $a0
/* B40378 800C91D8 3C048014 */  lui   $a0, %hi(D_801460E0) # $a0, 0x8014
/* B4037C 800C91DC 14400006 */  bnez  $v0, .L800C91F8
/* B40380 800C91E0 248460E0 */   addiu $a0, %lo(D_801460E0) # addiu $a0, $a0, 0x60e0
/* B40384 800C91E4 3C058014 */  lui   $a1, %hi(D_801460F0) # $a1, 0x8014
/* B40388 800C91E8 24A560F0 */  addiu $a1, %lo(D_801460F0) # addiu $a1, $a1, 0x60f0
/* B4038C 800C91EC 0C0007FC */  jal   __assert
/* B40390 800C91F0 24060333 */   li    $a2, 819
/* B40394 800C91F4 8E020230 */  lw    $v0, 0x230($s0)
.L800C91F8:
/* B40398 800C91F8 8C430010 */  lw    $v1, 0x10($v0)
/* B4039C 800C91FC 24010002 */  li    $at, 2
/* B403A0 800C9200 54610019 */  bnel  $v1, $at, .L800C9268
/* B403A4 800C9204 24010001 */   li    $at, 1
/* B403A8 800C9208 0C001A78 */  jal   osGetTime
/* B403AC 800C920C 00000000 */   nop   
/* B403B0 800C9210 3C0F8017 */  lui   $t7, %hi(D_8016A50C) # $t7, 0x8017
/* B403B4 800C9214 3C088017 */  lui   $t0, %hi(D_8016A560) # $t0, 0x8017
/* B403B8 800C9218 8DEFA50C */  lw    $t7, %lo(D_8016A50C)($t7)
/* B403BC 800C921C 2508A560 */  addiu $t0, %lo(D_8016A560) # addiu $t0, $t0, -0x5aa0
/* B403C0 800C9220 3C0E8017 */  lui   $t6, %hi(D_8016A508) # $t6, 0x8017
/* B403C4 800C9224 8DCEA508 */  lw    $t6, %lo(D_8016A508)($t6)
/* B403C8 800C9228 8D0A0000 */  lw    $t2, ($t0)
/* B403CC 800C922C 8D0B0004 */  lw    $t3, 4($t0)
/* B403D0 800C9230 006F082B */  sltu  $at, $v1, $t7
/* B403D4 800C9234 006FC823 */  subu  $t9, $v1, $t7
/* B403D8 800C9238 004EC023 */  subu  $t8, $v0, $t6
/* B403DC 800C923C 0301C023 */  subu  $t8, $t8, $at
/* B403E0 800C9240 032B6821 */  addu  $t5, $t9, $t3
/* B403E4 800C9244 01AB082B */  sltu  $at, $t5, $t3
/* B403E8 800C9248 00386021 */  addu  $t4, $at, $t8
/* B403EC 800C924C 3C018017 */  lui   $at, %hi(D_8016A560) # $at, 0x8017
/* B403F0 800C9250 018A6021 */  addu  $t4, $t4, $t2
/* B403F4 800C9254 AC2CA560 */  sw    $t4, %lo(D_8016A560)($at)
/* B403F8 800C9258 3C018017 */  lui   $at, %hi(D_8016A564) # $at, 0x8017
/* B403FC 800C925C 10000031 */  b     .L800C9324
/* B40400 800C9260 AC2DA564 */   sw    $t5, %lo(D_8016A564)($at)
/* B40404 800C9264 24010001 */  li    $at, 1
.L800C9268:
/* B40408 800C9268 14610018 */  bne   $v1, $at, .L800C92CC
/* B4040C 800C926C 00000000 */   nop   
/* B40410 800C9270 0C001A78 */  jal   osGetTime
/* B40414 800C9274 00000000 */   nop   
/* B40418 800C9278 3C0F8017 */  lui   $t7, %hi(D_8016A504) # $t7, 0x8017
/* B4041C 800C927C 3C188017 */  lui   $t8, %hi(D_8016A568) # $t8, 0x8017
/* B40420 800C9280 8DEFA504 */  lw    $t7, %lo(D_8016A504)($t7)
/* B40424 800C9284 2718A568 */  addiu $t8, %lo(D_8016A568) # addiu $t8, $t8, -0x5a98
/* B40428 800C9288 3C0E8017 */  lui   $t6, %hi(D_8016A500) # $t6, 0x8017
/* B4042C 800C928C 8DCEA500 */  lw    $t6, %lo(D_8016A500)($t6)
/* B40430 800C9290 8F0A0000 */  lw    $t2, ($t8)
/* B40434 800C9294 8F0B0004 */  lw    $t3, 4($t8)
/* B40438 800C9298 006F082B */  sltu  $at, $v1, $t7
/* B4043C 800C929C 006F4823 */  subu  $t1, $v1, $t7
/* B40440 800C92A0 004E4023 */  subu  $t0, $v0, $t6
/* B40444 800C92A4 01014023 */  subu  $t0, $t0, $at
/* B40448 800C92A8 012B6821 */  addu  $t5, $t1, $t3
/* B4044C 800C92AC 01AB082B */  sltu  $at, $t5, $t3
/* B40450 800C92B0 00286021 */  addu  $t4, $at, $t0
/* B40454 800C92B4 3C018017 */  lui   $at, %hi(D_8016A568) # $at, 0x8017
/* B40458 800C92B8 018A6021 */  addu  $t4, $t4, $t2
/* B4045C 800C92BC AC2CA568 */  sw    $t4, %lo(D_8016A568)($at)
/* B40460 800C92C0 3C018017 */  lui   $at, %hi(D_8016A56C) # $at, 0x8017
/* B40464 800C92C4 10000017 */  b     .L800C9324
/* B40468 800C92C8 AC2DA56C */   sw    $t5, %lo(D_8016A56C)($at)
.L800C92CC:
/* B4046C 800C92CC 0C001A78 */  jal   osGetTime
/* B40470 800C92D0 00000000 */   nop   
/* B40474 800C92D4 3C0F8017 */  lui   $t7, %hi(D_8016A514) # $t7, 0x8017
/* B40478 800C92D8 3C088017 */  lui   $t0, %hi(D_8016A570) # $t0, 0x8017
/* B4047C 800C92DC 8DEFA514 */  lw    $t7, %lo(D_8016A514)($t7)
/* B40480 800C92E0 2508A570 */  addiu $t0, %lo(D_8016A570) # addiu $t0, $t0, -0x5a90
/* B40484 800C92E4 3C0E8017 */  lui   $t6, %hi(D_8016A510) # $t6, 0x8017
/* B40488 800C92E8 8DCEA510 */  lw    $t6, %lo(D_8016A510)($t6)
/* B4048C 800C92EC 8D0A0000 */  lw    $t2, ($t0)
/* B40490 800C92F0 8D0B0004 */  lw    $t3, 4($t0)
/* B40494 800C92F4 006F082B */  sltu  $at, $v1, $t7
/* B40498 800C92F8 006FC823 */  subu  $t9, $v1, $t7
/* B4049C 800C92FC 004EC023 */  subu  $t8, $v0, $t6
/* B404A0 800C9300 0301C023 */  subu  $t8, $t8, $at
/* B404A4 800C9304 032B6821 */  addu  $t5, $t9, $t3
/* B404A8 800C9308 01AB082B */  sltu  $at, $t5, $t3
/* B404AC 800C930C 00386021 */  addu  $t4, $at, $t8
/* B404B0 800C9310 3C018017 */  lui   $at, %hi(D_8016A570) # $at, 0x8017
/* B404B4 800C9314 018A6021 */  addu  $t4, $t4, $t2
/* B404B8 800C9318 AC2CA570 */  sw    $t4, %lo(D_8016A570)($at)
/* B404BC 800C931C 3C018017 */  lui   $at, %hi(D_8016A574) # $at, 0x8017
/* B404C0 800C9320 AC2DA574 */  sw    $t5, %lo(D_8016A574)($at)
.L800C9324:
/* B404C4 800C9324 8E070230 */  lw    $a3, 0x230($s0)
/* B404C8 800C9328 3C098013 */  lui   $t1, %hi(D_8012D290) # $t1, 0x8013
/* B404CC 800C932C AE000230 */  sw    $zero, 0x230($s0)
/* B404D0 800C9330 2529D290 */  addiu $t1, %lo(D_8012D290) # addiu $t1, $t1, -0x2d70
/* B404D4 800C9334 8D2E0000 */  lw    $t6, ($t1)
/* B404D8 800C9338 24E40010 */  addiu $a0, $a3, 0x10
/* B404DC 800C933C 51C0000C */  beql  $t6, $zero, .L800C9370
/* B404E0 800C9340 8CEF0004 */   lw    $t7, 4($a3)
/* B404E4 800C9344 0C040F70 */  jal   osSpTaskYielded
/* B404E8 800C9348 AFA7004C */   sw    $a3, 0x4c($sp)
/* B404EC 800C934C 8FA7004C */  lw    $a3, 0x4c($sp)
/* B404F0 800C9350 3C048014 */  lui   $a0, %hi(D_801460FC) # $a0, 0x8014
/* B404F4 800C9354 248460FC */  addiu $a0, %lo(D_801460FC) # addiu $a0, $a0, 0x60fc
/* B404F8 800C9358 8CE50004 */  lw    $a1, 4($a3)
/* B404FC 800C935C 00403025 */  move  $a2, $v0
/* B40500 800C9360 0C00084C */  jal   osSyncPrintf
/* B40504 800C9364 30A50010 */   andi  $a1, $a1, 0x10
/* B40508 800C9368 8FA7004C */  lw    $a3, 0x4c($sp)
/* B4050C 800C936C 8CEF0004 */  lw    $t7, 4($a3)
.L800C9370:
/* B40510 800C9370 24E40010 */  addiu $a0, $a3, 0x10
/* B40514 800C9374 31E80010 */  andi  $t0, $t7, 0x10
/* B40518 800C9378 1100001A */  beqz  $t0, .L800C93E4
/* B4051C 800C937C 00000000 */   nop   
/* B40520 800C9380 0C040F70 */  jal   osSpTaskYielded
/* B40524 800C9384 AFA7004C */   sw    $a3, 0x4c($sp)
/* B40528 800C9388 10400016 */  beqz  $v0, .L800C93E4
/* B4052C 800C938C 8FA7004C */   lw    $a3, 0x4c($sp)
/* B40530 800C9390 3C188013 */  lui   $t8, %hi(D_8012D290) # $t8, 0x8013
/* B40534 800C9394 2718D290 */  addiu $t8, %lo(D_8012D290) # addiu $t8, $t8, -0x2d70
/* B40538 800C9398 8F190000 */  lw    $t9, ($t8)
/* B4053C 800C939C 3C048014 */  lui   $a0, %hi(D_8014610C) # $a0, 0x8014
/* B40540 800C93A0 2484610C */  addiu $a0, %lo(D_8014610C) # addiu $a0, $a0, 0x610c
/* B40544 800C93A4 53200005 */  beql  $t9, $zero, .L800C93BC
/* B40548 800C93A8 8CEA0004 */   lw    $t2, 4($a3)
/* B4054C 800C93AC 0C00084C */  jal   osSyncPrintf
/* B40550 800C93B0 AFA7004C */   sw    $a3, 0x4c($sp)
/* B40554 800C93B4 8FA7004C */  lw    $a3, 0x4c($sp)
/* B40558 800C93B8 8CEA0004 */  lw    $t2, 4($a3)
.L800C93BC:
/* B4055C 800C93BC 354B0020 */  ori   $t3, $t2, 0x20
/* B40560 800C93C0 ACEB0004 */  sw    $t3, 4($a3)
/* B40564 800C93C4 8E0C0224 */  lw    $t4, 0x224($s0)
/* B40568 800C93C8 ACEC0000 */  sw    $t4, ($a3)
/* B4056C 800C93CC 8E0D022C */  lw    $t5, 0x22c($s0)
/* B40570 800C93D0 AE070224 */  sw    $a3, 0x224($s0)
/* B40574 800C93D4 55A00015 */  bnezl $t5, .L800C942C
/* B40578 800C93D8 8E180230 */   lw    $t8, 0x230($s0)
/* B4057C 800C93DC 10000012 */  b     .L800C9428
/* B40580 800C93E0 AE07022C */   sw    $a3, 0x22c($s0)
.L800C93E4:
/* B40584 800C93E4 3C098013 */  lui   $t1, %hi(D_8012D290) # $t1, 0x8013
/* B40588 800C93E8 2529D290 */  addiu $t1, %lo(D_8012D290) # addiu $t1, $t1, -0x2d70
/* B4058C 800C93EC 8D2E0000 */  lw    $t6, ($t1)
/* B40590 800C93F0 3C048014 */  lui   $a0, %hi(D_80146118) # $a0, 0x8014
/* B40594 800C93F4 24846118 */  addiu $a0, %lo(D_80146118) # addiu $a0, $a0, 0x6118
/* B40598 800C93F8 51C00005 */  beql  $t6, $zero, .L800C9410
/* B4059C 800C93FC 8CEF0004 */   lw    $t7, 4($a3)
/* B405A0 800C9400 0C00084C */  jal   osSyncPrintf
/* B405A4 800C9404 AFA7004C */   sw    $a3, 0x4c($sp)
/* B405A8 800C9408 8FA7004C */  lw    $a3, 0x4c($sp)
/* B405AC 800C940C 8CEF0004 */  lw    $t7, 4($a3)
.L800C9410:
/* B405B0 800C9410 2401FFFD */  li    $at, -3
/* B405B4 800C9414 02002025 */  move  $a0, $s0
/* B405B8 800C9418 01E14024 */  and   $t0, $t7, $at
/* B405BC 800C941C ACE80004 */  sw    $t0, 4($a3)
/* B405C0 800C9420 0C032310 */  jal   func_800C8C40
/* B405C4 800C9424 00E02825 */   move  $a1, $a3
.L800C9428:
/* B405C8 800C9428 8E180230 */  lw    $t8, 0x230($s0)
.L800C942C:
/* B405CC 800C942C 8E0B0234 */  lw    $t3, 0x234($s0)
/* B405D0 800C9430 02002025 */  move  $a0, $s0
/* B405D4 800C9434 2F190001 */  sltiu $t9, $t8, 1
/* B405D8 800C9438 00195040 */  sll   $t2, $t9, 1
/* B405DC 800C943C 2D6C0001 */  sltiu $t4, $t3, 1
/* B405E0 800C9440 014C3825 */  or    $a3, $t2, $t4
/* B405E4 800C9444 AFA70040 */  sw    $a3, 0x40($sp)
/* B405E8 800C9448 27A50048 */  addiu $a1, $sp, 0x48
/* B405EC 800C944C 0C0322A5 */  jal   func_800C8A94
/* B405F0 800C9450 27A60044 */   addiu $a2, $sp, 0x44
/* B405F4 800C9454 8FAD0040 */  lw    $t5, 0x40($sp)
/* B405F8 800C9458 02002025 */  move  $a0, $s0
/* B405FC 800C945C 8FA50048 */  lw    $a1, 0x48($sp)
/* B40600 800C9460 104D0003 */  beq   $v0, $t5, .L800C9470
/* B40604 800C9464 00000000 */   nop   
/* B40608 800C9468 0C03232E */  jal   func_800C8CB8
/* B4060C 800C946C 8FA60044 */   lw    $a2, 0x44($sp)
.L800C9470:
/* B40610 800C9470 3C098013 */  lui   $t1, %hi(D_8012D290) # $t1, 0x8013
/* B40614 800C9474 2529D290 */  addiu $t1, %lo(D_8012D290) # addiu $t1, $t1, -0x2d70
/* B40618 800C9478 8D2E0000 */  lw    $t6, ($t1)
/* B4061C 800C947C 3C048014 */  lui   $a0, %hi(D_80146128) # $a0, 0x8014
/* B40620 800C9480 24846128 */  addiu $a0, %lo(D_80146128) # addiu $a0, $a0, 0x6128
/* B40624 800C9484 11C00006 */  beqz  $t6, .L800C94A0
/* B40628 800C9488 02002825 */   move  $a1, $s0
/* B4062C 800C948C 8FAF0040 */  lw    $t7, 0x40($sp)
/* B40630 800C9490 8FA60048 */  lw    $a2, 0x48($sp)
/* B40634 800C9494 8FA70044 */  lw    $a3, 0x44($sp)
/* B40638 800C9498 0C00084C */  jal   osSyncPrintf
/* B4063C 800C949C AFAF0010 */   sw    $t7, 0x10($sp)
.L800C94A0:
/* B40640 800C94A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* B40644 800C94A4 8FB00020 */  lw    $s0, 0x20($sp)
/* B40648 800C94A8 27BD0050 */  addiu $sp, $sp, 0x50
/* B4064C 800C94AC 03E00008 */  jr    $ra
/* B40650 800C94B0 00000000 */   nop   


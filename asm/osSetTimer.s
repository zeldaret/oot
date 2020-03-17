.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osSetTimer
/* B7D480 801062E0 27BDFFC8 */  addiu $sp, $sp, -0x38
/* B7D484 801062E4 AFA40038 */  sw    $a0, 0x38($sp)
/* B7D488 801062E8 8FAE0038 */  lw    $t6, 0x38($sp)
/* B7D48C 801062EC AFBF0014 */  sw    $ra, 0x14($sp)
/* B7D490 801062F0 AFA60040 */  sw    $a2, 0x40($sp)
/* B7D494 801062F4 AFA70044 */  sw    $a3, 0x44($sp)
/* B7D498 801062F8 ADC00000 */  sw    $zero, ($t6)
/* B7D49C 801062FC 8FAF0038 */  lw    $t7, 0x38($sp)
/* B7D4A0 80106300 ADE00004 */  sw    $zero, 4($t7)
/* B7D4A4 80106304 8FA80038 */  lw    $t0, 0x38($sp)
/* B7D4A8 80106308 8FB9004C */  lw    $t9, 0x4c($sp)
/* B7D4AC 8010630C 8FB80048 */  lw    $t8, 0x48($sp)
/* B7D4B0 80106310 AD19000C */  sw    $t9, 0xc($t0)
/* B7D4B4 80106314 AD180008 */  sw    $t8, 8($t0)
/* B7D4B8 80106318 8FAA0040 */  lw    $t2, 0x40($sp)
/* B7D4BC 8010631C 8FAB0044 */  lw    $t3, 0x44($sp)
/* B7D4C0 80106320 15400003 */  bnez  $t2, .L80106330
/* B7D4C4 80106324 00000000 */   nop   
/* B7D4C8 80106328 11600005 */  beqz  $t3, .L80106340
/* B7D4CC 8010632C 00000000 */   nop   
.L80106330:
/* B7D4D0 80106330 8FA90038 */  lw    $t1, 0x38($sp)
/* B7D4D4 80106334 AD2A0010 */  sw    $t2, 0x10($t1)
/* B7D4D8 80106338 10000006 */  b     .L80106354
/* B7D4DC 8010633C AD2B0014 */   sw    $t3, 0x14($t1)
.L80106340:
/* B7D4E0 80106340 8FAE0038 */  lw    $t6, 0x38($sp)
/* B7D4E4 80106344 8FAC0048 */  lw    $t4, 0x48($sp)
/* B7D4E8 80106348 8FAD004C */  lw    $t5, 0x4c($sp)
/* B7D4EC 8010634C ADCC0010 */  sw    $t4, 0x10($t6)
/* B7D4F0 80106350 ADCD0014 */  sw    $t5, 0x14($t6)
.L80106354:
/* B7D4F4 80106354 8FAF0050 */  lw    $t7, 0x50($sp)
/* B7D4F8 80106358 8FB80038 */  lw    $t8, 0x38($sp)
/* B7D4FC 8010635C AF0F0018 */  sw    $t7, 0x18($t8)
/* B7D500 80106360 8FA80038 */  lw    $t0, 0x38($sp)
/* B7D504 80106364 8FB90054 */  lw    $t9, 0x54($sp)
/* B7D508 80106368 0C001CA0 */  jal   __osDisableInt
/* B7D50C 8010636C AD19001C */   sw    $t9, 0x1c($t0)
/* B7D510 80106370 3C0A8001 */  lui   $t2, %hi(__osTimerList) # $t2, 0x8001
/* B7D514 80106374 8D4AADF0 */  lw    $t2, %lo(__osTimerList)($t2)
/* B7D518 80106378 AFA20020 */  sw    $v0, 0x20($sp)
/* B7D51C 8010637C 8D4B0000 */  lw    $t3, ($t2)
/* B7D520 80106380 116A0028 */  beq   $t3, $t2, .L80106424
/* B7D524 80106384 00000000 */   nop   
/* B7D528 80106388 3C098001 */  lui   $t1, %hi(__osTimerList) # $t1, 0x8001
/* B7D52C 8010638C 8D29ADF0 */  lw    $t1, %lo(__osTimerList)($t1)
/* B7D530 80106390 8D2C0000 */  lw    $t4, ($t1)
/* B7D534 80106394 0C001BA8 */  jal   osGetCount
/* B7D538 80106398 AFAC002C */   sw    $t4, 0x2c($sp)
/* B7D53C 8010639C AFA20028 */  sw    $v0, 0x28($sp)
/* B7D540 801063A0 3C0E8001 */  lui   $t6, %hi(__osTimerCounter) # $t6, 0x8001
/* B7D544 801063A4 8DCE5AF0 */  lw    $t6, %lo(__osTimerCounter)($t6)
/* B7D548 801063A8 8FAD0028 */  lw    $t5, 0x28($sp)
/* B7D54C 801063AC 8FA8002C */  lw    $t0, 0x2c($sp)
/* B7D550 801063B0 24180000 */  li    $t8, 0
/* B7D554 801063B4 01AE7823 */  subu  $t7, $t5, $t6
/* B7D558 801063B8 AFAF0024 */  sw    $t7, 0x24($sp)
/* B7D55C 801063BC 8D0A0010 */  lw    $t2, 0x10($t0)
/* B7D560 801063C0 01E0C825 */  move  $t9, $t7
/* B7D564 801063C4 8D0B0014 */  lw    $t3, 0x14($t0)
/* B7D568 801063C8 0158082B */  sltu  $at, $t2, $t8
/* B7D56C 801063CC 14200010 */  bnez  $at, .L80106410
/* B7D570 801063D0 030A082B */   sltu  $at, $t8, $t2
/* B7D574 801063D4 14200003 */  bnez  $at, .L801063E4
/* B7D578 801063D8 032B082B */   sltu  $at, $t9, $t3
/* B7D57C 801063DC 1020000C */  beqz  $at, .L80106410
/* B7D580 801063E0 00000000 */   nop   
.L801063E4:
/* B7D584 801063E4 25090010 */  addiu $t1, $t0, 0x10
/* B7D588 801063E8 AFA9001C */  sw    $t1, 0x1c($sp)
/* B7D58C 801063EC 8D0D0014 */  lw    $t5, 0x14($t0)
/* B7D590 801063F0 8D0C0010 */  lw    $t4, 0x10($t0)
/* B7D594 801063F4 01B9082B */  sltu  $at, $t5, $t9
/* B7D598 801063F8 01987023 */  subu  $t6, $t4, $t8
/* B7D59C 801063FC 01C17023 */  subu  $t6, $t6, $at
/* B7D5A0 80106400 01B97823 */  subu  $t7, $t5, $t9
/* B7D5A4 80106404 AD0F0014 */  sw    $t7, 0x14($t0)
/* B7D5A8 80106408 10000006 */  b     .L80106424
/* B7D5AC 8010640C AD0E0010 */   sw    $t6, 0x10($t0)
.L80106410:
/* B7D5B0 80106410 8FA9002C */  lw    $t1, 0x2c($sp)
/* B7D5B4 80106414 240A0000 */  li    $t2, 0
/* B7D5B8 80106418 240B0001 */  li    $t3, 1
/* B7D5BC 8010641C AD2B0014 */  sw    $t3, 0x14($t1)
/* B7D5C0 80106420 AD2A0010 */  sw    $t2, 0x10($t1)
.L80106424:
/* B7D5C4 80106424 0C001B45 */  jal   __osInsertTimer
/* B7D5C8 80106428 8FA40038 */   lw    $a0, 0x38($sp)
/* B7D5CC 8010642C 3C0C8001 */  lui   $t4, %hi(__osTimerList) # $t4, 0x8001
/* B7D5D0 80106430 8D8CADF0 */  lw    $t4, %lo(__osTimerList)($t4)
/* B7D5D4 80106434 AFA20030 */  sw    $v0, 0x30($sp)
/* B7D5D8 80106438 AFA30034 */  sw    $v1, 0x34($sp)
/* B7D5DC 8010643C 8D8D0000 */  lw    $t5, ($t4)
/* B7D5E0 80106440 8DA40010 */  lw    $a0, 0x10($t5)
/* B7D5E4 80106444 0C001B1D */  jal   __osSetTimerIntr
/* B7D5E8 80106448 8DA50014 */   lw    $a1, 0x14($t5)
/* B7D5EC 8010644C 0C001CBC */  jal   __osRestoreInt
/* B7D5F0 80106450 8FA40020 */   lw    $a0, 0x20($sp)
/* B7D5F4 80106454 8FBF0014 */  lw    $ra, 0x14($sp)
/* B7D5F8 80106458 27BD0038 */  addiu $sp, $sp, 0x38
/* B7D5FC 8010645C 00001025 */  move  $v0, $zero
/* B7D600 80106460 03E00008 */  jr    $ra
/* B7D604 80106464 00000000 */   nop   

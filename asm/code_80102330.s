.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel osStopTimer
/* B794D0 80102330 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B794D4 80102334 AFA40030 */  sw    $a0, 0x30($sp)
/* B794D8 80102338 8FAE0030 */  lw    $t6, 0x30($sp)
/* B794DC 8010233C AFBF001C */  sw    $ra, 0x1c($sp)
/* B794E0 80102340 AFB00018 */  sw    $s0, 0x18($sp)
/* B794E4 80102344 8DCF0000 */  lw    $t7, ($t6)
/* B794E8 80102348 15E00003 */  bnez  $t7, .L80102358
/* B794EC 8010234C 00000000 */   nop   
/* B794F0 80102350 1000002C */  b     .L80102404
/* B794F4 80102354 2402FFFF */   li    $v0, -1
.L80102358:
/* B794F8 80102358 0C001CA0 */  jal   __osDisableInt
/* B794FC 8010235C 00000000 */   nop   
/* B79500 80102360 8FB80030 */  lw    $t8, 0x30($sp)
/* B79504 80102364 3C088001 */  lui   $t0, %hi(__osTimerList) # $t0, 0x8001
/* B79508 80102368 8D08ADF0 */  lw    $t0, %lo(__osTimerList)($t0)
/* B7950C 8010236C 8F190000 */  lw    $t9, ($t8)
/* B79510 80102370 00408025 */  move  $s0, $v0
/* B79514 80102374 1328000D */  beq   $t9, $t0, .L801023AC
/* B79518 80102378 AFB90028 */   sw    $t9, 0x28($sp)
/* B7951C 8010237C 27290010 */  addiu $t1, $t9, 0x10
/* B79520 80102380 AFA90024 */  sw    $t1, 0x24($sp)
/* B79524 80102384 8D2B0004 */  lw    $t3, 4($t1)
/* B79528 80102388 8F0D0014 */  lw    $t5, 0x14($t8)
/* B7952C 8010238C 8D2A0000 */  lw    $t2, ($t1)
/* B79530 80102390 8F0C0010 */  lw    $t4, 0x10($t8)
/* B79534 80102394 016D7821 */  addu  $t7, $t3, $t5
/* B79538 80102398 01ED082B */  sltu  $at, $t7, $t5
/* B7953C 8010239C 002A7021 */  addu  $t6, $at, $t2
/* B79540 801023A0 01CC7021 */  addu  $t6, $t6, $t4
/* B79544 801023A4 AD2E0000 */  sw    $t6, ($t1)
/* B79548 801023A8 AD2F0004 */  sw    $t7, 4($t1)
.L801023AC:
/* B7954C 801023AC 8FA80030 */  lw    $t0, 0x30($sp)
/* B79550 801023B0 3C0F8001 */  lui   $t7, %hi(__osTimerList) # $t7, 0x8001
/* B79554 801023B4 8D190000 */  lw    $t9, ($t0)
/* B79558 801023B8 8D180004 */  lw    $t8, 4($t0)
/* B7955C 801023BC AF190000 */  sw    $t9, ($t8)
/* B79560 801023C0 8FAA0030 */  lw    $t2, 0x30($sp)
/* B79564 801023C4 8D4B0004 */  lw    $t3, 4($t2)
/* B79568 801023C8 8D4C0000 */  lw    $t4, ($t2)
/* B7956C 801023CC AD8B0004 */  sw    $t3, 4($t4)
/* B79570 801023D0 8FAD0030 */  lw    $t5, 0x30($sp)
/* B79574 801023D4 ADA00000 */  sw    $zero, ($t5)
/* B79578 801023D8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B7957C 801023DC ADC00004 */  sw    $zero, 4($t6)
/* B79580 801023E0 8DEFADF0 */  lw    $t7, %lo(__osTimerList)($t7)
/* B79584 801023E4 8DE90000 */  lw    $t1, ($t7)
/* B79588 801023E8 152F0003 */  bne   $t1, $t7, .L801023F8
/* B7958C 801023EC 00000000 */   nop   
/* B79590 801023F0 0C001BC0 */  jal   __osSetCompare
/* B79594 801023F4 00002025 */   move  $a0, $zero
.L801023F8:
/* B79598 801023F8 0C001CBC */  jal   __osRestoreInt
/* B7959C 801023FC 02002025 */   move  $a0, $s0
/* B795A0 80102400 00001025 */  move  $v0, $zero
.L80102404:
/* B795A4 80102404 8FBF001C */  lw    $ra, 0x1c($sp)
/* B795A8 80102408 8FB00018 */  lw    $s0, 0x18($sp)
/* B795AC 8010240C 27BD0030 */  addiu $sp, $sp, 0x30
/* B795B0 80102410 03E00008 */  jr    $ra
/* B795B4 80102414 00000000 */   nop   

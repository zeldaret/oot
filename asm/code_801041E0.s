.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purpose registers

.section .text

.balign 16

glabel osPfsDeleteFile
/* B7B380 801041E0 27BDFE90 */  addiu $sp, $sp, -0x170
/* B7B384 801041E4 AFB20024 */  sw    $s2, 0x24($sp)
/* B7B388 801041E8 AFA50174 */  sw    $a1, 0x174($sp)
/* B7B38C 801041EC 30AEFFFF */  andi  $t6, $a1, 0xffff
/* B7B390 801041F0 01C02825 */  move  $a1, $t6
/* B7B394 801041F4 00809025 */  move  $s2, $a0
/* B7B398 801041F8 AFBF0034 */  sw    $ra, 0x34($sp)
/* B7B39C 801041FC AFB50030 */  sw    $s5, 0x30($sp)
/* B7B3A0 80104200 AFB4002C */  sw    $s4, 0x2c($sp)
/* B7B3A4 80104204 AFB30028 */  sw    $s3, 0x28($sp)
/* B7B3A8 80104208 AFB10020 */  sw    $s1, 0x20($sp)
/* B7B3AC 8010420C 11C00003 */  beqz  $t6, .L8010421C
/* B7B3B0 80104210 AFB0001C */   sw    $s0, 0x1c($sp)
/* B7B3B4 80104214 14C00003 */  bnez  $a2, .L80104224
/* B7B3B8 80104218 02402025 */   move  $a0, $s2
.L8010421C:
/* B7B3BC 8010421C 1000005D */  b     .L80104394
/* B7B3C0 80104220 24020005 */   li    $v0, 5
.L80104224:
/* B7B3C4 80104224 8FAF0180 */  lw    $t7, 0x180($sp)
/* B7B3C8 80104228 27B8016C */  addiu $t8, $sp, 0x16c
/* B7B3CC 8010422C AFB80014 */  sw    $t8, 0x14($sp)
/* B7B3D0 80104230 0C040C04 */  jal   osPfsFindFile
/* B7B3D4 80104234 AFAF0010 */   sw    $t7, 0x10($sp)
/* B7B3D8 80104238 50400004 */  beql  $v0, $zero, .L8010424C
/* B7B3DC 8010423C 92590065 */   lbu   $t9, 0x65($s2)
/* B7B3E0 80104240 10000055 */  b     .L80104398
/* B7B3E4 80104244 8FBF0034 */   lw    $ra, 0x34($sp)
/* B7B3E8 80104248 92590065 */  lbu   $t9, 0x65($s2)
.L8010424C:
/* B7B3EC 8010424C 02402025 */  move  $a0, $s2
/* B7B3F0 80104250 53200008 */  beql  $t9, $zero, .L80104274
/* B7B3F4 80104254 8E48005C */   lw    $t0, 0x5c($s2)
/* B7B3F8 80104258 0C041320 */  jal   func_80104C80
/* B7B3FC 8010425C 00002825 */   move  $a1, $zero
/* B7B400 80104260 50400004 */  beql  $v0, $zero, .L80104274
/* B7B404 80104264 8E48005C */   lw    $t0, 0x5c($s2)
/* B7B408 80104268 1000004B */  b     .L80104398
/* B7B40C 8010426C 8FBF0034 */   lw    $ra, 0x34($sp)
/* B7B410 80104270 8E48005C */  lw    $t0, 0x5c($s2)
.L80104274:
/* B7B414 80104274 8FA9016C */  lw    $t1, 0x16c($sp)
/* B7B418 80104278 8E440004 */  lw    $a0, 4($s2)
/* B7B41C 8010427C 8E450008 */  lw    $a1, 8($s2)
/* B7B420 80104280 01093021 */  addu  $a2, $t0, $t1
/* B7B424 80104284 30CAFFFF */  andi  $t2, $a2, 0xffff
/* B7B428 80104288 01403025 */  move  $a2, $t2
/* B7B42C 8010428C 0C0417D0 */  jal   osReadMempak
/* B7B430 80104290 27A70048 */   addiu $a3, $sp, 0x48
/* B7B434 80104294 10400003 */  beqz  $v0, .L801042A4
/* B7B438 80104298 93B0004E */   lbu   $s0, 0x4e($sp)
/* B7B43C 8010429C 1000003E */  b     .L80104398
/* B7B440 801042A0 8FBF0034 */   lw    $ra, 0x34($sp)
.L801042A4:
/* B7B444 801042A4 92420064 */  lbu   $v0, 0x64($s2)
/* B7B448 801042A8 93B3004F */  lbu   $s3, 0x4f($sp)
/* B7B44C 801042AC 24150001 */  li    $s5, 1
/* B7B450 801042B0 0202082A */  slt   $at, $s0, $v0
/* B7B454 801042B4 10200026 */  beqz  $at, .L80104350
/* B7B458 801042B8 27B40044 */   addiu $s4, $sp, 0x44
/* B7B45C 801042BC 27B10068 */  addiu $s1, $sp, 0x68
/* B7B460 801042C0 02402025 */  move  $a0, $s2
.L801042C4:
/* B7B464 801042C4 02202825 */  move  $a1, $s1
/* B7B468 801042C8 00003025 */  move  $a2, $zero
/* B7B46C 801042CC 0C040B31 */  jal   func_80102CC4
/* B7B470 801042D0 320700FF */   andi  $a3, $s0, 0xff
/* B7B474 801042D4 10400003 */  beqz  $v0, .L801042E4
/* B7B478 801042D8 02402025 */   move  $a0, $s2
/* B7B47C 801042DC 1000002E */  b     .L80104398
/* B7B480 801042E0 8FBF0034 */   lw    $ra, 0x34($sp)
.L801042E4:
/* B7B484 801042E4 02202825 */  move  $a1, $s1
/* B7B488 801042E8 326600FF */  andi  $a2, $s3, 0xff
/* B7B48C 801042EC 320700FF */  andi  $a3, $s0, 0xff
/* B7B490 801042F0 0C0410EE */  jal   func_801043B8
/* B7B494 801042F4 AFB40010 */   sw    $s4, 0x10($sp)
/* B7B498 801042F8 10400003 */  beqz  $v0, .L80104308
/* B7B49C 801042FC 02402025 */   move  $a0, $s2
/* B7B4A0 80104300 10000025 */  b     .L80104398
/* B7B4A4 80104304 8FBF0034 */   lw    $ra, 0x34($sp)
.L80104308:
/* B7B4A8 80104308 02202825 */  move  $a1, $s1
/* B7B4AC 8010430C 24060001 */  li    $a2, 1
/* B7B4B0 80104310 0C040B31 */  jal   func_80102CC4
/* B7B4B4 80104314 320700FF */   andi  $a3, $s0, 0xff
/* B7B4B8 80104318 10400003 */  beqz  $v0, .L80104328
/* B7B4BC 8010431C 97AC0044 */   lhu   $t4, 0x44($sp)
/* B7B4C0 80104320 1000001D */  b     .L80104398
/* B7B4C4 80104324 8FBF0034 */   lw    $ra, 0x34($sp)
.L80104328:
/* B7B4C8 80104328 56AC0004 */  bnel  $s5, $t4, .L8010433C
/* B7B4CC 8010432C 92420064 */   lbu   $v0, 0x64($s2)
/* B7B4D0 80104330 10000007 */  b     .L80104350
/* B7B4D4 80104334 92420064 */   lbu   $v0, 0x64($s2)
/* B7B4D8 80104338 92420064 */  lbu   $v0, 0x64($s2)
.L8010433C:
/* B7B4DC 8010433C 93B00044 */  lbu   $s0, 0x44($sp)
/* B7B4E0 80104340 93B30045 */  lbu   $s3, 0x45($sp)
/* B7B4E4 80104344 0202082A */  slt   $at, $s0, $v0
/* B7B4E8 80104348 5420FFDE */  bnezl $at, .L801042C4
/* B7B4EC 8010434C 02402025 */   move  $a0, $s2
.L80104350:
/* B7B4F0 80104350 0202082A */  slt   $at, $s0, $v0
/* B7B4F4 80104354 14200003 */  bnez  $at, .L80104364
/* B7B4F8 80104358 27A40048 */   addiu $a0, $sp, 0x48
/* B7B4FC 8010435C 1000000D */  b     .L80104394
/* B7B500 80104360 24020003 */   li    $v0, 3
.L80104364:
/* B7B504 80104364 0C001114 */  jal   bzero
/* B7B508 80104368 24050020 */   li    $a1, 32
/* B7B50C 8010436C 8E4D005C */  lw    $t5, 0x5c($s2)
/* B7B510 80104370 8FAE016C */  lw    $t6, 0x16c($sp)
/* B7B514 80104374 8E440004 */  lw    $a0, 4($s2)
/* B7B518 80104378 8E450008 */  lw    $a1, 8($s2)
/* B7B51C 8010437C 01AE3021 */  addu  $a2, $t5, $t6
/* B7B520 80104380 30CFFFFF */  andi  $t7, $a2, 0xffff
/* B7B524 80104384 01E03025 */  move  $a2, $t7
/* B7B528 80104388 AFA00010 */  sw    $zero, 0x10($sp)
/* B7B52C 8010438C 0C04173C */  jal   func_80105CF0
/* B7B530 80104390 27A70048 */   addiu $a3, $sp, 0x48
.L80104394:
/* B7B534 80104394 8FBF0034 */  lw    $ra, 0x34($sp)
.L80104398:
/* B7B538 80104398 8FB0001C */  lw    $s0, 0x1c($sp)
/* B7B53C 8010439C 8FB10020 */  lw    $s1, 0x20($sp)
/* B7B540 801043A0 8FB20024 */  lw    $s2, 0x24($sp)
/* B7B544 801043A4 8FB30028 */  lw    $s3, 0x28($sp)
/* B7B548 801043A8 8FB4002C */  lw    $s4, 0x2c($sp)
/* B7B54C 801043AC 8FB50030 */  lw    $s5, 0x30($sp)
/* B7B550 801043B0 03E00008 */  jr    $ra
/* B7B554 801043B4 27BD0170 */   addiu $sp, $sp, 0x170

glabel func_801043B8
/* B7B558 801043B8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B7B55C 801043BC 30E200FF */  andi  $v0, $a3, 0xff
/* B7B560 801043C0 30CE00FF */  andi  $t6, $a2, 0xff
/* B7B564 801043C4 0002C200 */  sll   $t8, $v0, 8
/* B7B568 801043C8 AFA60018 */  sw    $a2, 0x18($sp)
/* B7B56C 801043CC AFA7001C */  sw    $a3, 0x1c($sp)
/* B7B570 801043D0 030EC821 */  addu  $t9, $t8, $t6
/* B7B574 801043D4 A7B9000C */  sh    $t9, 0xc($sp)
/* B7B578 801043D8 24070003 */  li    $a3, 3
/* B7B57C 801043DC 27A6000C */  addiu $a2, $sp, 0xc
/* B7B580 801043E0 27A30008 */  addiu $v1, $sp, 8
/* B7B584 801043E4 94C10000 */  lhu   $at, ($a2)
.L801043E8:
/* B7B588 801043E8 A4610000 */  sh    $at, ($v1)
/* B7B58C 801043EC 93AB000D */  lbu   $t3, 0xd($sp)
/* B7B590 801043F0 000B6040 */  sll   $t4, $t3, 1
/* B7B594 801043F4 00AC6821 */  addu  $t5, $a1, $t4
/* B7B598 801043F8 95A10000 */  lhu   $at, ($t5)
/* B7B59C 801043FC A4C10000 */  sh    $at, ($a2)
/* B7B5A0 80104400 93B90009 */  lbu   $t9, 9($sp)
/* B7B5A4 80104404 00194840 */  sll   $t1, $t9, 1
/* B7B5A8 80104408 00A94021 */  addu  $t0, $a1, $t1
/* B7B5AC 8010440C A5070000 */  sh    $a3, ($t0)
/* B7B5B0 80104410 8C8B0060 */  lw    $t3, 0x60($a0)
/* B7B5B4 80104414 97AA000C */  lhu   $t2, 0xc($sp)
/* B7B5B8 80104418 93AC000C */  lbu   $t4, 0xc($sp)
/* B7B5BC 8010441C 014B082A */  slt   $at, $t2, $t3
/* B7B5C0 80104420 54200004 */  bnezl $at, .L80104434
/* B7B5C4 80104424 8FAF0020 */   lw    $t7, 0x20($sp)
/* B7B5C8 80104428 504CFFEF */  beql  $v0, $t4, .L801043E8
/* B7B5CC 8010442C 94C10000 */   lhu   $at, ($a2)
/* B7B5D0 80104430 8FAF0020 */  lw    $t7, 0x20($sp)
.L80104434:
/* B7B5D4 80104434 94C10000 */  lhu   $at, ($a2)
/* B7B5D8 80104438 27BD0010 */  addiu $sp, $sp, 0x10
/* B7B5DC 8010443C 00001025 */  move  $v0, $zero
/* B7B5E0 80104440 03E00008 */  jr    $ra
/* B7B5E4 80104444 A5E10000 */   sh    $at, ($t7)

.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .text

.align 4

glabel func_800C4130
/* B3B2D0 800C4130 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3B2D4 800C4134 AFB40028 */  sw    $s4, 0x28($sp)
/* B3B2D8 800C4138 3C148016 */  lui   $s4, %hi(D_801665C0) # $s4, 0x8016
/* B3B2DC 800C413C 269465C0 */  addiu $s4, %lo(D_801665C0) # addiu $s4, $s4, 0x65c0
/* B3B2E0 800C4140 AFBF002C */  sw    $ra, 0x2c($sp)
/* B3B2E4 800C4144 3C048014 */  lui   $a0, %hi(D_80144D10) # $a0, 0x8014
/* B3B2E8 800C4148 AFB30024 */  sw    $s3, 0x24($sp)
/* B3B2EC 800C414C AFB20020 */  sw    $s2, 0x20($sp)
/* B3B2F0 800C4150 AFB1001C */  sw    $s1, 0x1c($sp)
/* B3B2F4 800C4154 AFB00018 */  sw    $s0, 0x18($sp)
/* B3B2F8 800C4158 24844D10 */  addiu $a0, %lo(D_80144D10) # addiu $a0, $a0, 0x4d10
/* B3B2FC 800C415C 0C00084C */  jal   osSyncPrintf
/* B3B300 800C4160 96850000 */   lhu   $a1, ($s4)
/* B3B304 800C4164 3C068014 */  lui   $a2, %hi(D_80144D24) # $a2, 0x8014
/* B3B308 800C4168 24C64D24 */  addiu $a2, %lo(D_80144D24) # addiu $a2, $a2, 0x4d24
/* B3B30C 800C416C 24040078 */  li    $a0, 120
/* B3B310 800C4170 240500B4 */  li    $a1, 180
/* B3B314 800C4174 0C035C26 */  jal   FaultDrawer_DrawText
/* B3B318 800C4178 96870000 */   lhu   $a3, ($s4)
/* B3B31C 800C417C 3C128013 */  lui   $s2, %hi(D_8012D210) # $s2, 0x8013
/* B3B320 800C4180 3C118014 */  lui   $s1, %hi(D_80144D2C) # $s1, 0x8014
/* B3B324 800C4184 26314D2C */  addiu $s1, %lo(D_80144D2C) # addiu $s1, $s1, 0x4d2c
/* B3B328 800C4188 2652D210 */  addiu $s2, %lo(D_8012D210) # addiu $s2, $s2, -0x2df0
/* B3B32C 800C418C 00008025 */  move  $s0, $zero
/* B3B330 800C4190 24130011 */  li    $s3, 17
/* B3B334 800C4194 968E0000 */  lhu   $t6, ($s4)
.L800C4198:
/* B3B338 800C4198 240F0001 */  li    $t7, 1
/* B3B33C 800C419C 020FC004 */  sllv  $t8, $t7, $s0
/* B3B340 800C41A0 01D8C824 */  and   $t9, $t6, $t8
/* B3B344 800C41A4 13200007 */  beqz  $t9, .L800C41C4
/* B3B348 800C41A8 001020C0 */   sll   $a0, $s0, 3
/* B3B34C 800C41AC 02504021 */  addu  $t0, $s2, $s0
/* B3B350 800C41B0 91070000 */  lbu   $a3, ($t0)
/* B3B354 800C41B4 24840078 */  addiu $a0, $a0, 0x78
/* B3B358 800C41B8 240500BE */  li    $a1, 190
/* B3B35C 800C41BC 0C035C26 */  jal   FaultDrawer_DrawText
/* B3B360 800C41C0 02203025 */   move  $a2, $s1
.L800C41C4:
/* B3B364 800C41C4 26100001 */  addiu $s0, $s0, 1
/* B3B368 800C41C8 5613FFF3 */  bnel  $s0, $s3, .L800C4198
/* B3B36C 800C41CC 968E0000 */   lhu   $t6, ($s4)
/* B3B370 800C41D0 8FBF002C */  lw    $ra, 0x2c($sp)
/* B3B374 800C41D4 8FB00018 */  lw    $s0, 0x18($sp)
/* B3B378 800C41D8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3B37C 800C41DC 8FB20020 */  lw    $s2, 0x20($sp)
/* B3B380 800C41E0 8FB30024 */  lw    $s3, 0x24($sp)
/* B3B384 800C41E4 8FB40028 */  lw    $s4, 0x28($sp)
/* B3B388 800C41E8 03E00008 */  jr    $ra
/* B3B38C 800C41EC 27BD0030 */   addiu $sp, $sp, 0x30

glabel func_800C41F0
/* B3B390 800C41F0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3B394 800C41F4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B398 800C41F8 AFA40028 */  sw    $a0, 0x28($sp)
/* B3B39C 800C41FC 8C8F0000 */  lw    $t7, ($a0)
/* B3B3A0 800C4200 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B3A4 800C4204 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B3A8 800C4208 AFAF0024 */  sw    $t7, 0x24($sp)
/* B3B3AC 800C420C 84430174 */  lh    $v1, 0x174($v0)
/* B3B3B0 800C4210 18600011 */  blez  $v1, .L800C4258
/* B3B3B4 800C4214 28610005 */   slti  $at, $v1, 5
/* B3B3B8 800C4218 1020000F */  beqz  $at, .L800C4258
/* B3B3BC 800C421C 3C048016 */   lui   $a0, %hi(D_801664F0) # $a0, 0x8016
/* B3B3C0 800C4220 248464F0 */  addiu $a0, %lo(D_801664F0) # addiu $a0, $a0, 0x64f0
/* B3B3C4 800C4224 AC830000 */  sw    $v1, ($a0)
/* B3B3C8 800C4228 84580176 */  lh    $t8, 0x176($v0)
/* B3B3CC 800C422C 27A50024 */  addiu $a1, $sp, 0x24
/* B3B3D0 800C4230 A0980008 */  sb    $t8, 8($a0)
/* B3B3D4 800C4234 84590178 */  lh    $t9, 0x178($v0)
/* B3B3D8 800C4238 A0990009 */  sb    $t9, 9($a0)
/* B3B3DC 800C423C 8448017A */  lh    $t0, 0x17a($v0)
/* B3B3E0 800C4240 A088000A */  sb    $t0, 0xa($a0)
/* B3B3E4 800C4244 8449017C */  lh    $t1, 0x17c($v0)
/* B3B3E8 800C4248 0C02B3A6 */  jal   func_800ACE98
/* B3B3EC 800C424C A089000B */   sb    $t1, 0xb($a0)
/* B3B3F0 800C4250 10000036 */  b     .L800C432C
/* B3B3F4 800C4254 8FB90024 */   lw    $t9, 0x24($sp)
.L800C4258:
/* B3B3F8 800C4258 24010005 */  li    $at, 5
/* B3B3FC 800C425C 10610003 */  beq   $v1, $at, .L800C426C
/* B3B400 800C4260 3C048016 */   lui   $a0, %hi(D_80166500) # $a0, 0x8016
/* B3B404 800C4264 24010006 */  li    $at, 6
/* B3B408 800C4268 14610018 */  bne   $v1, $at, .L800C42CC
.L800C426C:
/* B3B40C 800C426C 386A0006 */   xori  $t2, $v1, 6
/* B3B410 800C4270 24846500 */  addiu $a0, %lo(D_80166500) # addiu $a0, $a0, 0x6500
/* B3B414 800C4274 2D4A0001 */  sltiu $t2, $t2, 1
/* B3B418 800C4278 AC8A0000 */  sw    $t2, ($a0)
/* B3B41C 800C427C 844B0176 */  lh    $t3, 0x176($v0)
/* B3B420 800C4280 27A50024 */  addiu $a1, $sp, 0x24
/* B3B424 800C4284 A08B0008 */  sb    $t3, 8($a0)
/* B3B428 800C4288 844C0178 */  lh    $t4, 0x178($v0)
/* B3B42C 800C428C A08C0009 */  sb    $t4, 9($a0)
/* B3B430 800C4290 844D017A */  lh    $t5, 0x17a($v0)
/* B3B434 800C4294 A08D000A */  sb    $t5, 0xa($a0)
/* B3B438 800C4298 844E017C */  lh    $t6, 0x17c($v0)
/* B3B43C 800C429C A08E000B */  sb    $t6, 0xb($a0)
/* B3B440 800C42A0 844F017E */  lh    $t7, 0x17e($v0)
/* B3B444 800C42A4 A08F000C */  sb    $t7, 0xc($a0)
/* B3B448 800C42A8 84580180 */  lh    $t8, 0x180($v0)
/* B3B44C 800C42AC A098000D */  sb    $t8, 0xd($a0)
/* B3B450 800C42B0 84590182 */  lh    $t9, 0x182($v0)
/* B3B454 800C42B4 A099000E */  sb    $t9, 0xe($a0)
/* B3B458 800C42B8 8448017C */  lh    $t0, 0x17c($v0)
/* B3B45C 800C42BC 0C02B656 */  jal   func_800AD958
/* B3B460 800C42C0 A088000F */   sb    $t0, 0xf($a0)
/* B3B464 800C42C4 10000019 */  b     .L800C432C
/* B3B468 800C42C8 8FB90024 */   lw    $t9, 0x24($sp)
.L800C42CC:
/* B3B46C 800C42CC 24010007 */  li    $at, 7
/* B3B470 800C42D0 14610015 */  bne   $v1, $at, .L800C4328
/* B3B474 800C42D4 3C048016 */   lui   $a0, %hi(D_80166510) # $a0, 0x8016
/* B3B478 800C42D8 24846510 */  addiu $a0, %lo(D_80166510) # addiu $a0, $a0, 0x6510
/* B3B47C 800C42DC AC800000 */  sw    $zero, ($a0)
/* B3B480 800C42E0 84490176 */  lh    $t1, 0x176($v0)
/* B3B484 800C42E4 27A50024 */  addiu $a1, $sp, 0x24
/* B3B488 800C42E8 A0890008 */  sb    $t1, 8($a0)
/* B3B48C 800C42EC 844A0178 */  lh    $t2, 0x178($v0)
/* B3B490 800C42F0 A08A0009 */  sb    $t2, 9($a0)
/* B3B494 800C42F4 844B017A */  lh    $t3, 0x17a($v0)
/* B3B498 800C42F8 A08B000A */  sb    $t3, 0xa($a0)
/* B3B49C 800C42FC 844C017C */  lh    $t4, 0x17c($v0)
/* B3B4A0 800C4300 A08C000B */  sb    $t4, 0xb($a0)
/* B3B4A4 800C4304 844D017E */  lh    $t5, 0x17e($v0)
/* B3B4A8 800C4308 A08D000C */  sb    $t5, 0xc($a0)
/* B3B4AC 800C430C 844E0180 */  lh    $t6, 0x180($v0)
/* B3B4B0 800C4310 A08E000D */  sb    $t6, 0xd($a0)
/* B3B4B4 800C4314 844F0182 */  lh    $t7, 0x182($v0)
/* B3B4B8 800C4318 A08F000E */  sb    $t7, 0xe($a0)
/* B3B4BC 800C431C 8458017C */  lh    $t8, 0x17c($v0)
/* B3B4C0 800C4320 0C02B570 */  jal   func_800AD5C0
/* B3B4C4 800C4324 A098000F */   sb    $t8, 0xf($a0)
.L800C4328:
/* B3B4C8 800C4328 8FB90024 */  lw    $t9, 0x24($sp)
.L800C432C:
/* B3B4CC 800C432C 8FA80028 */  lw    $t0, 0x28($sp)
/* B3B4D0 800C4330 AD190000 */  sw    $t9, ($t0)
/* B3B4D4 800C4334 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3B4D8 800C4338 27BD0028 */  addiu $sp, $sp, 0x28
/* B3B4DC 800C433C 03E00008 */  jr    $ra
/* B3B4E0 800C4340 00000000 */   nop   

glabel func_800C4344
/* B3B4E4 800C4344 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B3B4E8 800C4348 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B3B4EC 800C434C 8CC30000 */  lw    $v1, ($a2)
/* B3B4F0 800C4350 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B4F4 800C4354 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B4F8 800C4358 AFA40018 */  sw    $a0, 0x18($sp)
/* B3B4FC 800C435C 84621074 */  lh    $v0, 0x1074($v1)
/* B3B500 800C4360 24010014 */  li    $at, 20
/* B3B504 800C4364 54410006 */  bnel  $v0, $at, .L800C4380
/* B3B508 800C4368 2401000C */   li    $at, 12
/* B3B50C 800C436C 846E1078 */  lh    $t6, 0x1078($v1)
/* B3B510 800C4370 3C018017 */  lui   $at, %hi(__osMalloc_FreeBlockTest_Enable) # $at, 0x8017
/* B3B514 800C4374 AC2E5654 */  sw    $t6, %lo(__osMalloc_FreeBlockTest_Enable)($at)
/* B3B518 800C4378 84621074 */  lh    $v0, 0x1074($v1)
/* B3B51C 800C437C 2401000C */  li    $at, 12
.L800C4380:
/* B3B520 800C4380 14410034 */  bne   $v0, $at, .L800C4454
/* B3B524 800C4384 8FAF0018 */   lw    $t7, 0x18($sp)
/* B3B528 800C4388 84621076 */  lh    $v0, 0x1076($v1)
/* B3B52C 800C438C 00003825 */  move  $a3, $zero
/* B3B530 800C4390 2C410004 */  sltiu $at, $v0, 4
/* B3B534 800C4394 10200003 */  beqz  $at, .L800C43A4
/* B3B538 800C4398 00000000 */   nop   
/* B3B53C 800C439C 10000001 */  b     .L800C43A4
/* B3B540 800C43A0 00403825 */   move  $a3, $v0
.L800C43A4:
/* B3B544 800C43A4 0007C080 */  sll   $t8, $a3, 2
/* B3B548 800C43A8 0307C023 */  subu  $t8, $t8, $a3
/* B3B54C 800C43AC 0018C0C0 */  sll   $t8, $t8, 3
/* B3B550 800C43B0 01F81021 */  addu  $v0, $t7, $t8
/* B3B554 800C43B4 94590014 */  lhu   $t9, 0x14($v0)
/* B3B558 800C43B8 94681078 */  lhu   $t0, 0x1078($v1)
/* B3B55C 800C43BC A479107A */  sh    $t9, 0x107a($v1)
/* B3B560 800C43C0 8CCA0000 */  lw    $t2, ($a2)
/* B3B564 800C43C4 94490020 */  lhu   $t1, 0x20($v0)
/* B3B568 800C43C8 01002827 */  not   $a1, $t0
/* B3B56C 800C43CC A549107C */  sh    $t1, 0x107c($t2)
/* B3B570 800C43D0 8CCC0000 */  lw    $t4, ($a2)
/* B3B574 800C43D4 804B0028 */  lb    $t3, 0x28($v0)
/* B3B578 800C43D8 A58B107E */  sh    $t3, 0x107e($t4)
/* B3B57C 800C43DC 8CCE0000 */  lw    $t6, ($a2)
/* B3B580 800C43E0 804D0029 */  lb    $t5, 0x29($v0)
/* B3B584 800C43E4 A5CD1080 */  sh    $t5, 0x1080($t6)
/* B3B588 800C43E8 8CD80000 */  lw    $t8, ($a2)
/* B3B58C 800C43EC 804F0028 */  lb    $t7, 0x28($v0)
/* B3B590 800C43F0 A70F1082 */  sh    $t7, 0x1082($t8)
/* B3B594 800C43F4 8CC90000 */  lw    $t1, ($a2)
/* B3B598 800C43F8 80590029 */  lb    $t9, 0x29($v0)
/* B3B59C 800C43FC A5391084 */  sh    $t9, 0x1084($t1)
/* B3B5A0 800C4400 8CCB0000 */  lw    $t3, ($a2)
/* B3B5A4 800C4404 804A0016 */  lb    $t2, 0x16($v0)
/* B3B5A8 800C4408 A56A1086 */  sh    $t2, 0x1086($t3)
/* B3B5AC 800C440C 8CCD0000 */  lw    $t5, ($a2)
/* B3B5B0 800C4410 804C0017 */  lb    $t4, 0x17($v0)
/* B3B5B4 800C4414 A5AC1088 */  sh    $t4, 0x1088($t5)
/* B3B5B8 800C4418 944E0014 */  lhu   $t6, 0x14($v0)
/* B3B5BC 800C441C 8CD80000 */  lw    $t8, ($a2)
/* B3B5C0 800C4420 010E7826 */  xor   $t7, $t0, $t6
/* B3B5C4 800C4424 2DEF0001 */  sltiu $t7, $t7, 1
/* B3B5C8 800C4428 A70F108E */  sh    $t7, 0x108e($t8)
/* B3B5CC 800C442C 94590014 */  lhu   $t9, 0x14($v0)
/* B3B5D0 800C4430 8CCB0000 */  lw    $t3, ($a2)
/* B3B5D4 800C4434 03254827 */  nor   $t1, $t9, $a1
/* B3B5D8 800C4438 2D2A0001 */  sltiu $t2, $t1, 1
/* B3B5DC 800C443C A56A1090 */  sh    $t2, 0x1090($t3)
/* B3B5E0 800C4440 944C0020 */  lhu   $t4, 0x20($v0)
/* B3B5E4 800C4444 8CCF0000 */  lw    $t7, ($a2)
/* B3B5E8 800C4448 01856827 */  nor   $t5, $t4, $a1
/* B3B5EC 800C444C 2DAE0001 */  sltiu $t6, $t5, 1
/* B3B5F0 800C4450 A5EE1092 */  sh    $t6, 0x1092($t7)
.L800C4454:
/* B3B5F4 800C4454 3C188013 */  lui   $t8, %hi(D_8012DBC0) # $t8, 0x8013
/* B3B5F8 800C4458 8F18DBC0 */  lw    $t8, %lo(D_8012DBC0)($t8)
/* B3B5FC 800C445C 8FA40018 */  lw    $a0, 0x18($sp)
/* B3B600 800C4460 53000006 */  beql  $t8, $zero, .L800C447C
/* B3B604 800C4464 8CC30000 */   lw    $v1, ($a2)
/* B3B608 800C4468 0C018E43 */  jal   func_8006390C
/* B3B60C 800C446C 2484002C */   addiu $a0, $a0, 0x2c
/* B3B610 800C4470 3C068016 */  lui   $a2, %hi(gGameInfo) # $a2, 0x8016
/* B3B614 800C4474 24C6FA90 */  addiu $a2, %lo(gGameInfo) # addiu $a2, $a2, -0x570
/* B3B618 800C4478 8CC30000 */  lw    $v1, ($a2)
.L800C447C:
/* B3B61C 800C447C 3C018001 */  lui   $at, %hi(D_80009460) # $at, 0x8001
/* B3B620 800C4480 240B2000 */  li    $t3, 8192
/* B3B624 800C4484 8479104C */  lh    $t9, 0x104c($v1)
/* B3B628 800C4488 AC399460 */  sw    $t9, %lo(D_80009460)($at)
/* B3B62C 800C448C 846200FE */  lh    $v0, 0xfe($v1)
/* B3B630 800C4490 3C018001 */  lui   $at, %hi(sDmaMgrDmaBuffSize)
/* B3B634 800C4494 10400006 */  beqz  $v0, .L800C44B0
/* B3B638 800C4498 2449000F */   addiu $t1, $v0, 0xf
/* B3B63C 800C449C 2401FFF0 */  li    $at, -16
/* B3B640 800C44A0 01215024 */  and   $t2, $t1, $at
/* B3B644 800C44A4 3C018001 */  lui   $at, %hi(sDmaMgrDmaBuffSize) # $at, 0x8001
/* B3B648 800C44A8 10000002 */  b     .L800C44B4
/* B3B64C 800C44AC AC2A9464 */   sw    $t2, %lo(sDmaMgrDmaBuffSize)($at)
.L800C44B0:
/* B3B650 800C44B0 AC2B9464 */  sw    $t3, %lo(sDmaMgrDmaBuffSize)($at)
.L800C44B4:
/* B3B654 800C44B4 846C104E */  lh    $t4, 0x104e($v1)
/* B3B658 800C44B8 3C018013 */  lui   $at, %hi(gSystemArenaLogSeverity) # $at, 0x8013
/* B3B65C 800C44BC 24020008 */  li    $v0, 8
/* B3B660 800C44C0 AC2C44B0 */  sw    $t4, %lo(gSystemArenaLogSeverity)($at)
/* B3B664 800C44C4 846D1050 */  lh    $t5, 0x1050($v1)
/* B3B668 800C44C8 3C018012 */  lui   $at, %hi(gZeldaArenaLogSeverity) # $at, 0x8012
/* B3B66C 800C44CC AC2D0040 */  sw    $t5, %lo(gZeldaArenaLogSeverity)($at)
/* B3B670 800C44D0 846E1074 */  lh    $t6, 0x1074($v1)
/* B3B674 800C44D4 544E001D */  bnel  $v0, $t6, .L800C454C
/* B3B678 800C44D8 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3B67C 800C44DC 846F1090 */  lh    $t7, 0x1090($v1)
/* B3B680 800C44E0 504F000A */  beql  $v0, $t7, .L800C450C
/* B3B684 800C44E4 846A1076 */   lh    $t2, 0x1076($v1)
/* B3B688 800C44E8 A4621090 */  sh    $v0, 0x1090($v1)
/* B3B68C 800C44EC 8CD80000 */  lw    $t8, ($a2)
/* B3B690 800C44F0 A7001076 */  sh    $zero, 0x1076($t8)
/* B3B694 800C44F4 8CD90000 */  lw    $t9, ($a2)
/* B3B698 800C44F8 A7201078 */  sh    $zero, 0x1078($t9)
/* B3B69C 800C44FC 8CC90000 */  lw    $t1, ($a2)
/* B3B6A0 800C4500 A520107A */  sh    $zero, 0x107a($t1)
/* B3B6A4 800C4504 8CC30000 */  lw    $v1, ($a2)
/* B3B6A8 800C4508 846A1076 */  lh    $t2, 0x1076($v1)
.L800C450C:
/* B3B6AC 800C450C 0543000F */  bgezl $t2, .L800C454C
/* B3B6B0 800C4510 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3B6B4 800C4514 A4601076 */  sh    $zero, 0x1076($v1)
/* B3B6B8 800C4518 8CC30000 */  lw    $v1, ($a2)
/* B3B6BC 800C451C 8462107A */  lh    $v0, 0x107a($v1)
/* B3B6C0 800C4520 14400003 */  bnez  $v0, .L800C4530
/* B3B6C4 800C4524 00023900 */   sll   $a3, $v0, 4
/* B3B6C8 800C4528 10000001 */  b     .L800C4530
/* B3B6CC 800C452C 24070100 */   li    $a3, 256
.L800C4530:
/* B3B6D0 800C4530 84641078 */  lh    $a0, 0x1078($v1)
/* B3B6D4 800C4534 3C018000 */  lui   $at, 0x8000
/* B3B6D8 800C4538 00E02825 */  move  $a1, $a3
/* B3B6DC 800C453C 00042200 */  sll   $a0, $a0, 8
/* B3B6E0 800C4540 0C000AC4 */  jal   LogUtils_LogHexDump
/* B3B6E4 800C4544 00812021 */   addu  $a0, $a0, $at
/* B3B6E8 800C4548 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C454C:
/* B3B6EC 800C454C 27BD0018 */  addiu $sp, $sp, 0x18
/* B3B6F0 800C4550 03E00008 */  jr    $ra
/* B3B6F4 800C4554 00000000 */   nop   

glabel func_800C4558
/* B3B6F8 800C4558 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3B6FC 800C455C AFB30014 */  sw    $s3, 0x14($sp)
/* B3B700 800C4560 AFB20010 */  sw    $s2, 0x10($sp)
/* B3B704 800C4564 AFB1000C */  sw    $s1, 0xc($sp)
/* B3B708 800C4568 AFB00008 */  sw    $s0, 8($sp)
/* B3B70C 800C456C AFA40018 */  sw    $a0, 0x18($sp)
/* B3B710 800C4570 8CA20000 */  lw    $v0, ($a1)
/* B3B714 800C4574 3087FFFF */  andi  $a3, $a0, 0xffff
/* B3B718 800C4578 3C03E700 */  lui   $v1, 0xe700
/* B3B71C 800C457C 00402025 */  move  $a0, $v0
/* B3B720 800C4580 AC830000 */  sw    $v1, ($a0)
/* B3B724 800C4584 AC800004 */  sw    $zero, 4($a0)
/* B3B728 800C4588 24420008 */  addiu $v0, $v0, 8
/* B3B72C 800C458C 00402025 */  move  $a0, $v0
/* B3B730 800C4590 3C0EEF30 */  lui   $t6, 0xef30
/* B3B734 800C4594 AC8E0000 */  sw    $t6, ($a0)
/* B3B738 800C4598 AC800004 */  sw    $zero, 4($a0)
/* B3B73C 800C459C 3C128014 */  lui   $s2, %hi(D_80144D30) # $s2, 0x8014
/* B3B740 800C45A0 24420008 */  addiu $v0, $v0, 8
/* B3B744 800C45A4 26524D30 */  addiu $s2, %lo(D_80144D30) # addiu $s2, $s2, 0x4d30
/* B3B748 800C45A8 00002025 */  move  $a0, $zero
/* B3B74C 800C45AC 3C10F700 */  lui   $s0, 0xf700
/* B3B750 800C45B0 3C11F600 */  lui   $s1, 0xf600
/* B3B754 800C45B4 24130010 */  li    $s3, 16
/* B3B758 800C45B8 240A0001 */  li    $t2, 1
/* B3B75C 800C45BC 240B0002 */  li    $t3, 2
.L800C45C0:
/* B3B760 800C45C0 240F0001 */  li    $t7, 1
/* B3B764 800C45C4 008FC004 */  sllv  $t8, $t7, $a0
/* B3B768 800C45C8 00F8C824 */  and   $t9, $a3, $t8
/* B3B76C 800C45CC 1320001C */  beqz  $t9, .L800C4640
/* B3B770 800C45D0 00047040 */   sll   $t6, $a0, 1
/* B3B774 800C45D4 00403025 */  move  $a2, $v0
/* B3B778 800C45D8 ACD00000 */  sw    $s0, ($a2)
/* B3B77C 800C45DC 024E4021 */  addu  $t0, $s2, $t6
/* B3B780 800C45E0 95090000 */  lhu   $t1, ($t0)
/* B3B784 800C45E4 000A6080 */  sll   $t4, $t2, 2
/* B3B788 800C45E8 258C00E1 */  addiu $t4, $t4, 0xe1
/* B3B78C 800C45EC 00097C00 */  sll   $t7, $t1, 0x10
/* B3B790 800C45F0 319903FF */  andi  $t9, $t4, 0x3ff
/* B3B794 800C45F4 012FC025 */  or    $t8, $t1, $t7
/* B3B798 800C45F8 00046880 */  sll   $t5, $a0, 2
/* B3B79C 800C45FC 00197380 */  sll   $t6, $t9, 0xe
/* B3B7A0 800C4600 25AD00E2 */  addiu $t5, $t5, 0xe2
/* B3B7A4 800C4604 ACD80004 */  sw    $t8, 4($a2)
/* B3B7A8 800C4608 24420008 */  addiu $v0, $v0, 8
/* B3B7AC 800C460C 01D17825 */  or    $t7, $t6, $s1
/* B3B7B0 800C4610 00403025 */  move  $a2, $v0
/* B3B7B4 800C4614 31B903FF */  andi  $t9, $t5, 0x3ff
/* B3B7B8 800C4618 00197380 */  sll   $t6, $t9, 0xe
/* B3B7BC 800C461C 35F8037C */  ori   $t8, $t7, 0x37c
/* B3B7C0 800C4620 35CF0370 */  ori   $t7, $t6, 0x370
/* B3B7C4 800C4624 ACCF0004 */  sw    $t7, 4($a2)
/* B3B7C8 800C4628 ACD80000 */  sw    $t8, ($a2)
/* B3B7CC 800C462C 24420008 */  addiu $v0, $v0, 8
/* B3B7D0 800C4630 00403025 */  move  $a2, $v0
/* B3B7D4 800C4634 ACC30000 */  sw    $v1, ($a2)
/* B3B7D8 800C4638 ACC00004 */  sw    $zero, 4($a2)
/* B3B7DC 800C463C 24420008 */  addiu $v0, $v0, 8
.L800C4640:
/* B3B7E0 800C4640 24180001 */  li    $t8, 1
/* B3B7E4 800C4644 0158C804 */  sllv  $t9, $t8, $t2
/* B3B7E8 800C4648 00F97024 */  and   $t6, $a3, $t9
/* B3B7EC 800C464C 11C0001C */  beqz  $t6, .L800C46C0
/* B3B7F0 800C4650 00403025 */   move  $a2, $v0
/* B3B7F4 800C4654 00047840 */  sll   $t7, $a0, 1
/* B3B7F8 800C4658 024FC021 */  addu  $t8, $s2, $t7
/* B3B7FC 800C465C ACD00000 */  sw    $s0, ($a2)
/* B3B800 800C4660 97080002 */  lhu   $t0, 2($t8)
/* B3B804 800C4664 000B4880 */  sll   $t1, $t3, 2
/* B3B808 800C4668 252900E1 */  addiu $t1, $t1, 0xe1
/* B3B80C 800C466C 0008CC00 */  sll   $t9, $t0, 0x10
/* B3B810 800C4670 312F03FF */  andi  $t7, $t1, 0x3ff
/* B3B814 800C4674 01197025 */  or    $t6, $t0, $t9
/* B3B818 800C4678 000FC380 */  sll   $t8, $t7, 0xe
/* B3B81C 800C467C 000A6080 */  sll   $t4, $t2, 2
/* B3B820 800C4680 258C00E2 */  addiu $t4, $t4, 0xe2
/* B3B824 800C4684 0311C825 */  or    $t9, $t8, $s1
/* B3B828 800C4688 ACCE0004 */  sw    $t6, 4($a2)
/* B3B82C 800C468C 24420008 */  addiu $v0, $v0, 8
/* B3B830 800C4690 00403025 */  move  $a2, $v0
/* B3B834 800C4694 318F03FF */  andi  $t7, $t4, 0x3ff
/* B3B838 800C4698 000FC380 */  sll   $t8, $t7, 0xe
/* B3B83C 800C469C 372E037C */  ori   $t6, $t9, 0x37c
/* B3B840 800C46A0 37190370 */  ori   $t9, $t8, 0x370
/* B3B844 800C46A4 ACD90004 */  sw    $t9, 4($a2)
/* B3B848 800C46A8 ACCE0000 */  sw    $t6, ($a2)
/* B3B84C 800C46AC 24420008 */  addiu $v0, $v0, 8
/* B3B850 800C46B0 00403025 */  move  $a2, $v0
/* B3B854 800C46B4 ACC30000 */  sw    $v1, ($a2)
/* B3B858 800C46B8 ACC00004 */  sw    $zero, 4($a2)
/* B3B85C 800C46BC 24420008 */  addiu $v0, $v0, 8
.L800C46C0:
/* B3B860 800C46C0 01602025 */  move  $a0, $t3
/* B3B864 800C46C4 254A0002 */  addiu $t2, $t2, 2
/* B3B868 800C46C8 1573FFBD */  bne   $t3, $s3, .L800C45C0
/* B3B86C 800C46CC 256B0002 */   addiu $t3, $t3, 2
/* B3B870 800C46D0 ACA20000 */  sw    $v0, ($a1)
/* B3B874 800C46D4 8FB30014 */  lw    $s3, 0x14($sp)
/* B3B878 800C46D8 8FB20010 */  lw    $s2, 0x10($sp)
/* B3B87C 800C46DC 8FB1000C */  lw    $s1, 0xc($sp)
/* B3B880 800C46E0 8FB00008 */  lw    $s0, 8($sp)
/* B3B884 800C46E4 03E00008 */  jr    $ra
/* B3B888 800C46E8 27BD0018 */   addiu $sp, $sp, 0x18

glabel func_800C46EC
/* B3B88C 800C46EC 27BDFF80 */  addiu $sp, $sp, -0x80
/* B3B890 800C46F0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3B894 800C46F4 AFA40080 */  sw    $a0, 0x80($sp)
/* B3B898 800C46F8 3C068014 */  lui   $a2, %hi(D_80144D50) # $a2, 0x8014
/* B3B89C 800C46FC AFA50084 */  sw    $a1, 0x84($sp)
/* B3B8A0 800C4700 24C64D50 */  addiu $a2, %lo(D_80144D50) # addiu $a2, $a2, 0x4d50
/* B3B8A4 800C4704 27A40064 */  addiu $a0, $sp, 0x64
/* B3B8A8 800C4708 0C031AB1 */  jal   Graph_OpenDisps
/* B3B8AC 800C470C 240702EA */   li    $a3, 746
/* B3B8B0 800C4710 8FAE0084 */  lw    $t6, 0x84($sp)
/* B3B8B4 800C4714 8DC402C0 */  lw    $a0, 0x2c0($t6)
/* B3B8B8 800C4718 0C031B08 */  jal   Graph_GfxPlusOne
/* B3B8BC 800C471C AFA40078 */   sw    $a0, 0x78($sp)
/* B3B8C0 800C4720 8FAF0084 */  lw    $t7, 0x84($sp)
/* B3B8C4 800C4724 AFA2007C */  sw    $v0, 0x7c($sp)
/* B3B8C8 800C4728 3C19DE00 */  lui   $t9, 0xde00
/* B3B8CC 800C472C 8DE302B0 */  lw    $v1, 0x2b0($t7)
/* B3B8D0 800C4730 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B8D4 800C4734 24010001 */  li    $at, 1
/* B3B8D8 800C4738 24780008 */  addiu $t8, $v1, 8
/* B3B8DC 800C473C ADF802B0 */  sw    $t8, 0x2b0($t7)
/* B3B8E0 800C4740 AC790000 */  sw    $t9, ($v1)
/* B3B8E4 800C4744 8FA8007C */  lw    $t0, 0x7c($sp)
/* B3B8E8 800C4748 AC680004 */  sw    $t0, 4($v1)
/* B3B8EC 800C474C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B8F0 800C4750 84490184 */  lh    $t1, 0x184($v0)
/* B3B8F4 800C4754 55210006 */  bnel  $t1, $at, .L800C4770
/* B3B8F8 800C4758 8FAA0080 */   lw    $t2, 0x80($sp)
/* B3B8FC 800C475C 0C03107C */  jal   func_800C41F0
/* B3B900 800C4760 27A4007C */   addiu $a0, $sp, 0x7c
/* B3B904 800C4764 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B908 800C4768 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B90C 800C476C 8FAA0080 */  lw    $t2, 0x80($sp)
.L800C4770:
/* B3B910 800C4770 3C038016 */  lui   $v1, %hi(D_801665C0) # $v1, 0x8016
/* B3B914 800C4774 246365C0 */  addiu $v1, %lo(D_801665C0) # addiu $v1, $v1, 0x65c0
/* B3B918 800C4778 954B0014 */  lhu   $t3, 0x14($t2)
/* B3B91C 800C477C 954C0020 */  lhu   $t4, 0x20($t2)
/* B3B920 800C4780 016C6825 */  or    $t5, $t3, $t4
/* B3B924 800C4784 A46D0000 */  sh    $t5, ($v1)
/* B3B928 800C4788 844E1032 */  lh    $t6, 0x1032($v0)
/* B3B92C 800C478C 31A4FFFF */  andi  $a0, $t5, 0xffff
/* B3B930 800C4790 55C00006 */  bnezl $t6, .L800C47AC
/* B3B934 800C4794 8458011C */   lh    $t8, 0x11c($v0)
/* B3B938 800C4798 0C031156 */  jal   func_800C4558
/* B3B93C 800C479C 27A5007C */   addiu $a1, $sp, 0x7c
/* B3B940 800C47A0 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B944 800C47A4 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B948 800C47A8 8458011C */  lh    $t8, 0x11c($v0)
.L800C47AC:
/* B3B94C 800C47AC 330F0001 */  andi  $t7, $t8, 1
/* B3B950 800C47B0 51E00010 */  beql  $t7, $zero, .L800C47F4
/* B3B954 800C47B4 845900D4 */   lh    $t9, 0xd4($v0)
/* B3B958 800C47B8 0C03EEE3 */  jal   GfxPrint_Ctor
/* B3B95C 800C47BC 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B960 800C47C0 27A4002C */  addiu $a0, $sp, 0x2c
/* B3B964 800C47C4 0C03EF07 */  jal   GfxPrint_Open
/* B3B968 800C47C8 8FA5007C */   lw    $a1, 0x7c($sp)
/* B3B96C 800C47CC 0C03BA94 */  jal   func_800EEA50
/* B3B970 800C47D0 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B974 800C47D4 0C03EF19 */  jal   GfxPrint_Close
/* B3B978 800C47D8 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B97C 800C47DC AFA2007C */  sw    $v0, 0x7c($sp)
/* B3B980 800C47E0 0C03EF05 */  jal   GfxPrint_Dtor
/* B3B984 800C47E4 27A4002C */   addiu $a0, $sp, 0x2c
/* B3B988 800C47E8 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3B98C 800C47EC 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3B990 800C47F0 845900D4 */  lh    $t9, 0xd4($v0)
.L800C47F4:
/* B3B994 800C47F4 07230010 */  bgezl $t9, .L800C4838
/* B3B998 800C47F8 8FA9007C */   lw    $t1, 0x7c($sp)
/* B3B99C 800C47FC 0C034F7E */  jal   DebugArena_Display
/* B3B9A0 800C4800 00000000 */   nop   
/* B3B9A4 800C4804 0C03F616 */  jal   SystemArena_Display
/* B3B9A8 800C4808 00000000 */   nop   
/* B3B9AC 800C480C 8FA40080 */  lw    $a0, 0x80($sp)
/* B3B9B0 800C4810 0C030EE2 */  jal   THA_GetSize
/* B3B9B4 800C4814 24840074 */   addiu $a0, $a0, 0x74
/* B3B9B8 800C4818 3C048014 */  lui   $a0, %hi(D_80144D5C) # $a0, 0x8014
/* B3B9BC 800C481C 24844D5C */  addiu $a0, %lo(D_80144D5C) # addiu $a0, $a0, 0x4d5c
/* B3B9C0 800C4820 0C00084C */  jal   osSyncPrintf
/* B3B9C4 800C4824 00402825 */   move  $a1, $v0
/* B3B9C8 800C4828 3C088016 */  lui   $t0, %hi(gGameInfo) # $t0, 0x8016
/* B3B9CC 800C482C 8D08FA90 */  lw    $t0, %lo(gGameInfo)($t0)
/* B3B9D0 800C4830 A50000D4 */  sh    $zero, 0xd4($t0)
/* B3B9D4 800C4834 8FA9007C */  lw    $t1, 0x7c($sp)
.L800C4838:
/* B3B9D8 800C4838 3C0BDF00 */  lui   $t3, 0xdf00
/* B3B9DC 800C483C 252A0008 */  addiu $t2, $t1, 8
/* B3B9E0 800C4840 AFAA007C */  sw    $t2, 0x7c($sp)
/* B3B9E4 800C4844 AD200004 */  sw    $zero, 4($t1)
/* B3B9E8 800C4848 AD2B0000 */  sw    $t3, ($t1)
/* B3B9EC 800C484C 8FA5007C */  lw    $a1, 0x7c($sp)
/* B3B9F0 800C4850 0C031B0A */  jal   Graph_BranchDlist
/* B3B9F4 800C4854 8FA40078 */   lw    $a0, 0x78($sp)
/* B3B9F8 800C4858 8FAC007C */  lw    $t4, 0x7c($sp)
/* B3B9FC 800C485C 8FAD0084 */  lw    $t5, 0x84($sp)
/* B3BA00 800C4860 3C068014 */  lui   $a2, %hi(D_80144D8C) # $a2, 0x8014
/* B3BA04 800C4864 24C64D8C */  addiu $a2, %lo(D_80144D8C) # addiu $a2, $a2, 0x4d8c
/* B3BA08 800C4868 ADAC02C0 */  sw    $t4, 0x2c0($t5)
/* B3BA0C 800C486C 8FA50084 */  lw    $a1, 0x84($sp)
/* B3BA10 800C4870 27A40064 */  addiu $a0, $sp, 0x64
/* B3BA14 800C4874 0C031AD5 */  jal   Graph_CloseDisps
/* B3BA18 800C4878 24070320 */   li    $a3, 800
/* B3BA1C 800C487C 0C018F5F */  jal   func_80063D7C
/* B3BA20 800C4880 8FA40084 */   lw    $a0, 0x84($sp)
/* B3BA24 800C4884 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3BA28 800C4888 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3BA2C 800C488C 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3BA30 800C4890 248464D0 */  addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3BA34 800C4894 85D800D4 */  lh    $t8, 0xd4($t6)
/* B3BA38 800C4898 53000009 */  beql  $t8, $zero, .L800C48C0
/* B3BA3C 800C489C 8FBF0014 */   lw    $ra, 0x14($sp)
/* B3BA40 800C48A0 0C032671 */  jal   func_800C99C4
/* B3BA44 800C48A4 8FA50084 */   lw    $a1, 0x84($sp)
/* B3BA48 800C48A8 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3BA4C 800C48AC 248464D0 */  addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3BA50 800C48B0 8FA50084 */  lw    $a1, 0x84($sp)
/* B3BA54 800C48B4 0C032841 */  jal   func_800CA104
/* B3BA58 800C48B8 8FA60080 */   lw    $a2, 0x80($sp)
/* B3BA5C 800C48BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C48C0:
/* B3BA60 800C48C0 27BD0080 */  addiu $sp, $sp, 0x80
/* B3BA64 800C48C4 03E00008 */  jr    $ra
/* B3BA68 800C48C8 00000000 */   nop   

glabel func_800C48CC
/* B3BA6C 800C48CC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B3BA70 800C48D0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3BA74 800C48D4 00802825 */  move  $a1, $a0
/* B3BA78 800C48D8 3C068014 */  lui   $a2, %hi(D_80144D98) # $a2, 0x8014
/* B3BA7C 800C48DC 24C64D98 */  addiu $a2, %lo(D_80144D98) # addiu $a2, $a2, 0x4d98
/* B3BA80 800C48E0 AFA50058 */  sw    $a1, 0x58($sp)
/* B3BA84 800C48E4 27A40044 */  addiu $a0, $sp, 0x44
/* B3BA88 800C48E8 0C031AB1 */  jal   Graph_OpenDisps
/* B3BA8C 800C48EC 2407032E */   li    $a3, 814
/* B3BA90 800C48F0 8FA50058 */  lw    $a1, 0x58($sp)
/* B3BA94 800C48F4 3C06DB06 */  lui   $a2, 0xdb06
/* B3BA98 800C48F8 3C07DB06 */  lui   $a3, (0xDB06003C >> 16) # lui $a3, 0xdb06
/* B3BA9C 800C48FC 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B3BAA0 800C4900 34E7003C */  ori   $a3, (0xDB06003C & 0xFFFF) # ori $a3, $a3, 0x3c
/* B3BAA4 800C4904 3C08DB06 */  lui   $t0, (0xDB060038 >> 16) # lui $t0, 0xdb06
/* B3BAA8 800C4908 244E0008 */  addiu $t6, $v0, 8
/* B3BAAC 800C490C ACAE02C0 */  sw    $t6, 0x2c0($a1)
/* B3BAB0 800C4910 AC400004 */  sw    $zero, 4($v0)
/* B3BAB4 800C4914 AC460000 */  sw    $a2, ($v0)
/* B3BAB8 800C4918 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B3BABC 800C491C 3C048017 */  lui   $a0, %hi(D_801759C0) # $a0, 0x8017
/* B3BAC0 800C4920 248459C0 */  addiu $a0, %lo(D_801759C0) # addiu $a0, $a0, 0x59c0
/* B3BAC4 800C4924 244F0008 */  addiu $t7, $v0, 8
/* B3BAC8 800C4928 ACAF02C0 */  sw    $t7, 0x2c0($a1)
/* B3BACC 800C492C AC470000 */  sw    $a3, ($v0)
/* B3BAD0 800C4930 8CB802DC */  lw    $t8, 0x2dc($a1)
/* B3BAD4 800C4934 35080038 */  ori   $t0, (0xDB060038 & 0xFFFF) # ori $t0, $t0, 0x38
/* B3BAD8 800C4938 AC580004 */  sw    $t8, 4($v0)
/* B3BADC 800C493C 8CA202C0 */  lw    $v0, 0x2c0($a1)
/* B3BAE0 800C4940 24590008 */  addiu $t9, $v0, 8
/* B3BAE4 800C4944 ACB902C0 */  sw    $t9, 0x2c0($a1)
/* B3BAE8 800C4948 AC440004 */  sw    $a0, 4($v0)
/* B3BAEC 800C494C AC480000 */  sw    $t0, ($v0)
/* B3BAF0 800C4950 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B3BAF4 800C4954 24490008 */  addiu $t1, $v0, 8
/* B3BAF8 800C4958 ACA902D0 */  sw    $t1, 0x2d0($a1)
/* B3BAFC 800C495C AC400004 */  sw    $zero, 4($v0)
/* B3BB00 800C4960 AC460000 */  sw    $a2, ($v0)
/* B3BB04 800C4964 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B3BB08 800C4968 244A0008 */  addiu $t2, $v0, 8
/* B3BB0C 800C496C ACAA02D0 */  sw    $t2, 0x2d0($a1)
/* B3BB10 800C4970 AC470000 */  sw    $a3, ($v0)
/* B3BB14 800C4974 8CAB02DC */  lw    $t3, 0x2dc($a1)
/* B3BB18 800C4978 AC4B0004 */  sw    $t3, 4($v0)
/* B3BB1C 800C497C 8CA202D0 */  lw    $v0, 0x2d0($a1)
/* B3BB20 800C4980 244C0008 */  addiu $t4, $v0, 8
/* B3BB24 800C4984 ACAC02D0 */  sw    $t4, 0x2d0($a1)
/* B3BB28 800C4988 AC440004 */  sw    $a0, 4($v0)
/* B3BB2C 800C498C AC480000 */  sw    $t0, ($v0)
/* B3BB30 800C4990 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B3BB34 800C4994 244D0008 */  addiu $t5, $v0, 8
/* B3BB38 800C4998 ACAD02B0 */  sw    $t5, 0x2b0($a1)
/* B3BB3C 800C499C AC400004 */  sw    $zero, 4($v0)
/* B3BB40 800C49A0 AC460000 */  sw    $a2, ($v0)
/* B3BB44 800C49A4 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B3BB48 800C49A8 3C068014 */  lui   $a2, %hi(D_80144DA4) # $a2, 0x8014
/* B3BB4C 800C49AC 24C64DA4 */  addiu $a2, %lo(D_80144DA4) # addiu $a2, $a2, 0x4da4
/* B3BB50 800C49B0 244E0008 */  addiu $t6, $v0, 8
/* B3BB54 800C49B4 ACAE02B0 */  sw    $t6, 0x2b0($a1)
/* B3BB58 800C49B8 AC470000 */  sw    $a3, ($v0)
/* B3BB5C 800C49BC 8CAF02DC */  lw    $t7, 0x2dc($a1)
/* B3BB60 800C49C0 24070346 */  li    $a3, 838
/* B3BB64 800C49C4 AC4F0004 */  sw    $t7, 4($v0)
/* B3BB68 800C49C8 8CA202B0 */  lw    $v0, 0x2b0($a1)
/* B3BB6C 800C49CC 24580008 */  addiu $t8, $v0, 8
/* B3BB70 800C49D0 ACB802B0 */  sw    $t8, 0x2b0($a1)
/* B3BB74 800C49D4 AC440004 */  sw    $a0, 4($v0)
/* B3BB78 800C49D8 27A40044 */  addiu $a0, $sp, 0x44
/* B3BB7C 800C49DC 0C031AD5 */  jal   Graph_CloseDisps
/* B3BB80 800C49E0 AC480000 */   sw    $t0, ($v0)
/* B3BB84 800C49E4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3BB88 800C49E8 27BD0058 */  addiu $sp, $sp, 0x58
/* B3BB8C 800C49EC 03E00008 */  jr    $ra
/* B3BB90 800C49F0 00000000 */   nop   

glabel func_800C49F4
/* B3BB94 800C49F4 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3BB98 800C49F8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3BB9C 800C49FC 00808025 */  move  $s0, $a0
/* B3BBA0 800C4A00 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3BBA4 800C4A04 3C068014 */  lui   $a2, %hi(D_80144DB0) # $a2, 0x8014
/* B3BBA8 800C4A08 24C64DB0 */  addiu $a2, %lo(D_80144DB0) # addiu $a2, $a2, 0x4db0
/* B3BBAC 800C4A0C 02002825 */  move  $a1, $s0
/* B3BBB0 800C4A10 27A4002C */  addiu $a0, $sp, 0x2c
/* B3BBB4 800C4A14 0C031AB1 */  jal   Graph_OpenDisps
/* B3BBB8 800C4A18 2407034E */   li    $a3, 846
/* B3BBBC 800C4A1C 8E0602C0 */  lw    $a2, 0x2c0($s0)
/* B3BBC0 800C4A20 00C02025 */  move  $a0, $a2
/* B3BBC4 800C4A24 0C031B08 */  jal   Graph_GfxPlusOne
/* B3BBC8 800C4A28 AFA60040 */   sw    $a2, 0x40($sp)
/* B3BBCC 800C4A2C 8E0402B0 */  lw    $a0, 0x2b0($s0)
/* B3BBD0 800C4A30 8FA60040 */  lw    $a2, 0x40($sp)
/* B3BBD4 800C4A34 3C0FDE00 */  lui   $t7, 0xde00
/* B3BBD8 800C4A38 248E0008 */  addiu $t6, $a0, 8
/* B3BBDC 800C4A3C AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* B3BBE0 800C4A40 AC820004 */  sw    $v0, 4($a0)
/* B3BBE4 800C4A44 AC8F0000 */  sw    $t7, ($a0)
/* B3BBE8 800C4A48 3C18DF00 */  lui   $t8, 0xdf00
/* B3BBEC 800C4A4C AC580000 */  sw    $t8, ($v0)
/* B3BBF0 800C4A50 AC400004 */  sw    $zero, 4($v0)
/* B3BBF4 800C4A54 24450008 */  addiu $a1, $v0, 8
/* B3BBF8 800C4A58 AFA50044 */  sw    $a1, 0x44($sp)
/* B3BBFC 800C4A5C 0C031B0A */  jal   Graph_BranchDlist
/* B3BC00 800C4A60 00C02025 */   move  $a0, $a2
/* B3BC04 800C4A64 8FA50044 */  lw    $a1, 0x44($sp)
/* B3BC08 800C4A68 3C068014 */  lui   $a2, %hi(D_80144DBC) # $a2, 0x8014
/* B3BC0C 800C4A6C 24C64DBC */  addiu $a2, %lo(D_80144DBC) # addiu $a2, $a2, 0x4dbc
/* B3BC10 800C4A70 AE0502C0 */  sw    $a1, 0x2c0($s0)
/* B3BC14 800C4A74 02002825 */  move  $a1, $s0
/* B3BC18 800C4A78 27A4002C */  addiu $a0, $sp, 0x2c
/* B3BC1C 800C4A7C 0C031AD5 */  jal   Graph_CloseDisps
/* B3BC20 800C4A80 24070361 */   li    $a3, 865
/* B3BC24 800C4A84 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3BC28 800C4A88 8FB00018 */  lw    $s0, 0x18($sp)
/* B3BC2C 800C4A8C 27BD0048 */  addiu $sp, $sp, 0x48
/* B3BC30 800C4A90 03E00008 */  jr    $ra
/* B3BC34 800C4A94 00000000 */   nop   

glabel func_800C4A98
/* B3BC38 800C4A98 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3BC3C 800C4A9C 00803825 */  move  $a3, $a0
/* B3BC40 800C4AA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3BC44 800C4AA4 3C048016 */  lui   $a0, %hi(gPadMgr) # $a0, 0x8016
/* B3BC48 800C4AA8 248468C0 */  addiu $a0, %lo(gPadMgr) # addiu $a0, $a0, 0x68c0
/* B3BC4C 800C4AAC 24E50014 */  addiu $a1, $a3, 0x14
/* B3BC50 800C4AB0 0C031F82 */  jal   PadMgr_RequestPadData
/* B3BC54 800C4AB4 24060001 */   li    $a2, 1
/* B3BC58 800C4AB8 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3BC5C 800C4ABC 27BD0018 */  addiu $sp, $sp, 0x18
/* B3BC60 800C4AC0 03E00008 */  jr    $ra
/* B3BC64 800C4AC4 00000000 */   nop   

glabel func_800C4AC8
/* B3BC68 800C4AC8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3BC6C 800C4ACC AFBF0014 */  sw    $ra, 0x14($sp)
/* B3BC70 800C4AD0 AFA40020 */  sw    $a0, 0x20($sp)
/* B3BC74 800C4AD4 8C860000 */  lw    $a2, ($a0)
/* B3BC78 800C4AD8 00C02025 */  move  $a0, $a2
/* B3BC7C 800C4ADC 0C031233 */  jal   func_800C48CC
/* B3BC80 800C4AE0 AFA6001C */   sw    $a2, 0x1c($sp)
/* B3BC84 800C4AE4 8FA40020 */  lw    $a0, 0x20($sp)
/* B3BC88 800C4AE8 8C990004 */  lw    $t9, 4($a0)
/* B3BC8C 800C4AEC 0320F809 */  jalr  $t9
/* B3BC90 800C4AF0 00000000 */  nop   
/* B3BC94 800C4AF4 0C0310D1 */  jal   func_800C4344
/* B3BC98 800C4AF8 8FA40020 */   lw    $a0, 0x20($sp)
/* B3BC9C 800C4AFC 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B3BCA0 800C4B00 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B3BCA4 800C4B04 8CE20000 */  lw    $v0, ($a3)
/* B3BCA8 800C4B08 24040001 */  li    $a0, 1
/* B3BCAC 800C4B0C 8FA6001C */  lw    $a2, 0x1c($sp)
/* B3BCB0 800C4B10 84430152 */  lh    $v1, 0x152($v0)
/* B3BCB4 800C4B14 1483002D */  bne   $a0, $v1, .L800C4BCC
/* B3BCB8 800C4B18 28610002 */   slti  $at, $v1, 2
/* B3BCBC 800C4B1C 84430134 */  lh    $v1, 0x134($v0)
/* B3BCC0 800C4B20 3C0F8001 */  lui   $t7, %hi(gViConfigMode) # $t7, 0x8001
/* B3BCC4 800C4B24 25EF3910 */  addiu $t7, %lo(gViConfigMode) # addiu $t7, $t7, 0x3910
/* B3BCC8 800C4B28 04610010 */  bgez  $v1, .L800C4B6C
/* B3BCCC 800C4B2C 3C188001 */   lui   $t8, %hi(gViConfigFeatures) # $t8, 0x8001
/* B3BCD0 800C4B30 A4400134 */  sh    $zero, 0x134($v0)
/* B3BCD4 800C4B34 ACCF0284 */  sw    $t7, 0x284($a2)
/* B3BCD8 800C4B38 8F18943C */  lw    $t8, %lo(gViConfigFeatures)($t8)
/* B3BCDC 800C4B3C 3C018001 */  lui   $at, %hi(gViConfigXScale)
/* B3BCE0 800C4B40 24050002 */  li    $a1, 2
/* B3BCE4 800C4B44 ACD802E4 */  sw    $t8, 0x2e4($a2)
/* B3BCE8 800C4B48 C4249440 */  lwc1  $f4, %lo(gViConfigXScale)($at)
/* B3BCEC 800C4B4C 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BCF0 800C4B50 E4C402F4 */  swc1  $f4, 0x2f4($a2)
/* B3BCF4 800C4B54 C4269444 */  lwc1  $f6, %lo(gViConfigYScale)($at)
/* B3BCF8 800C4B58 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BCFC 800C4B5C 44810000 */  mtc1  $at, $f0
/* B3BD00 800C4B60 E4C602F8 */  swc1  $f6, 0x2f8($a2)
/* B3BD04 800C4B64 1000006D */  b     .L800C4D1C
/* B3BD08 800C4B68 8CE20000 */   lw    $v0, ($a3)
.L800C4B6C:
/* B3BD0C 800C4B6C 18600013 */  blez  $v1, .L800C4BBC
/* B3BD10 800C4B70 3C048016 */   lui   $a0, %hi(D_80166528) # $a0, 0x8016
/* B3BD14 800C4B74 8FA50020 */  lw    $a1, 0x20($sp)
/* B3BD18 800C4B78 24846528 */  addiu $a0, %lo(D_80166528) # addiu $a0, $a0, 0x6528
/* B3BD1C 800C4B7C AFA6001C */  sw    $a2, 0x1c($sp)
/* B3BD20 800C4B80 0C02B2BE */  jal   func_800ACAF8
/* B3BD24 800C4B84 24A50014 */   addiu $a1, $a1, 0x14
/* B3BD28 800C4B88 8FA6001C */  lw    $a2, 0x1c($sp)
/* B3BD2C 800C4B8C 3C038016 */  lui   $v1, %hi(D_80166528) # $v1, 0x8016
/* B3BD30 800C4B90 24636528 */  addiu $v1, %lo(D_80166528) # addiu $v1, $v1, 0x6528
/* B3BD34 800C4B94 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BD38 800C4B98 44810000 */  mtc1  $at, $f0
/* B3BD3C 800C4B9C ACC30284 */  sw    $v1, 0x284($a2)
/* B3BD40 800C4BA0 8C690080 */  lw    $t1, 0x80($v1)
/* B3BD44 800C4BA4 3C078016 */  lui   $a3, %hi(gGameInfo) # $a3, 0x8016
/* B3BD48 800C4BA8 24E7FA90 */  addiu $a3, %lo(gGameInfo) # addiu $a3, $a3, -0x570
/* B3BD4C 800C4BAC E4C002F4 */  swc1  $f0, 0x2f4($a2)
/* B3BD50 800C4BB0 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BD54 800C4BB4 ACC902E4 */  sw    $t1, 0x2e4($a2)
/* B3BD58 800C4BB8 8CE20000 */  lw    $v0, ($a3)
.L800C4BBC:
/* B3BD5C 800C4BBC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BD60 800C4BC0 44810000 */  mtc1  $at, $f0
/* B3BD64 800C4BC4 10000055 */  b     .L800C4D1C
/* B3BD68 800C4BC8 24050002 */   li    $a1, 2
.L800C4BCC:
/* B3BD6C 800C4BCC 1420004F */  bnez  $at, .L800C4D0C
/* B3BD70 800C4BD0 24050002 */   li    $a1, 2
/* B3BD74 800C4BD4 3C0A8001 */  lui   $t2, %hi(gViConfigMode) # $t2, 0x8001
/* B3BD78 800C4BD8 254A3910 */  addiu $t2, %lo(gViConfigMode) # addiu $t2, $t2, 0x3910
/* B3BD7C 800C4BDC ACCA0284 */  sw    $t2, 0x284($a2)
/* B3BD80 800C4BE0 3C0B8001 */  lui   $t3, %hi(gViConfigFeatures) # $t3, 0x8001
/* B3BD84 800C4BE4 8D6B943C */  lw    $t3, %lo(gViConfigFeatures)($t3)
/* B3BD88 800C4BE8 3C018001 */  lui   $at, %hi(gViConfigXScale)
/* B3BD8C 800C4BEC 3C198001 */  lui   $t9, %hi(osViModeMpalLan1) # $t9, 0x8001
/* B3BD90 800C4BF0 ACCB02E4 */  sw    $t3, 0x2e4($a2)
/* B3BD94 800C4BF4 C4289440 */  lwc1  $f8, %lo(gViConfigXScale)($at)
/* B3BD98 800C4BF8 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BD9C 800C4BFC 3C188001 */  lui   $t8, %hi(osViModePalLan1) # $t8, 0x8001
/* B3BDA0 800C4C00 E4C802F4 */  swc1  $f8, 0x2f4($a2)
/* B3BDA4 800C4C04 C42A9444 */  lwc1  $f10, %lo(gViConfigYScale)($at)
/* B3BDA8 800C4C08 24010006 */  li    $at, 6
/* B3BDAC 800C4C0C 3C0A8001 */  lui   $t2, %hi(osViModeFpalLan1) # $t2, 0x8001
/* B3BDB0 800C4C10 E4CA02F8 */  swc1  $f10, 0x2f8($a2)
/* B3BDB4 800C4C14 8CE20000 */  lw    $v0, ($a3)
/* B3BDB8 800C4C18 24050002 */  li    $a1, 2
/* B3BDBC 800C4C1C 3C0D8001 */  lui   $t5, %hi(osViModeNtscLan1) # $t5, 0x8001
/* B3BDC0 800C4C20 84430152 */  lh    $v1, 0x152($v0)
/* B3BDC4 800C4C24 2739AE50 */  addiu $t9, %lo(osViModeMpalLan1) # addiu $t9, $t9, -0x51b0
/* B3BDC8 800C4C28 2718ACA0 */  addiu $t8, %lo(osViModePalLan1) # addiu $t8, $t8, -0x5360
/* B3BDCC 800C4C2C 10610006 */  beq   $v1, $at, .L800C4C48
/* B3BDD0 800C4C30 254AAF20 */   addiu $t2, %lo(osViModeFpalLan1) # addiu $t2, $t2, -0x50e0
/* B3BDD4 800C4C34 14A3000C */  bne   $a1, $v1, .L800C4C68
/* B3BDD8 800C4C38 3C088000 */   lui   $t0, %hi(osTvType) # $t0, 0x8000
/* B3BDDC 800C4C3C 25080300 */  addiu $t0, %lo(osTvType) # addiu $t0, $t0, 0x300
/* B3BDE0 800C4C40 8D0C0000 */  lw    $t4, ($t0)
/* B3BDE4 800C4C44 148C0008 */  bne   $a0, $t4, .L800C4C68
.L800C4C48:
/* B3BDE8 800C4C48 3C013F80 */   li    $at, 0x3F800000 # 0.000000
/* B3BDEC 800C4C4C 44810000 */  mtc1  $at, $f0
/* B3BDF0 800C4C50 25ADAE00 */  addiu $t5, %lo(osViModeNtscLan1) # addiu $t5, $t5, -0x5200
/* B3BDF4 800C4C54 ACCD0284 */  sw    $t5, 0x284($a2)
/* B3BDF8 800C4C58 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BDFC 800C4C5C 8CE20000 */  lw    $v0, ($a3)
/* B3BE00 800C4C60 24050002 */  li    $a1, 2
/* B3BE04 800C4C64 84430152 */  lh    $v1, 0x152($v0)
.L800C4C68:
/* B3BE08 800C4C68 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BE0C 800C4C6C 44810000 */  mtc1  $at, $f0
/* B3BE10 800C4C70 3C088000 */  lui   $t0, %hi(osTvType) # $t0, 0x8000
/* B3BE14 800C4C74 24010005 */  li    $at, 5
/* B3BE18 800C4C78 10610006 */  beq   $v1, $at, .L800C4C94
/* B3BE1C 800C4C7C 25080300 */   addiu $t0, %lo(osTvType) # addiu $t0, $t0, 0x300
/* B3BE20 800C4C80 54A30009 */  bnel  $a1, $v1, .L800C4CA8
/* B3BE24 800C4C84 24010004 */   li    $at, 4
/* B3BE28 800C4C88 8D0E0000 */  lw    $t6, ($t0)
/* B3BE2C 800C4C8C 54AE0006 */  bnel  $a1, $t6, .L800C4CA8
/* B3BE30 800C4C90 24010004 */   li    $at, 4
.L800C4C94:
/* B3BE34 800C4C94 ACD90284 */  sw    $t9, 0x284($a2)
/* B3BE38 800C4C98 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BE3C 800C4C9C 8CE20000 */  lw    $v0, ($a3)
/* B3BE40 800C4CA0 84430152 */  lh    $v1, 0x152($v0)
/* B3BE44 800C4CA4 24010004 */  li    $at, 4
.L800C4CA8:
/* B3BE48 800C4CA8 50610007 */  beql  $v1, $at, .L800C4CC8
/* B3BE4C 800C4CAC ACD80284 */   sw    $t8, 0x284($a2)
/* B3BE50 800C4CB0 54A30009 */  bnel  $a1, $v1, .L800C4CD8
/* B3BE54 800C4CB4 24010003 */   li    $at, 3
/* B3BE58 800C4CB8 8D0F0000 */  lw    $t7, ($t0)
/* B3BE5C 800C4CBC 55E00006 */  bnezl $t7, .L800C4CD8
/* B3BE60 800C4CC0 24010003 */   li    $at, 3
/* B3BE64 800C4CC4 ACD80284 */  sw    $t8, 0x284($a2)
.L800C4CC8:
/* B3BE68 800C4CC8 E4C002F8 */  swc1  $f0, 0x2f8($a2)
/* B3BE6C 800C4CCC 8CE20000 */  lw    $v0, ($a3)
/* B3BE70 800C4CD0 84430152 */  lh    $v1, 0x152($v0)
/* B3BE74 800C4CD4 24010003 */  li    $at, 3
.L800C4CD8:
/* B3BE78 800C4CD8 50610007 */  beql  $v1, $at, .L800C4CF8
/* B3BE7C 800C4CDC ACCA0284 */   sw    $t2, 0x284($a2)
/* B3BE80 800C4CE0 54A3000F */  bnel  $a1, $v1, .L800C4D20
/* B3BE84 800C4CE4 844B1074 */   lh    $t3, 0x1074($v0)
/* B3BE88 800C4CE8 8D090000 */  lw    $t1, ($t0)
/* B3BE8C 800C4CEC 5520000C */  bnezl $t1, .L800C4D20
/* B3BE90 800C4CF0 844B1074 */   lh    $t3, 0x1074($v0)
/* B3BE94 800C4CF4 ACCA0284 */  sw    $t2, 0x284($a2)
.L800C4CF8:
/* B3BE98 800C4CF8 3C018014 */  lui   $at, %hi(D_801450E8)
/* B3BE9C 800C4CFC C43050E8 */  lwc1  $f16, %lo(D_801450E8)($at)
/* B3BEA0 800C4D00 E4D002F8 */  swc1  $f16, 0x2f8($a2)
/* B3BEA4 800C4D04 10000005 */  b     .L800C4D1C
/* B3BEA8 800C4D08 8CE20000 */   lw    $v0, ($a3)
.L800C4D0C:
/* B3BEAC 800C4D0C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B3BEB0 800C4D10 ACC00284 */  sw    $zero, 0x284($a2)
/* B3BEB4 800C4D14 44810000 */  mtc1  $at, $f0
/* B3BEB8 800C4D18 8CE20000 */  lw    $v0, ($a3)
.L800C4D1C:
/* B3BEBC 800C4D1C 844B1074 */  lh    $t3, 0x1074($v0)
.L800C4D20:
/* B3BEC0 800C4D20 24030015 */  li    $v1, 21
/* B3BEC4 800C4D24 546B0046 */  bnel  $v1, $t3, .L800C4E40
/* B3BEC8 800C4D28 84490190 */   lh    $t1, 0x190($v0)
/* B3BECC 800C4D2C 844C1092 */  lh    $t4, 0x1092($v0)
/* B3BED0 800C4D30 24090030 */  li    $t1, 48
/* B3BED4 800C4D34 506C000F */  beql  $v1, $t4, .L800C4D74
/* B3BED8 800C4D38 84431078 */   lh    $v1, 0x1078($v0)
/* B3BEDC 800C4D3C A4431092 */  sh    $v1, 0x1092($v0)
/* B3BEE0 800C4D40 8CED0000 */  lw    $t5, ($a3)
/* B3BEE4 800C4D44 3C048001 */  lui   $a0, %hi(gViConfigAdditionalScanLines) # $a0, 0x8001
/* B3BEE8 800C4D48 24849438 */  addiu $a0, %lo(gViConfigAdditionalScanLines) # addiu $a0, $a0, -0x6bc8
/* B3BEEC 800C4D4C A5A01076 */  sh    $zero, 0x1076($t5)
/* B3BEF0 800C4D50 8CF90000 */  lw    $t9, ($a3)
/* B3BEF4 800C4D54 908E0000 */  lbu   $t6, ($a0)
/* B3BEF8 800C4D58 A72E1078 */  sh    $t6, 0x1078($t9)
/* B3BEFC 800C4D5C 8CEF0000 */  lw    $t7, ($a3)
/* B3BF00 800C4D60 A5E0107A */  sh    $zero, 0x107a($t7)
/* B3BF04 800C4D64 8CF80000 */  lw    $t8, ($a3)
/* B3BF08 800C4D68 A700107C */  sh    $zero, 0x107c($t8)
/* B3BF0C 800C4D6C 8CE20000 */  lw    $v0, ($a3)
/* B3BF10 800C4D70 84431078 */  lh    $v1, 0x1078($v0)
.L800C4D74:
/* B3BF14 800C4D74 3C048001 */  lui   $a0, %hi(gViConfigAdditionalScanLines)
/* B3BF18 800C4D78 24849438 */  addiu $a0, %lo(gViConfigAdditionalScanLines) # addiu $a0, $a0, -0x6bc8
/* B3BF1C 800C4D7C 04630005 */  bgezl $v1, .L800C4D94
/* B3BF20 800C4D80 28610031 */   slti  $at, $v1, 0x31
/* B3BF24 800C4D84 A4401078 */  sh    $zero, 0x1078($v0)
/* B3BF28 800C4D88 8CE20000 */  lw    $v0, ($a3)
/* B3BF2C 800C4D8C 84431078 */  lh    $v1, 0x1078($v0)
/* B3BF30 800C4D90 28610031 */  slti  $at, $v1, 0x31
.L800C4D94:
/* B3BF34 800C4D94 54200005 */  bnezl $at, .L800C4DAC
/* B3BF38 800C4D98 844A107A */   lh    $t2, 0x107a($v0)
/* B3BF3C 800C4D9C A4491078 */  sh    $t1, 0x1078($v0)
/* B3BF40 800C4DA0 8CE20000 */  lw    $v0, ($a3)
/* B3BF44 800C4DA4 84431078 */  lh    $v1, 0x1078($v0)
/* B3BF48 800C4DA8 844A107A */  lh    $t2, 0x107a($v0)
.L800C4DAC:
/* B3BF4C 800C4DAC 55430006 */  bnel  $t2, $v1, .L800C4DC8
/* B3BF50 800C4DB0 A443107A */   sh    $v1, 0x107a($v0)
/* B3BF54 800C4DB4 844B107C */  lh    $t3, 0x107c($v0)
/* B3BF58 800C4DB8 844C1076 */  lh    $t4, 0x1076($v0)
/* B3BF5C 800C4DBC 516C0020 */  beql  $t3, $t4, .L800C4E40
/* B3BF60 800C4DC0 84490190 */   lh    $t1, 0x190($v0)
/* B3BF64 800C4DC4 A443107A */  sh    $v1, 0x107a($v0)
.L800C4DC8:
/* B3BF68 800C4DC8 8CE20000 */  lw    $v0, ($a3)
/* B3BF6C 800C4DCC 3C014370 */  li    $at, 0x43700000 # 0.000000
/* B3BF70 800C4DD0 844D1076 */  lh    $t5, 0x1076($v0)
/* B3BF74 800C4DD4 A44D107C */  sh    $t5, 0x107c($v0)
/* B3BF78 800C4DD8 8CE20000 */  lw    $v0, ($a3)
/* B3BF7C 800C4DDC 844E1078 */  lh    $t6, 0x1078($v0)
/* B3BF80 800C4DE0 A08E0000 */  sb    $t6, ($a0)
/* B3BF84 800C4DE4 84591076 */  lh    $t9, 0x1076($v0)
/* B3BF88 800C4DE8 31CF00FF */  andi  $t7, $t6, 0xff
/* B3BF8C 800C4DEC 1720000E */  bnez  $t9, .L800C4E28
/* B3BF90 800C4DF0 00000000 */   nop   
/* B3BF94 800C4DF4 448F9000 */  mtc1  $t7, $f18
/* B3BF98 800C4DF8 44810000 */  mtc1  $at, $f0
/* B3BF9C 800C4DFC 05E10005 */  bgez  $t7, .L800C4E14
/* B3BFA0 800C4E00 46809120 */   cvt.s.w $f4, $f18
/* B3BFA4 800C4E04 3C014F80 */  li    $at, 0x4F800000 # 0.000000
/* B3BFA8 800C4E08 44813000 */  mtc1  $at, $f6
/* B3BFAC 800C4E0C 00000000 */  nop   
/* B3BFB0 800C4E10 46062100 */  add.s $f4, $f4, $f6
.L800C4E14:
/* B3BFB4 800C4E14 46002200 */  add.s $f8, $f4, $f0
/* B3BFB8 800C4E18 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BFBC 800C4E1C 46080283 */  div.s $f10, $f0, $f8
/* B3BFC0 800C4E20 10000003 */  b     .L800C4E30
/* B3BFC4 800C4E24 E42A9444 */   swc1  $f10, %lo(gViConfigYScale)($at)
.L800C4E28:
/* B3BFC8 800C4E28 3C018001 */  lui   $at, %hi(gViConfigYScale)
/* B3BFCC 800C4E2C E4209444 */  swc1  $f0, %lo(gViConfigYScale)($at)
.L800C4E30:
/* B3BFD0 800C4E30 24180001 */  li    $t8, 1
/* B3BFD4 800C4E34 3C018001 */  lui   $at, %hi(D_80009430) # $at, 0x8001
/* B3BFD8 800C4E38 A0389430 */  sb    $t8, %lo(D_80009430)($at)
/* B3BFDC 800C4E3C 84490190 */  lh    $t1, 0x190($v0)
.L800C4E40:
/* B3BFE0 800C4E40 50A90008 */  beql  $a1, $t1, .L800C4E64
/* B3BFE4 800C4E44 8FA20020 */   lw    $v0, 0x20($sp)
/* B3BFE8 800C4E48 8FA40020 */  lw    $a0, 0x20($sp)
/* B3BFEC 800C4E4C 00C02825 */  move  $a1, $a2
/* B3BFF0 800C4E50 0C0311BB */  jal   func_800C46EC
/* B3BFF4 800C4E54 AFA6001C */   sw    $a2, 0x1c($sp)
/* B3BFF8 800C4E58 0C03127D */  jal   func_800C49F4
/* B3BFFC 800C4E5C 8FA4001C */   lw    $a0, 0x1c($sp)
/* B3C000 800C4E60 8FA20020 */  lw    $v0, 0x20($sp)
.L800C4E64:
/* B3C004 800C4E64 8C4A009C */  lw    $t2, 0x9c($v0)
/* B3C008 800C4E68 254B0001 */  addiu $t3, $t2, 1
/* B3C00C 800C4E6C AC4B009C */  sw    $t3, 0x9c($v0)
/* B3C010 800C4E70 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3C014 800C4E74 27BD0020 */  addiu $sp, $sp, 0x20
/* B3C018 800C4E78 03E00008 */  jr    $ra
/* B3C01C 800C4E7C 00000000 */   nop   

glabel func_800C4E80
/* B3C020 800C4E80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3C024 800C4E84 AFA40018 */  sw    $a0, 0x18($sp)
/* B3C028 800C4E88 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3C02C 800C4E8C 3C048014 */  lui   $a0, %hi(D_80144DC8) # $a0, 0x8014
/* B3C030 800C4E90 AFA5001C */  sw    $a1, 0x1c($sp)
/* B3C034 800C4E94 0C00084C */  jal   osSyncPrintf
/* B3C038 800C4E98 24844DC8 */   addiu $a0, %lo(D_80144DC8) # addiu $a0, $a0, 0x4dc8
/* B3C03C 800C4E9C 8FA40018 */  lw    $a0, 0x18($sp)
/* B3C040 800C4EA0 3C068014 */  lui   $a2, %hi(D_80144DE8) # $a2, 0x8014
/* B3C044 800C4EA4 24C64DE8 */  addiu $a2, %lo(D_80144DE8) # addiu $a2, $a2, 0x4de8
/* B3C048 800C4EA8 8FA5001C */  lw    $a1, 0x1c($sp)
/* B3C04C 800C4EAC 240703E0 */  li    $a3, 992
/* B3C050 800C4EB0 0C03158F */  jal   GameAlloc_MallocDebug
/* B3C054 800C4EB4 24840084 */   addiu $a0, $a0, 0x84
/* B3C058 800C4EB8 8FA30018 */  lw    $v1, 0x18($sp)
/* B3C05C 800C4EBC 10400009 */  beqz  $v0, .L800C4EE4
/* B3C060 800C4EC0 00402825 */   move  $a1, $v0
/* B3C064 800C4EC4 24640074 */  addiu $a0, $v1, 0x74
/* B3C068 800C4EC8 0C030EF5 */  jal   THA_Ct
/* B3C06C 800C4ECC 8FA6001C */   lw    $a2, 0x1c($sp)
/* B3C070 800C4ED0 3C048014 */  lui   $a0, %hi(D_80144DF4) # $a0, 0x8014
/* B3C074 800C4ED4 0C00084C */  jal   osSyncPrintf
/* B3C078 800C4ED8 24844DF4 */   addiu $a0, %lo(D_80144DF4) # addiu $a0, $a0, 0x4df4
/* B3C07C 800C4EDC 1000000D */  b     .L800C4F14
/* B3C080 800C4EE0 8FBF0014 */   lw    $ra, 0x14($sp)
.L800C4EE4:
/* B3C084 800C4EE4 24640074 */  addiu $a0, $v1, 0x74
/* B3C088 800C4EE8 00002825 */  move  $a1, $zero
/* B3C08C 800C4EEC 0C030EF5 */  jal   THA_Ct
/* B3C090 800C4EF0 00003025 */   move  $a2, $zero
/* B3C094 800C4EF4 3C048014 */  lui   $a0, %hi(D_80144E08) # $a0, 0x8014
/* B3C098 800C4EF8 0C00084C */  jal   osSyncPrintf
/* B3C09C 800C4EFC 24844E08 */   addiu $a0, %lo(D_80144E08) # addiu $a0, $a0, 0x4e08
/* B3C0A0 800C4F00 3C048014 */  lui   $a0, %hi(D_80144E1C) # $a0, 0x8014
/* B3C0A4 800C4F04 24844E1C */  addiu $a0, %lo(D_80144E1C) # addiu $a0, $a0, 0x4e1c
/* B3C0A8 800C4F08 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3C0AC 800C4F0C 240503E7 */   li    $a1, 999
/* B3C0B0 800C4F10 8FBF0014 */  lw    $ra, 0x14($sp)
.L800C4F14:
/* B3C0B4 800C4F14 27BD0018 */  addiu $sp, $sp, 0x18
/* B3C0B8 800C4F18 03E00008 */  jr    $ra
/* B3C0BC 800C4F1C 00000000 */   nop   

glabel func_800C4F20
/* B3C0C0 800C4F20 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B3C0C4 800C4F24 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C0C8 800C4F28 AFA50044 */  sw    $a1, 0x44($sp)
/* B3C0CC 800C4F2C 8C8E0078 */  lw    $t6, 0x78($a0)
/* B3C0D0 800C4F30 00803025 */  move  $a2, $a0
/* B3C0D4 800C4F34 24840074 */  addiu $a0, $a0, 0x74
/* B3C0D8 800C4F38 AFA40020 */  sw    $a0, 0x20($sp)
/* B3C0DC 800C4F3C AFA60040 */  sw    $a2, 0x40($sp)
/* B3C0E0 800C4F40 0C030EFE */  jal   THA_Dt
/* B3C0E4 800C4F44 AFAE0028 */   sw    $t6, 0x28($sp)
/* B3C0E8 800C4F48 8FA60040 */  lw    $a2, 0x40($sp)
/* B3C0EC 800C4F4C 8FA50028 */  lw    $a1, 0x28($sp)
/* B3C0F0 800C4F50 24C40084 */  addiu $a0, $a2, 0x84
/* B3C0F4 800C4F54 0C0315C9 */  jal   GameAlloc_Free
/* B3C0F8 800C4F58 AFA40024 */   sw    $a0, 0x24($sp)
/* B3C0FC 800C4F5C 3C048014 */  lui   $a0, %hi(D_80144E28) # $a0, 0x8014
/* B3C100 800C4F60 0C00084C */  jal   osSyncPrintf
/* B3C104 800C4F64 24844E28 */   addiu $a0, %lo(D_80144E28) # addiu $a0, $a0, 0x4e28
/* B3C108 800C4F68 27A40034 */  addiu $a0, $sp, 0x34
/* B3C10C 800C4F6C 27A50030 */  addiu $a1, $sp, 0x30
/* B3C110 800C4F70 0C03F622 */  jal   SystemArena_GetSizes
/* B3C114 800C4F74 27A6002C */   addiu $a2, $sp, 0x2c
/* B3C118 800C4F78 8FB80034 */  lw    $t8, 0x34($sp)
/* B3C11C 800C4F7C 8FAF0044 */  lw    $t7, 0x44($sp)
/* B3C120 800C4F80 3C048014 */  lui   $a0, %hi(D_80144E3C) # $a0, 0x8014
/* B3C124 800C4F84 2719FFF0 */  addiu $t9, $t8, -0x10
/* B3C128 800C4F88 032F082B */  sltu  $at, $t9, $t7
/* B3C12C 800C4F8C 10200017 */  beqz  $at, .L800C4FEC
/* B3C130 800C4F90 24844E3C */   addiu $a0, %lo(D_80144E3C) # addiu $a0, $a0, 0x4e3c
/* B3C134 800C4F94 0C00084C */  jal   osSyncPrintf
/* B3C138 800C4F98 24050007 */   li    $a1, 7
/* B3C13C 800C4F9C 3C048014 */  lui   $a0, %hi(D_80144E40) # $a0, 0x8014
/* B3C140 800C4FA0 0C00084C */  jal   osSyncPrintf
/* B3C144 800C4FA4 24844E40 */   addiu $a0, %lo(D_80144E40) # addiu $a0, $a0, 0x4e40
/* B3C148 800C4FA8 3C048014 */  lui   $a0, %hi(D_80144E48) # $a0, 0x8014
/* B3C14C 800C4FAC 0C00084C */  jal   osSyncPrintf
/* B3C150 800C4FB0 24844E48 */   addiu $a0, %lo(D_80144E48) # addiu $a0, $a0, 0x4e48
/* B3C154 800C4FB4 8FA8002C */  lw    $t0, 0x2c($sp)
/* B3C158 800C4FB8 3C048014 */  lui   $a0, %hi(D_80144E88) # $a0, 0x8014
/* B3C15C 800C4FBC 24844E88 */  addiu $a0, %lo(D_80144E88) # addiu $a0, $a0, 0x4e88
/* B3C160 800C4FC0 8FA50044 */  lw    $a1, 0x44($sp)
/* B3C164 800C4FC4 8FA60034 */  lw    $a2, 0x34($sp)
/* B3C168 800C4FC8 8FA70030 */  lw    $a3, 0x30($sp)
/* B3C16C 800C4FCC 0C00084C */  jal   osSyncPrintf
/* B3C170 800C4FD0 AFA80010 */   sw    $t0, 0x10($sp)
/* B3C174 800C4FD4 3C048014 */  lui   $a0, %hi(D_80144EB4) # $a0, 0x8014
/* B3C178 800C4FD8 0C00084C */  jal   osSyncPrintf
/* B3C17C 800C4FDC 24844EB4 */   addiu $a0, %lo(D_80144EB4) # addiu $a0, $a0, 0x4eb4
/* B3C180 800C4FE0 8FA90034 */  lw    $t1, 0x34($sp)
/* B3C184 800C4FE4 252AFFF0 */  addiu $t2, $t1, -0x10
/* B3C188 800C4FE8 AFAA0044 */  sw    $t2, 0x44($sp)
.L800C4FEC:
/* B3C18C 800C4FEC 3C048014 */  lui   $a0, %hi(D_80144EB8) # $a0, 0x8014
/* B3C190 800C4FF0 24844EB8 */  addiu $a0, %lo(D_80144EB8) # addiu $a0, $a0, 0x4eb8
/* B3C194 800C4FF4 0C00084C */  jal   osSyncPrintf
/* B3C198 800C4FF8 8FA50044 */   lw    $a1, 0x44($sp)
/* B3C19C 800C4FFC 3C068014 */  lui   $a2, %hi(D_80144EDC) # $a2, 0x8014
/* B3C1A0 800C5000 24C64EDC */  addiu $a2, %lo(D_80144EDC) # addiu $a2, $a2, 0x4edc
/* B3C1A4 800C5004 8FA40024 */  lw    $a0, 0x24($sp)
/* B3C1A8 800C5008 8FA50044 */  lw    $a1, 0x44($sp)
/* B3C1AC 800C500C 0C03158F */  jal   GameAlloc_MallocDebug
/* B3C1B0 800C5010 24070409 */   li    $a3, 1033
/* B3C1B4 800C5014 10400009 */  beqz  $v0, .L800C503C
/* B3C1B8 800C5018 00402825 */   move  $a1, $v0
/* B3C1BC 800C501C 8FA40020 */  lw    $a0, 0x20($sp)
/* B3C1C0 800C5020 0C030EF5 */  jal   THA_Ct
/* B3C1C4 800C5024 8FA60044 */   lw    $a2, 0x44($sp)
/* B3C1C8 800C5028 3C048014 */  lui   $a0, %hi(D_80144EE8) # $a0, 0x8014
/* B3C1CC 800C502C 0C00084C */  jal   osSyncPrintf
/* B3C1D0 800C5030 24844EE8 */   addiu $a0, %lo(D_80144EE8) # addiu $a0, $a0, 0x4ee8
/* B3C1D4 800C5034 1000000F */  b     .L800C5074
/* B3C1D8 800C5038 8FBF001C */   lw    $ra, 0x1c($sp)
.L800C503C:
/* B3C1DC 800C503C 8FA40020 */  lw    $a0, 0x20($sp)
/* B3C1E0 800C5040 00002825 */  move  $a1, $zero
/* B3C1E4 800C5044 0C030EF5 */  jal   THA_Ct
/* B3C1E8 800C5048 00003025 */   move  $a2, $zero
/* B3C1EC 800C504C 3C048014 */  lui   $a0, %hi(D_80144EFC) # $a0, 0x8014
/* B3C1F0 800C5050 0C00084C */  jal   osSyncPrintf
/* B3C1F4 800C5054 24844EFC */   addiu $a0, %lo(D_80144EFC) # addiu $a0, $a0, 0x4efc
/* B3C1F8 800C5058 0C03F616 */  jal   SystemArena_Display
/* B3C1FC 800C505C 00000000 */   nop   
/* B3C200 800C5060 3C048014 */  lui   $a0, %hi(D_80144F10) # $a0, 0x8014
/* B3C204 800C5064 24844F10 */  addiu $a0, %lo(D_80144F10) # addiu $a0, $a0, 0x4f10
/* B3C208 800C5068 0C0359C3 */  jal   Fault_AddHungupAndCrash
/* B3C20C 800C506C 24050414 */   li    $a1, 1044
/* B3C210 800C5070 8FBF001C */  lw    $ra, 0x1c($sp)
.L800C5074:
/* B3C214 800C5074 27BD0040 */  addiu $sp, $sp, 0x40
/* B3C218 800C5078 03E00008 */  jr    $ra
/* B3C21C 800C507C 00000000 */   nop   

glabel func_800C5080
/* B3C220 800C5080 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B3C224 800C5084 AFB00018 */  sw    $s0, 0x18($sp)
/* B3C228 800C5088 00808025 */  move  $s0, $a0
/* B3C22C 800C508C AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C230 800C5090 3C048014 */  lui   $a0, %hi(D_80144F1C) # $a0, 0x8014
/* B3C234 800C5094 AFA50034 */  sw    $a1, 0x34($sp)
/* B3C238 800C5098 AFA60038 */  sw    $a2, 0x38($sp)
/* B3C23C 800C509C 0C00084C */  jal   osSyncPrintf
/* B3C240 800C50A0 24844F1C */   addiu $a0, %lo(D_80144F1C) # addiu $a0, $a0, 0x4f1c
/* B3C244 800C50A4 8FAE0038 */  lw    $t6, 0x38($sp)
/* B3C248 800C50A8 240F0001 */  li    $t7, 1
/* B3C24C 800C50AC AE00009C */  sw    $zero, 0x9c($s0)
/* B3C250 800C50B0 AE000004 */  sw    $zero, 4($s0)
/* B3C254 800C50B4 AE000008 */  sw    $zero, 8($s0)
/* B3C258 800C50B8 AE0F0098 */  sw    $t7, 0x98($s0)
/* B3C25C 800C50BC 0C001A78 */  jal   osGetTime
/* B3C260 800C50C0 AE0E0000 */   sw    $t6, ($s0)
/* B3C264 800C50C4 AFA20028 */  sw    $v0, 0x28($sp)
/* B3C268 800C50C8 AFA3002C */  sw    $v1, 0x2c($sp)
/* B3C26C 800C50CC AE000010 */  sw    $zero, 0x10($s0)
/* B3C270 800C50D0 0C001A78 */  jal   osGetTime
/* B3C274 800C50D4 AE00000C */   sw    $zero, 0xc($s0)
/* B3C278 800C50D8 8FB80028 */  lw    $t8, 0x28($sp)
/* B3C27C 800C50DC 8FB9002C */  lw    $t9, 0x2c($sp)
/* B3C280 800C50E0 AFA20020 */  sw    $v0, 0x20($sp)
/* B3C284 800C50E4 00582023 */  subu  $a0, $v0, $t8
/* B3C288 800C50E8 0079082B */  sltu  $at, $v1, $t9
/* B3C28C 800C50EC AFA30024 */  sw    $v1, 0x24($sp)
/* B3C290 800C50F0 00812023 */  subu  $a0, $a0, $at
/* B3C294 800C50F4 24060000 */  li    $a2, 0
/* B3C298 800C50F8 24070040 */  li    $a3, 64
/* B3C29C 800C50FC 0C000E1E */  jal   __ll_mul
/* B3C2A0 800C5100 00792823 */   subu  $a1, $v1, $t9
/* B3C2A4 800C5104 00402025 */  move  $a0, $v0
/* B3C2A8 800C5108 00602825 */  move  $a1, $v1
/* B3C2AC 800C510C 24060000 */  li    $a2, 0
/* B3C2B0 800C5110 0C000DDE */  jal   __ull_div
/* B3C2B4 800C5114 24070BB8 */   li    $a3, 3000
/* B3C2B8 800C5118 3C048014 */  lui   $a0, %hi(D_80144F38) # $a0, 0x8014
/* B3C2BC 800C511C 24844F38 */  addiu $a0, %lo(D_80144F38) # addiu $a0, $a0, 0x4f38
/* B3C2C0 800C5120 00403025 */  move  $a2, $v0
/* B3C2C4 800C5124 0C00084C */  jal   osSyncPrintf
/* B3C2C8 800C5128 00603825 */   move  $a3, $v1
/* B3C2CC 800C512C 8FA80020 */  lw    $t0, 0x20($sp)
/* B3C2D0 800C5130 8FA90024 */  lw    $t1, 0x24($sp)
/* B3C2D4 800C5134 26040084 */  addiu $a0, $s0, 0x84
/* B3C2D8 800C5138 AFA80028 */  sw    $t0, 0x28($sp)
/* B3C2DC 800C513C 0C03160D */  jal   GameAlloc_Init
/* B3C2E0 800C5140 AFA9002C */   sw    $t1, 0x2c($sp)
/* B3C2E4 800C5144 0C001A78 */  jal   osGetTime
/* B3C2E8 800C5148 00000000 */   nop   
/* B3C2EC 800C514C 8FAA0028 */  lw    $t2, 0x28($sp)
/* B3C2F0 800C5150 8FAB002C */  lw    $t3, 0x2c($sp)
/* B3C2F4 800C5154 AFA20020 */  sw    $v0, 0x20($sp)
/* B3C2F8 800C5158 004A2023 */  subu  $a0, $v0, $t2
/* B3C2FC 800C515C 006B082B */  sltu  $at, $v1, $t3
/* B3C300 800C5160 AFA30024 */  sw    $v1, 0x24($sp)
/* B3C304 800C5164 00812023 */  subu  $a0, $a0, $at
/* B3C308 800C5168 24060000 */  li    $a2, 0
/* B3C30C 800C516C 24070040 */  li    $a3, 64
/* B3C310 800C5170 0C000E1E */  jal   __ll_mul
/* B3C314 800C5174 006B2823 */   subu  $a1, $v1, $t3
/* B3C318 800C5178 00402025 */  move  $a0, $v0
/* B3C31C 800C517C 00602825 */  move  $a1, $v1
/* B3C320 800C5180 24060000 */  li    $a2, 0
/* B3C324 800C5184 0C000DDE */  jal   __ull_div
/* B3C328 800C5188 24070BB8 */   li    $a3, 3000
/* B3C32C 800C518C 3C048014 */  lui   $a0, %hi(D_80144F60) # $a0, 0x8014
/* B3C330 800C5190 24844F60 */  addiu $a0, %lo(D_80144F60) # addiu $a0, $a0, 0x4f60
/* B3C334 800C5194 00403025 */  move  $a2, $v0
/* B3C338 800C5198 0C00084C */  jal   osSyncPrintf
/* B3C33C 800C519C 00603825 */   move  $a3, $v1
/* B3C340 800C51A0 8FAC0020 */  lw    $t4, 0x20($sp)
/* B3C344 800C51A4 8FAD0024 */  lw    $t5, 0x24($sp)
/* B3C348 800C51A8 02002025 */  move  $a0, $s0
/* B3C34C 800C51AC 3C050010 */  lui   $a1, 0x10
/* B3C350 800C51B0 AFAC0028 */  sw    $t4, 0x28($sp)
/* B3C354 800C51B4 0C0313A0 */  jal   func_800C4E80
/* B3C358 800C51B8 AFAD002C */   sw    $t5, 0x2c($sp)
/* B3C35C 800C51BC 3C0F8016 */  lui   $t7, %hi(gGameInfo) # $t7, 0x8016
/* B3C360 800C51C0 8DEFFA90 */  lw    $t7, %lo(gGameInfo)($t7)
/* B3C364 800C51C4 240E0003 */  li    $t6, 3
/* B3C368 800C51C8 02002025 */  move  $a0, $s0
/* B3C36C 800C51CC A5EE0110 */  sh    $t6, 0x110($t7)
/* B3C370 800C51D0 8FB90034 */  lw    $t9, 0x34($sp)
/* B3C374 800C51D4 0320F809 */  jalr  $t9
/* B3C378 800C51D8 00000000 */  nop   
/* B3C37C 800C51DC 0C001A78 */  jal   osGetTime
/* B3C380 800C51E0 00000000 */   nop   
/* B3C384 800C51E4 8FB80028 */  lw    $t8, 0x28($sp)
/* B3C388 800C51E8 8FB9002C */  lw    $t9, 0x2c($sp)
/* B3C38C 800C51EC AFA20020 */  sw    $v0, 0x20($sp)
/* B3C390 800C51F0 00582023 */  subu  $a0, $v0, $t8
/* B3C394 800C51F4 0079082B */  sltu  $at, $v1, $t9
/* B3C398 800C51F8 AFA30024 */  sw    $v1, 0x24($sp)
/* B3C39C 800C51FC 00812023 */  subu  $a0, $a0, $at
/* B3C3A0 800C5200 24060000 */  li    $a2, 0
/* B3C3A4 800C5204 24070040 */  li    $a3, 64
/* B3C3A8 800C5208 0C000E1E */  jal   __ll_mul
/* B3C3AC 800C520C 00792823 */   subu  $a1, $v1, $t9
/* B3C3B0 800C5210 00402025 */  move  $a0, $v0
/* B3C3B4 800C5214 00602825 */  move  $a1, $v1
/* B3C3B8 800C5218 24060000 */  li    $a2, 0
/* B3C3BC 800C521C 0C000DDE */  jal   __ull_div
/* B3C3C0 800C5220 24070BB8 */   li    $a3, 3000
/* B3C3C4 800C5224 3C048014 */  lui   $a0, %hi(D_80144F80) # $a0, 0x8014
/* B3C3C8 800C5228 24844F80 */  addiu $a0, %lo(D_80144F80) # addiu $a0, $a0, 0x4f80
/* B3C3CC 800C522C 00403025 */  move  $a2, $v0
/* B3C3D0 800C5230 0C00084C */  jal   osSyncPrintf
/* B3C3D4 800C5234 00603825 */   move  $a3, $v1
/* B3C3D8 800C5238 8FA80020 */  lw    $t0, 0x20($sp)
/* B3C3DC 800C523C 8FA90024 */  lw    $t1, 0x24($sp)
/* B3C3E0 800C5240 3C048014 */  lui   $a0, %hi(D_80144F98) # $a0, 0x8014
/* B3C3E4 800C5244 3C068014 */  lui   $a2, %hi(D_80144FA8) # $a2, 0x8014
/* B3C3E8 800C5248 AFA80028 */  sw    $t0, 0x28($sp)
/* B3C3EC 800C524C AFA9002C */  sw    $t1, 0x2c($sp)
/* B3C3F0 800C5250 8E050008 */  lw    $a1, 8($s0)
/* B3C3F4 800C5254 24C64FA8 */  addiu $a2, %lo(D_80144FA8) # addiu $a2, $a2, 0x4fa8
/* B3C3F8 800C5258 24844F98 */  addiu $a0, %lo(D_80144F98) # addiu $a0, $a0, 0x4f98
/* B3C3FC 800C525C 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3C400 800C5260 24070440 */   li    $a3, 1088
/* B3C404 800C5264 3C048016 */  lui   $a0, %hi(D_801664F0) # $a0, 0x8016
/* B3C408 800C5268 0C02B39C */  jal   func_800ACE70
/* B3C40C 800C526C 248464F0 */   addiu $a0, %lo(D_801664F0) # addiu $a0, $a0, 0x64f0
/* B3C410 800C5270 3C048016 */  lui   $a0, %hi(D_80166500) # $a0, 0x8016
/* B3C414 800C5274 0C02B648 */  jal   func_800AD920
/* B3C418 800C5278 24846500 */   addiu $a0, %lo(D_80166500) # addiu $a0, $a0, 0x6500
/* B3C41C 800C527C 3C048016 */  lui   $a0, %hi(D_80166510) # $a0, 0x8016
/* B3C420 800C5280 0C02B400 */  jal   func_800AD000
/* B3C424 800C5284 24846510 */   addiu $a0, %lo(D_80166510) # addiu $a0, $a0, 0x6510
/* B3C428 800C5288 3C0A8016 */  lui   $t2, %hi(gGameInfo) # $t2, 0x8016
/* B3C42C 800C528C 8D4AFA90 */  lw    $t2, %lo(gGameInfo)($t2)
/* B3C430 800C5290 3C048016 */  lui   $a0, %hi(D_80166528) # $a0, 0x8016
/* B3C434 800C5294 854B0134 */  lh    $t3, 0x134($t2)
/* B3C438 800C5298 15600003 */  bnez  $t3, .L800C52A8
/* B3C43C 800C529C 00000000 */   nop   
/* B3C440 800C52A0 0C02B28A */  jal   func_800ACA28
/* B3C444 800C52A4 24846528 */   addiu $a0, %lo(D_80166528) # addiu $a0, $a0, 0x6528
.L800C52A8:
/* B3C448 800C52A8 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3C44C 800C52AC 0C032666 */  jal   func_800C9998
/* B3C450 800C52B0 248464D0 */   addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3C454 800C52B4 0C02A82D */  jal   func_800AA0B4
/* B3C458 800C52B8 00000000 */   nop   
/* B3C45C 800C52BC 8E040000 */  lw    $a0, ($s0)
/* B3C460 800C52C0 00002825 */  move  $a1, $zero
/* B3C464 800C52C4 24060001 */  li    $a2, 1
/* B3C468 800C52C8 0C000C18 */  jal   osSendMesg
/* B3C46C 800C52CC 2484005C */   addiu $a0, $a0, 0x5c
/* B3C470 800C52D0 0C001A78 */  jal   osGetTime
/* B3C474 800C52D4 00000000 */   nop   
/* B3C478 800C52D8 8FAC0028 */  lw    $t4, 0x28($sp)
/* B3C47C 800C52DC 8FAD002C */  lw    $t5, 0x2c($sp)
/* B3C480 800C52E0 24060000 */  li    $a2, 0
/* B3C484 800C52E4 004C2023 */  subu  $a0, $v0, $t4
/* B3C488 800C52E8 006D082B */  sltu  $at, $v1, $t5
/* B3C48C 800C52EC 00812023 */  subu  $a0, $a0, $at
/* B3C490 800C52F0 24070040 */  li    $a3, 64
/* B3C494 800C52F4 0C000E1E */  jal   __ll_mul
/* B3C498 800C52F8 006D2823 */   subu  $a1, $v1, $t5
/* B3C49C 800C52FC 00402025 */  move  $a0, $v0
/* B3C4A0 800C5300 00602825 */  move  $a1, $v1
/* B3C4A4 800C5304 24060000 */  li    $a2, 0
/* B3C4A8 800C5308 0C000DDE */  jal   __ull_div
/* B3C4AC 800C530C 24070BB8 */   li    $a3, 3000
/* B3C4B0 800C5310 3C048014 */  lui   $a0, %hi(D_80144FB4) # $a0, 0x8014
/* B3C4B4 800C5314 24844FB4 */  addiu $a0, %lo(D_80144FB4) # addiu $a0, $a0, 0x4fb4
/* B3C4B8 800C5318 00403025 */  move  $a2, $v0
/* B3C4BC 800C531C 0C00084C */  jal   osSyncPrintf
/* B3C4C0 800C5320 00603825 */   move  $a3, $v1
/* B3C4C4 800C5324 3C048016 */  lui   $a0, %hi(D_801665B0) # $a0, 0x8016
/* B3C4C8 800C5328 3C05800C */  lui   $a1, %hi(func_800C4130) # $a1, 0x800c
/* B3C4CC 800C532C 24A54130 */  addiu $a1, %lo(func_800C4130) # addiu $a1, $a1, 0x4130
/* B3C4D0 800C5330 248465B0 */  addiu $a0, %lo(D_801665B0) # addiu $a0, $a0, 0x65b0
/* B3C4D4 800C5334 00003025 */  move  $a2, $zero
/* B3C4D8 800C5338 0C035077 */  jal   Fault_AddClient
/* B3C4DC 800C533C 00003825 */   move  $a3, $zero
/* B3C4E0 800C5340 3C048014 */  lui   $a0, %hi(D_80144FD4) # $a0, 0x8014
/* B3C4E4 800C5344 0C00084C */  jal   osSyncPrintf
/* B3C4E8 800C5348 24844FD4 */   addiu $a0, %lo(D_80144FD4) # addiu $a0, $a0, 0x4fd4
/* B3C4EC 800C534C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3C4F0 800C5350 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C4F4 800C5354 27BD0030 */  addiu $sp, $sp, 0x30
/* B3C4F8 800C5358 03E00008 */  jr    $ra
/* B3C4FC 800C535C 00000000 */   nop   

glabel func_800C5360
/* B3C500 800C5360 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B3C504 800C5364 AFB00018 */  sw    $s0, 0x18($sp)
/* B3C508 800C5368 00808025 */  move  $s0, $a0
/* B3C50C 800C536C AFBF001C */  sw    $ra, 0x1c($sp)
/* B3C510 800C5370 3C048014 */  lui   $a0, %hi(D_80144FF0) # $a0, 0x8014
/* B3C514 800C5374 0C00084C */  jal   osSyncPrintf
/* B3C518 800C5378 24844FF0 */   addiu $a0, %lo(D_80144FF0) # addiu $a0, $a0, 0x4ff0
/* B3C51C 800C537C 0C030F08 */  jal   func_800C3C20
/* B3C520 800C5380 00000000 */   nop   
/* B3C524 800C5384 0C03CC15 */  jal   func_800F3054
/* B3C528 800C5388 00000000 */   nop   
/* B3C52C 800C538C 8E040000 */  lw    $a0, ($s0)
/* B3C530 800C5390 00002825 */  move  $a1, $zero
/* B3C534 800C5394 24060001 */  li    $a2, 1
/* B3C538 800C5398 0C000CA0 */  jal   osRecvMesg
/* B3C53C 800C539C 2484005C */   addiu $a0, $a0, 0x5c
/* B3C540 800C53A0 3C048014 */  lui   $a0, %hi(D_80145008) # $a0, 0x8014
/* B3C544 800C53A4 3C068014 */  lui   $a2, %hi(D_80145018) # $a2, 0x8014
/* B3C548 800C53A8 24C65018 */  addiu $a2, %lo(D_80145018) # addiu $a2, $a2, 0x5018
/* B3C54C 800C53AC 24845008 */  addiu $a0, %lo(D_80145008) # addiu $a0, $a0, 0x5008
/* B3C550 800C53B0 8E050008 */  lw    $a1, 8($s0)
/* B3C554 800C53B4 0C000B58 */  jal   LogUtils_CheckNullPointer
/* B3C558 800C53B8 24070473 */   li    $a3, 1139
/* B3C55C 800C53BC 8E020008 */  lw    $v0, 8($s0)
/* B3C560 800C53C0 10400003 */  beqz  $v0, .L800C53D0
/* B3C564 800C53C4 00000000 */   nop   
/* B3C568 800C53C8 0040F809 */  jalr  $v0
/* B3C56C 800C53CC 02002025 */  move  $a0, $s0
.L800C53D0:
/* B3C570 800C53D0 0C02A83C */  jal   func_800AA0F0
/* B3C574 800C53D4 00000000 */   nop   
/* B3C578 800C53D8 3C048016 */  lui   $a0, %hi(D_801664D0) # $a0, 0x8016
/* B3C57C 800C53DC 0C03266F */  jal   func_800C99BC
/* B3C580 800C53E0 248464D0 */   addiu $a0, %lo(D_801664D0) # addiu $a0, $a0, 0x64d0
/* B3C584 800C53E4 3C048016 */  lui   $a0, %hi(D_801664F0) # $a0, 0x8016
/* B3C588 800C53E8 0C02B3A4 */  jal   func_800ACE90
/* B3C58C 800C53EC 248464F0 */   addiu $a0, %lo(D_801664F0) # addiu $a0, $a0, 0x64f0
/* B3C590 800C53F0 3C048016 */  lui   $a0, %hi(D_80166500) # $a0, 0x8016
/* B3C594 800C53F4 0C02B654 */  jal   func_800AD950
/* B3C598 800C53F8 24846500 */   addiu $a0, %lo(D_80166500) # addiu $a0, $a0, 0x6500
/* B3C59C 800C53FC 3C048016 */  lui   $a0, %hi(D_80166510) # $a0, 0x8016
/* B3C5A0 800C5400 0C02B415 */  jal   func_800AD054
/* B3C5A4 800C5404 24846510 */   addiu $a0, %lo(D_80166510) # addiu $a0, $a0, 0x6510
/* B3C5A8 800C5408 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3C5AC 800C540C 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3C5B0 800C5410 3C048016 */  lui   $a0, %hi(D_80166528) # $a0, 0x8016
/* B3C5B4 800C5414 85CF0134 */  lh    $t7, 0x134($t6)
/* B3C5B8 800C5418 15E00003 */  bnez  $t7, .L800C5428
/* B3C5BC 800C541C 00000000 */   nop   
/* B3C5C0 800C5420 0C02B2A4 */  jal   func_800ACA90
/* B3C5C4 800C5424 24846528 */   addiu $a0, %lo(D_80166528) # addiu $a0, $a0, 0x6528
.L800C5428:
/* B3C5C8 800C5428 0C030EFE */  jal   THA_Dt
/* B3C5CC 800C542C 26040074 */   addiu $a0, $s0, 0x74
/* B3C5D0 800C5430 0C0315F3 */  jal   GameAlloc_Cleanup
/* B3C5D4 800C5434 26040084 */   addiu $a0, $s0, 0x84
/* B3C5D8 800C5438 0C03F616 */  jal   SystemArena_Display
/* B3C5DC 800C543C 00000000 */   nop   
/* B3C5E0 800C5440 3C048016 */  lui   $a0, %hi(D_801665B0) # $a0, 0x8016
/* B3C5E4 800C5444 0C0350B0 */  jal   Fault_RemoveClient
/* B3C5E8 800C5448 248465B0 */   addiu $a0, %lo(D_801665B0) # addiu $a0, $a0, 0x65b0
/* B3C5EC 800C544C 3C048014 */  lui   $a0, %hi(D_80145024) # $a0, 0x8014
/* B3C5F0 800C5450 0C00084C */  jal   osSyncPrintf
/* B3C5F4 800C5454 24845024 */   addiu $a0, %lo(D_80145024) # addiu $a0, $a0, 0x5024
/* B3C5F8 800C5458 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3C5FC 800C545C 8FB00018 */  lw    $s0, 0x18($sp)
/* B3C600 800C5460 27BD0020 */  addiu $sp, $sp, 0x20
/* B3C604 800C5464 03E00008 */  jr    $ra
/* B3C608 800C5468 00000000 */   nop   

glabel func_800C546C
/* B3C60C 800C546C 03E00008 */  jr    $ra
/* B3C610 800C5470 8C82000C */   lw    $v0, 0xc($a0)

glabel func_800C5474
/* B3C614 800C5474 03E00008 */  jr    $ra
/* B3C618 800C5478 8C820010 */   lw    $v0, 0x10($a0)

glabel func_800C547C
/* B3C61C 800C547C 03E00008 */  jr    $ra
/* B3C620 800C5480 8C820098 */   lw    $v0, 0x98($a0)

glabel Game_Alloc
/* B3C624 800C5484 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3C628 800C5488 AFB0001C */  sw    $s0, 0x1c($sp)
/* B3C62C 800C548C AFBF0024 */  sw    $ra, 0x24($sp)
/* B3C630 800C5490 24900074 */  addiu $s0, $a0, 0x74
/* B3C634 800C5494 AFB10020 */  sw    $s1, 0x20($sp)
/* B3C638 800C5498 AFA5002C */  sw    $a1, 0x2c($sp)
/* B3C63C 800C549C AFA60030 */  sw    $a2, 0x30($sp)
/* B3C640 800C54A0 AFA70034 */  sw    $a3, 0x34($sp)
/* B3C644 800C54A4 0C030EE6 */  jal   THA_IsCrash
/* B3C648 800C54A8 02002025 */   move  $a0, $s0
/* B3C64C 800C54AC 10400005 */  beqz  $v0, .L800C54C4
/* B3C650 800C54B0 3C048014 */   lui   $a0, %hi(D_8014503C) # $a0, 0x8014
/* B3C654 800C54B4 0C00084C */  jal   osSyncPrintf
/* B3C658 800C54B8 2484503C */   addiu $a0, %lo(D_8014503C) # addiu $a0, $a0, 0x503c
/* B3C65C 800C54BC 1000001A */  b     .L800C5528
/* B3C660 800C54C0 00008825 */   move  $s1, $zero
.L800C54C4:
/* B3C664 800C54C4 0C030EE2 */  jal   THA_GetSize
/* B3C668 800C54C8 02002025 */   move  $a0, $s0
/* B3C66C 800C54CC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B3C670 800C54D0 0045082B */  sltu  $at, $v0, $a1
/* B3C674 800C54D4 1020000A */  beqz  $at, .L800C5500
/* B3C678 800C54D8 00000000 */   nop   
/* B3C67C 800C54DC 0C030EE2 */  jal   THA_GetSize
/* B3C680 800C54E0 02002025 */   move  $a0, $s0
/* B3C684 800C54E4 3C048014 */  lui   $a0, %hi(D_80145054) # $a0, 0x8014
/* B3C688 800C54E8 24845054 */  addiu $a0, %lo(D_80145054) # addiu $a0, $a0, 0x5054
/* B3C68C 800C54EC 8FA5002C */  lw    $a1, 0x2c($sp)
/* B3C690 800C54F0 0C00084C */  jal   osSyncPrintf
/* B3C694 800C54F4 00403025 */   move  $a2, $v0
/* B3C698 800C54F8 1000000B */  b     .L800C5528
/* B3C69C 800C54FC 00008825 */   move  $s1, $zero
.L800C5500:
/* B3C6A0 800C5500 0C030ED5 */  jal   THA_AllocEndAlign16
/* B3C6A4 800C5504 02002025 */   move  $a0, $s0
/* B3C6A8 800C5508 00408825 */  move  $s1, $v0
/* B3C6AC 800C550C 0C030EE6 */  jal   THA_IsCrash
/* B3C6B0 800C5510 02002025 */   move  $a0, $s0
/* B3C6B4 800C5514 10400004 */  beqz  $v0, .L800C5528
/* B3C6B8 800C5518 3C048014 */   lui   $a0, %hi(D_8014509C) # $a0, 0x8014
/* B3C6BC 800C551C 0C00084C */  jal   osSyncPrintf
/* B3C6C0 800C5520 2484509C */   addiu $a0, %lo(D_8014509C) # addiu $a0, $a0, 0x509c
/* B3C6C4 800C5524 00008825 */  move  $s1, $zero
.L800C5528:
/* B3C6C8 800C5528 12200010 */  beqz  $s1, .L800C556C
/* B3C6CC 800C552C 3C048014 */   lui   $a0, %hi(D_801450B8) # $a0, 0x8014
/* B3C6D0 800C5530 0C00084C */  jal   osSyncPrintf
/* B3C6D4 800C5534 248450B8 */   addiu $a0, %lo(D_801450B8) # addiu $a0, $a0, 0x50b8
/* B3C6D8 800C5538 8FA5002C */  lw    $a1, 0x2c($sp)
/* B3C6DC 800C553C 8FAE0030 */  lw    $t6, 0x30($sp)
/* B3C6E0 800C5540 8FAF0034 */  lw    $t7, 0x34($sp)
/* B3C6E4 800C5544 3C048014 */  lui   $a0, %hi(D_801450C0) # $a0, 0x8014
/* B3C6E8 800C5548 248450C0 */  addiu $a0, %lo(D_801450C0) # addiu $a0, $a0, 0x50c0
/* B3C6EC 800C554C 02203025 */  move  $a2, $s1
/* B3C6F0 800C5550 02253821 */  addu  $a3, $s1, $a1
/* B3C6F4 800C5554 AFAE0010 */  sw    $t6, 0x10($sp)
/* B3C6F8 800C5558 0C00084C */  jal   osSyncPrintf
/* B3C6FC 800C555C AFAF0014 */   sw    $t7, 0x14($sp)
/* B3C700 800C5560 3C048014 */  lui   $a0, %hi(D_801450E4) # $a0, 0x8014
/* B3C704 800C5564 0C00084C */  jal   osSyncPrintf
/* B3C708 800C5568 248450E4 */   addiu $a0, %lo(D_801450E4) # addiu $a0, $a0, 0x50e4
.L800C556C:
/* B3C70C 800C556C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B3C710 800C5570 02201025 */  move  $v0, $s1
/* B3C714 800C5574 8FB10020 */  lw    $s1, 0x20($sp)
/* B3C718 800C5578 8FB0001C */  lw    $s0, 0x1c($sp)
/* B3C71C 800C557C 03E00008 */  jr    $ra
/* B3C720 800C5580 27BD0028 */   addiu $sp, $sp, 0x28

glabel func_800C5584
/* B3C724 800C5584 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3C728 800C5588 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3C72C 800C558C 0C030ED5 */  jal   THA_AllocEndAlign16
/* B3C730 800C5590 24840074 */   addiu $a0, $a0, 0x74
/* B3C734 800C5594 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3C738 800C5598 27BD0018 */  addiu $sp, $sp, 0x18
/* B3C73C 800C559C 03E00008 */  jr    $ra
/* B3C740 800C55A0 00000000 */   nop   

glabel func_800C55A4
/* B3C744 800C55A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B3C748 800C55A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B3C74C 800C55AC 0C030EE2 */  jal   THA_GetSize
/* B3C750 800C55B0 24840074 */   addiu $a0, $a0, 0x74
/* B3C754 800C55B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B3C758 800C55B8 27BD0018 */  addiu $sp, $sp, 0x18
/* B3C75C 800C55BC 03E00008 */  jr    $ra
/* B3C760 800C55C0 00000000 */   nop   

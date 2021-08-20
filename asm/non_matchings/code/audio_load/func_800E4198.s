glabel func_800E4198
/* B5B338 800E4198 27BDFF98 */  addiu $sp, $sp, -0x68
/* B5B33C 800E419C AFB30030 */  sw    $s3, 0x30($sp)
/* B5B340 800E41A0 3C138017 */  lui   $s3, %hi(gAudioContext) # $s3, 0x8017
/* B5B344 800E41A4 2673F180 */  addiu $s3, %lo(gAudioContext) # addiu $s3, $s3, -0xe80
/* B5B348 800E41A8 8E6E176C */  lw    $t6, 0x176c($s3)
/* B5B34C 800E41AC AFB50038 */  sw    $s5, 0x38($sp)
/* B5B350 800E41B0 AFB2002C */  sw    $s2, 0x2c($sp)
/* B5B354 800E41B4 00C09025 */  move  $s2, $a2
/* B5B358 800E41B8 00E0A825 */  move  $s5, $a3
/* B5B35C 800E41BC AFBF0044 */  sw    $ra, 0x44($sp)
/* B5B360 800E41C0 AFB70040 */  sw    $s7, 0x40($sp)
/* B5B364 800E41C4 AFB6003C */  sw    $s6, 0x3c($sp)
/* B5B368 800E41C8 AFB40034 */  sw    $s4, 0x34($sp)
/* B5B36C 800E41CC AFB10028 */  sw    $s1, 0x28($sp)
/* B5B370 800E41D0 AFB00024 */  sw    $s0, 0x24($sp)
/* B5B374 800E41D4 11C00003 */  beqz  $t6, .L800E41E4
/* B5B378 800E41D8 00001025 */   move  $v0, $zero
/* B5B37C 800E41DC 10000003 */  b     .L800E41EC
/* B5B380 800E41E0 24020001 */   li    $v0, 1
.L800E41E4:
/* B5B384 800E41E4 3C018017 */  lui   $at, %hi(D_8016B780) # $at, 0x8017
/* B5B388 800E41E8 AC20B780 */  sw    $zero, %lo(D_8016B780)($at)
.L800E41EC:
/* B5B38C 800E41EC AE601768 */  sw    $zero, 0x1768($s3)
/* B5B390 800E41F0 02403025 */  move  $a2, $s2
/* B5B394 800E41F4 0C038A0F */  jal   func_800E283C
/* B5B398 800E41F8 AFA2004C */   sw    $v0, 0x4c($sp)
/* B5B39C 800E41FC 8E641768 */  lw    $a0, 0x1768($s3)
/* B5B3A0 800E4200 00002825 */  move  $a1, $zero
/* B5B3A4 800E4204 0000A025 */  move  $s4, $zero
/* B5B3A8 800E4208 18800011 */  blez  $a0, .L800E4250
/* B5B3AC 800E420C 3C0F8017 */   lui   $t7, %hi(gAudioContext)
/* B5B3B0 800E4210 25E2F180 */  addiu $v0, $t7, %lo(gAudioContext)
/* B5B3B4 800E4214 0004C080 */  sll   $t8, $a0, 2
/* B5B3B8 800E4218 03023021 */  addu  $a2, $t8, $v0
/* B5B3BC 800E421C 2403FFF0 */  li    $v1, -16
.L800E4220:
/* B5B3C0 800E4220 8C590B68 */  lw    $t9, 0xb68($v0)
/* B5B3C4 800E4224 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B3C8 800E4228 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B3CC 800E422C 8F2A0000 */  lw    $t2, ($t9)
/* B5B3D0 800E4230 24420004 */  addiu $v0, $v0, 4
/* B5B3D4 800E4234 01415824 */  and   $t3, $t2, $at
/* B5B3D8 800E4238 256C000F */  addiu $t4, $t3, 0xf
/* B5B3DC 800E423C 0046082B */  sltu  $at, $v0, $a2
/* B5B3E0 800E4240 01836824 */  and   $t5, $t4, $v1
/* B5B3E4 800E4244 1420FFF6 */  bnez  $at, .L800E4220
/* B5B3E8 800E4248 00AD2821 */   addu  $a1, $a1, $t5
/* B5B3EC 800E424C 0000A025 */  move  $s4, $zero
.L800E4250:
/* B5B3F0 800E4250 188000A7 */  blez  $a0, .L800E44F0
/* B5B3F4 800E4254 24170001 */   li    $s7, 1
/* B5B3F8 800E4258 24160003 */  li    $s6, 3
/* B5B3FC 800E425C 8E6E176C */  lw    $t6, 0x176c($s3)
.L800E4260:
/* B5B400 800E4260 24010078 */  li    $at, 120
/* B5B404 800E4264 0014C080 */  sll   $t8, $s4, 2
/* B5B408 800E4268 11C100A1 */  beq   $t6, $at, .L800E44F0
/* B5B40C 800E426C 02787821 */   addu  $t7, $s3, $t8
/* B5B410 800E4270 8DF00B68 */  lw    $s0, 0xb68($t7)
/* B5B414 800E4274 12A00005 */  beqz  $s5, .L800E428C
/* B5B418 800E4278 00008825 */   move  $s1, $zero
/* B5B41C 800E427C 52B7002D */  beql  $s5, $s7, .L800E4334
/* B5B420 800E4280 8E030000 */   lw    $v1, ($s0)
/* B5B424 800E4284 10000052 */  b     .L800E43D0
/* B5B428 800E4288 00000000 */   nop
.L800E428C:
/* B5B42C 800E428C 8E030000 */  lw    $v1, ($s0)
/* B5B430 800E4290 8E590010 */  lw    $t9, 0x10($s2)
/* B5B434 800E4294 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B438 800E4298 00031100 */  sll   $v0, $v1, 4
/* B5B43C 800E429C 00021782 */  srl   $v0, $v0, 0x1e
/* B5B440 800E42A0 1722000A */  bne   $t9, $v0, .L800E42CC
/* B5B444 800E42A4 3421FFFF */   ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B448 800E42A8 8E450000 */  lw    $a1, ($s2)
/* B5B44C 800E42AC 8E060004 */  lw    $a2, 4($s0)
/* B5B450 800E42B0 00023E00 */  sll   $a3, $v0, 0x18
/* B5B454 800E42B4 00073E03 */  sra   $a3, $a3, 0x18
/* B5B458 800E42B8 AFB70010 */  sw    $s7, 0x10($sp)
/* B5B45C 800E42BC 0C038171 */  jal   func_800E05C4
/* B5B460 800E42C0 00612024 */   and   $a0, $v1, $at
/* B5B464 800E42C4 10000042 */  b     .L800E43D0
/* B5B468 800E42C8 00408825 */   move  $s1, $v0
.L800E42CC:
/* B5B46C 800E42CC 8E4A0014 */  lw    $t2, 0x14($s2)
/* B5B470 800E42D0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B474 800E42D4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B478 800E42D8 15420009 */  bne   $t2, $v0, .L800E4300
/* B5B47C 800E42DC 00612024 */   and   $a0, $v1, $at
/* B5B480 800E42E0 8E450004 */  lw    $a1, 4($s2)
/* B5B484 800E42E4 8E060004 */  lw    $a2, 4($s0)
/* B5B488 800E42E8 00023E00 */  sll   $a3, $v0, 0x18
/* B5B48C 800E42EC 00073E03 */  sra   $a3, $a3, 0x18
/* B5B490 800E42F0 0C038171 */  jal   func_800E05C4
/* B5B494 800E42F4 AFB70010 */   sw    $s7, 0x10($sp)
/* B5B498 800E42F8 10000035 */  b     .L800E43D0
/* B5B49C 800E42FC 00408825 */   move  $s1, $v0
.L800E4300:
/* B5B4A0 800E4300 16C20033 */  bne   $s6, $v0, .L800E43D0
/* B5B4A4 800E4304 3C0100FF */   lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B4A8 800E4308 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B4AC 800E430C 8E060004 */  lw    $a2, 4($s0)
/* B5B4B0 800E4310 00023E00 */  sll   $a3, $v0, 0x18
/* B5B4B4 800E4314 00073E03 */  sra   $a3, $a3, 0x18
/* B5B4B8 800E4318 AFB70010 */  sw    $s7, 0x10($sp)
/* B5B4BC 800E431C 00612024 */  and   $a0, $v1, $at
/* B5B4C0 800E4320 0C038171 */  jal   func_800E05C4
/* B5B4C4 800E4324 240500FE */   li    $a1, 254
/* B5B4C8 800E4328 10000029 */  b     .L800E43D0
/* B5B4CC 800E432C 00408825 */   move  $s1, $v0
/* B5B4D0 800E4330 8E030000 */  lw    $v1, ($s0)
.L800E4334:
/* B5B4D4 800E4334 8E4B0010 */  lw    $t3, 0x10($s2)
/* B5B4D8 800E4338 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B4DC 800E433C 00031100 */  sll   $v0, $v1, 4
/* B5B4E0 800E4340 00021782 */  srl   $v0, $v0, 0x1e
/* B5B4E4 800E4344 1562000A */  bne   $t3, $v0, .L800E4370
/* B5B4E8 800E4348 3421FFFF */   ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B4EC 800E434C 8E450000 */  lw    $a1, ($s2)
/* B5B4F0 800E4350 8E060004 */  lw    $a2, 4($s0)
/* B5B4F4 800E4354 00023E00 */  sll   $a3, $v0, 0x18
/* B5B4F8 800E4358 00073E03 */  sra   $a3, $a3, 0x18
/* B5B4FC 800E435C AFA00010 */  sw    $zero, 0x10($sp)
/* B5B500 800E4360 0C038171 */  jal   func_800E05C4
/* B5B504 800E4364 00612024 */   and   $a0, $v1, $at
/* B5B508 800E4368 10000019 */  b     .L800E43D0
/* B5B50C 800E436C 00408825 */   move  $s1, $v0
.L800E4370:
/* B5B510 800E4370 8E4C0014 */  lw    $t4, 0x14($s2)
/* B5B514 800E4374 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B518 800E4378 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B51C 800E437C 15820009 */  bne   $t4, $v0, .L800E43A4
/* B5B520 800E4380 00612024 */   and   $a0, $v1, $at
/* B5B524 800E4384 8E450004 */  lw    $a1, 4($s2)
/* B5B528 800E4388 8E060004 */  lw    $a2, 4($s0)
/* B5B52C 800E438C 00023E00 */  sll   $a3, $v0, 0x18
/* B5B530 800E4390 00073E03 */  sra   $a3, $a3, 0x18
/* B5B534 800E4394 0C038171 */  jal   func_800E05C4
/* B5B538 800E4398 AFA00010 */   sw    $zero, 0x10($sp)
/* B5B53C 800E439C 1000000C */  b     .L800E43D0
/* B5B540 800E43A0 00408825 */   move  $s1, $v0
.L800E43A4:
/* B5B544 800E43A4 16C2000A */  bne   $s6, $v0, .L800E43D0
/* B5B548 800E43A8 3C0100FF */   lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B54C 800E43AC 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B550 800E43B0 8E060004 */  lw    $a2, 4($s0)
/* B5B554 800E43B4 00023E00 */  sll   $a3, $v0, 0x18
/* B5B558 800E43B8 00073E03 */  sra   $a3, $a3, 0x18
/* B5B55C 800E43BC AFA00010 */  sw    $zero, 0x10($sp)
/* B5B560 800E43C0 00612024 */  and   $a0, $v1, $at
/* B5B564 800E43C4 0C038171 */  jal   func_800E05C4
/* B5B568 800E43C8 240500FE */   li    $a1, 254
/* B5B56C 800E43CC 00408825 */  move  $s1, $v0
.L800E43D0:
/* B5B570 800E43D0 16200003 */  bnez  $s1, .L800E43E0
/* B5B574 800E43D4 00000000 */   nop
/* B5B578 800E43D8 10000041 */  b     .L800E44E0
/* B5B57C 800E43DC 8E641768 */   lw    $a0, 0x1768($s3)
.L800E43E0:
/* B5B580 800E43E0 52A00006 */  beql  $s5, $zero, .L800E43FC
/* B5B584 800E43E4 8E030000 */   lw    $v1, ($s0)
/* B5B588 800E43E8 52B70023 */  beql  $s5, $s7, .L800E4478
/* B5B58C 800E43EC 8E6A176C */   lw    $t2, 0x176c($s3)
/* B5B590 800E43F0 1000003B */  b     .L800E44E0
/* B5B594 800E43F4 8E641768 */   lw    $a0, 0x1768($s3)
/* B5B598 800E43F8 8E030000 */  lw    $v1, ($s0)
.L800E43FC:
/* B5B59C 800E43FC 24010001 */  li    $at, 1
/* B5B5A0 800E4400 02202825 */  move  $a1, $s1
/* B5B5A4 800E4404 00031100 */  sll   $v0, $v1, 4
/* B5B5A8 800E4408 00021782 */  srl   $v0, $v0, 0x1e
/* B5B5AC 800E440C 1441000E */  bne   $v0, $at, .L800E4448
/* B5B5B0 800E4410 00403825 */   move  $a3, $v0
/* B5B5B4 800E4414 8E6D2838 */  lw    $t5, 0x2838($s3)
/* B5B5B8 800E4418 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B5BC 800E441C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B5C0 800E4420 00613024 */  and   $a2, $v1, $at
/* B5B5C4 800E4424 8E040004 */  lw    $a0, 4($s0)
/* B5B5C8 800E4428 02202825 */  move  $a1, $s1
/* B5B5CC 800E442C 0C038AF3 */  jal   func_800E2BCC
/* B5B5D0 800E4430 85A70002 */   lh    $a3, 2($t5)
/* B5B5D4 800E4434 920E0000 */  lbu   $t6, ($s0)
/* B5B5D8 800E4438 AE110004 */  sw    $s1, 4($s0)
/* B5B5DC 800E443C 31D8FFF3 */  andi  $t8, $t6, 0xfff3
/* B5B5E0 800E4440 1000000A */  b     .L800E446C
/* B5B5E4 800E4444 A2180000 */   sb    $t8, ($s0)
.L800E4448:
/* B5B5E8 800E4448 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B5EC 800E444C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B5F0 800E4450 00613024 */  and   $a2, $v1, $at
/* B5B5F4 800E4454 0C038AAA */  jal   Audio_DMAFastCopy
/* B5B5F8 800E4458 8E040004 */   lw    $a0, 4($s0)
/* B5B5FC 800E445C 920F0000 */  lbu   $t7, ($s0)
/* B5B600 800E4460 AE110004 */  sw    $s1, 4($s0)
/* B5B604 800E4464 31F9FFF3 */  andi  $t9, $t7, 0xfff3
/* B5B608 800E4468 A2190000 */  sb    $t9, ($s0)
.L800E446C:
/* B5B60C 800E446C 1000001C */  b     .L800E44E0
/* B5B610 800E4470 8E641768 */   lw    $a0, 0x1768($s3)
/* B5B614 800E4474 8E6A176C */  lw    $t2, 0x176c($s3)
.L800E4478:
/* B5B618 800E4478 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B61C 800E447C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B620 800E4480 000A5880 */  sll   $t3, $t2, 2
/* B5B624 800E4484 016A5821 */  addu  $t3, $t3, $t2
/* B5B628 800E4488 000B5880 */  sll   $t3, $t3, 2
/* B5B62C 800E448C 026B1021 */  addu  $v0, $s3, $t3
/* B5B630 800E4490 AC500D6C */  sw    $s0, 0xd6c($v0)
/* B5B634 800E4494 AC510D70 */  sw    $s1, 0xd70($v0)
/* B5B638 800E4498 8E6C176C */  lw    $t4, 0x176c($s3)
/* B5B63C 800E449C AC400D78 */  sw    $zero, 0xd78($v0)
/* B5B640 800E44A0 24420D68 */  addiu $v0, $v0, 0xd68
/* B5B644 800E44A4 000C6E00 */  sll   $t5, $t4, 0x18
/* B5B648 800E44A8 01A17025 */  or    $t6, $t5, $at
/* B5B64C 800E44AC AC4E000C */  sw    $t6, 0xc($v0)
/* B5B650 800E44B0 8E030000 */  lw    $v1, ($s0)
/* B5B654 800E44B4 8E180004 */  lw    $t8, 4($s0)
/* B5B658 800E44B8 00617824 */  and   $t7, $v1, $at
/* B5B65C 800E44BC 00035100 */  sll   $t2, $v1, 4
/* B5B660 800E44C0 000A5F82 */  srl   $t3, $t2, 0x1e
/* B5B664 800E44C4 030FC821 */  addu  $t9, $t8, $t7
/* B5B668 800E44C8 032B6021 */  addu  $t4, $t9, $t3
/* B5B66C 800E44CC AC4C0000 */  sw    $t4, ($v0)
/* B5B670 800E44D0 8E6D176C */  lw    $t5, 0x176c($s3)
/* B5B674 800E44D4 8E641768 */  lw    $a0, 0x1768($s3)
/* B5B678 800E44D8 25AE0001 */  addiu $t6, $t5, 1
/* B5B67C 800E44DC AE6E176C */  sw    $t6, 0x176c($s3)
.L800E44E0:
/* B5B680 800E44E0 26940001 */  addiu $s4, $s4, 1
/* B5B684 800E44E4 0284082A */  slt   $at, $s4, $a0
/* B5B688 800E44E8 5420FF5D */  bnezl $at, .L800E4260
/* B5B68C 800E44EC 8E6E176C */   lw    $t6, 0x176c($s3)
.L800E44F0:
/* B5B690 800E44F0 8E69176C */  lw    $t1, 0x176c($s3)
/* B5B694 800E44F4 AE601768 */  sw    $zero, 0x1768($s3)
/* B5B698 800E44F8 8FB8004C */  lw    $t8, 0x4c($sp)
/* B5B69C 800E44FC 5120001A */  beql  $t1, $zero, .L800E4568
/* B5B6A0 800E4500 8FBF0044 */   lw    $ra, 0x44($sp)
/* B5B6A4 800E4504 17000017 */  bnez  $t8, .L800E4564
/* B5B6A8 800E4508 00097880 */   sll   $t7, $t1, 2
/* B5B6AC 800E450C 01E97821 */  addu  $t7, $t7, $t1
/* B5B6B0 800E4510 000F7880 */  sll   $t7, $t7, 2
/* B5B6B4 800E4514 026F1021 */  addu  $v0, $s3, $t7
/* B5B6B8 800E4518 8C500D58 */  lw    $s0, 0xd58($v0)
/* B5B6BC 800E451C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B6C0 800E4520 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B6C4 800E4524 8E030000 */  lw    $v1, ($s0)
/* B5B6C8 800E4528 8C450D5C */  lw    $a1, 0xd5c($v0)
/* B5B6CC 800E452C 3C0A8017 */  lui   $t2, %hi(gAudioContext+0x1e78) # $t2, 0x8017
/* B5B6D0 800E4530 00613024 */  and   $a2, $v1, $at
/* B5B6D4 800E4534 00064302 */  srl   $t0, $a2, 0xc
/* B5B6D8 800E4538 8E040004 */  lw    $a0, 4($s0)
/* B5B6DC 800E453C 25080001 */  addiu $t0, $t0, 1
/* B5B6E0 800E4540 254A0FF8 */  addiu $t2, %lo(gAudioContext+0x1e78) # addiu $t2, $t2, 0xff8
/* B5B6E4 800E4544 AFAA0014 */  sw    $t2, 0x14($sp)
/* B5B6E8 800E4548 AFA80010 */  sw    $t0, 0x10($sp)
/* B5B6EC 800E454C 8C590D60 */  lw    $t9, 0xd60($v0)
/* B5B6F0 800E4550 00033900 */  sll   $a3, $v1, 4
/* B5B6F4 800E4554 24420D54 */  addiu $v0, $v0, 0xd54
/* B5B6F8 800E4558 00073F82 */  srl   $a3, $a3, 0x1e
/* B5B6FC 800E455C 0C038EB2 */  jal   Audio_InitAsyncReq
/* B5B700 800E4560 AFB90018 */   sw    $t9, 0x18($sp)
.L800E4564:
/* B5B704 800E4564 8FBF0044 */  lw    $ra, 0x44($sp)
.L800E4568:
/* B5B708 800E4568 8FB00024 */  lw    $s0, 0x24($sp)
/* B5B70C 800E456C 8FB10028 */  lw    $s1, 0x28($sp)
/* B5B710 800E4570 8FB2002C */  lw    $s2, 0x2c($sp)
/* B5B714 800E4574 8FB30030 */  lw    $s3, 0x30($sp)
/* B5B718 800E4578 8FB40034 */  lw    $s4, 0x34($sp)
/* B5B71C 800E457C 8FB50038 */  lw    $s5, 0x38($sp)
/* B5B720 800E4580 8FB6003C */  lw    $s6, 0x3c($sp)
/* B5B724 800E4584 8FB70040 */  lw    $s7, 0x40($sp)
/* B5B728 800E4588 03E00008 */  jr    $ra
/* B5B72C 800E458C 27BD0068 */   addiu $sp, $sp, 0x68


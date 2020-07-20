glabel func_800E3414
/* B5A5B4 800E3414 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B5A5B8 800E3418 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5A5BC 800E341C AFB00020 */  sw    $s0, 0x20($sp)
/* B5A5C0 800E3420 00C08025 */  move  $s0, $a2
/* B5A5C4 800E3424 AFA40030 */  sw    $a0, 0x30($sp)
/* B5A5C8 800E3428 0C038D78 */  jal   func_800E35E0
/* B5A5CC 800E342C AFA50034 */   sw    $a1, 0x34($sp)
/* B5A5D0 800E3430 14400004 */  bnez  $v0, .L800E3444
/* B5A5D4 800E3434 00404025 */   move  $t0, $v0
/* B5A5D8 800E3438 A2000000 */  sb    $zero, ($s0)
/* B5A5DC 800E343C 10000063 */  b     .L800E35CC
/* B5A5E0 800E3440 2402FFFF */   li    $v0, -1
.L800E3444:
/* B5A5E4 800E3444 8C4E0000 */  lw    $t6, ($v0)
/* B5A5E8 800E3448 3C098017 */  lui   $t1, %hi(gAudioContext) # $t1, 0x8017
/* B5A5EC 800E344C 24190002 */  li    $t9, 2
/* B5A5F0 800E3450 000E7900 */  sll   $t7, $t6, 4
/* B5A5F4 800E3454 000FC782 */  srl   $t8, $t7, 0x1e
/* B5A5F8 800E3458 17000004 */  bnez  $t8, .L800E346C
/* B5A5FC 800E345C 2529F180 */   addiu $t1, %lo(gAudioContext) # addiu $t1, $t1, -0xe80
/* B5A600 800E3460 A2190000 */  sb    $t9, ($s0)
/* B5A604 800E3464 10000059 */  b     .L800E35CC
/* B5A608 800E3468 00001025 */   move  $v0, $zero
.L800E346C:
/* B5A60C 800E346C 8D2A1D4C */  lw    $t2, 0x1d4c($t1)
/* B5A610 800E3470 24010003 */  li    $at, 3
/* B5A614 800E3474 000A5880 */  sll   $t3, $t2, 2
/* B5A618 800E3478 016A5823 */  subu  $t3, $t3, $t2
/* B5A61C 800E347C 000B58C0 */  sll   $t3, $t3, 3
/* B5A620 800E3480 016A5821 */  addu  $t3, $t3, $t2
/* B5A624 800E3484 000B5880 */  sll   $t3, $t3, 2
/* B5A628 800E3488 012B1821 */  addu  $v1, $t1, $t3
/* B5A62C 800E348C 8C6C1D64 */  lw    $t4, 0x1d64($v1)
/* B5A630 800E3490 24631D50 */  addiu $v1, $v1, 0x1d50
/* B5A634 800E3494 55810003 */  bnel  $t4, $at, .L800E34A4
/* B5A638 800E3498 8D0E0000 */   lw    $t6, ($t0)
/* B5A63C 800E349C AC600014 */  sw    $zero, 0x14($v1)
/* B5A640 800E34A0 8D0E0000 */  lw    $t6, ($t0)
.L800E34A4:
/* B5A644 800E34A4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5A648 800E34A8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5A64C 800E34AC AC6E0020 */  sw    $t6, 0x20($v1)
/* B5A650 800E34B0 8D0D0004 */  lw    $t5, 4($t0)
/* B5A654 800E34B4 AC6D0024 */  sw    $t5, 0x24($v1)
/* B5A658 800E34B8 8D0E0008 */  lw    $t6, 8($t0)
/* B5A65C 800E34BC AC6E0028 */  sw    $t6, 0x28($v1)
/* B5A660 800E34C0 8D0D000C */  lw    $t5, 0xc($t0)
/* B5A664 800E34C4 AC70001C */  sw    $s0, 0x1c($v1)
/* B5A668 800E34C8 AC6D002C */  sw    $t5, 0x2c($v1)
/* B5A66C 800E34CC 8D020000 */  lw    $v0, ($t0)
/* B5A670 800E34D0 8D060004 */  lw    $a2, 4($t0)
/* B5A674 800E34D4 AFA8002C */  sw    $t0, 0x2c($sp)
/* B5A678 800E34D8 00023900 */  sll   $a3, $v0, 4
/* B5A67C 800E34DC 00073F82 */  srl   $a3, $a3, 0x1e
/* B5A680 800E34E0 00073E00 */  sll   $a3, $a3, 0x18
/* B5A684 800E34E4 00073E03 */  sra   $a3, $a3, 0x18
/* B5A688 800E34E8 AFA30028 */  sw    $v1, 0x28($sp)
/* B5A68C 800E34EC AFA00010 */  sw    $zero, 0x10($sp)
/* B5A690 800E34F0 8FA50030 */  lw    $a1, 0x30($sp)
/* B5A694 800E34F4 0C038171 */  jal   func_800E05C4
/* B5A698 800E34F8 00412024 */   and   $a0, $v0, $at
/* B5A69C 800E34FC 8FA30028 */  lw    $v1, 0x28($sp)
/* B5A6A0 800E3500 8FA8002C */  lw    $t0, 0x2c($sp)
/* B5A6A4 800E3504 3C098017 */  lui   $t1, %hi(gAudioContext) # $t1, 0x8017
/* B5A6A8 800E3508 2529F180 */  addiu $t1, %lo(gAudioContext) # addiu $t1, $t1, -0xe80
/* B5A6AC 800E350C 14400010 */  bnez  $v0, .L800E3550
/* B5A6B0 800E3510 AC62000C */   sw    $v0, 0xc($v1)
/* B5A6B4 800E3514 8D020000 */  lw    $v0, ($t0)
/* B5A6B8 800E3518 24010001 */  li    $at, 1
/* B5A6BC 800E351C 00027900 */  sll   $t7, $v0, 4
/* B5A6C0 800E3520 000FC782 */  srl   $t8, $t7, 0x1e
/* B5A6C4 800E3524 13010004 */  beq   $t8, $at, .L800E3538
/* B5A6C8 800E3528 0002CF02 */   srl   $t9, $v0, 0x1c
/* B5A6CC 800E352C 24010002 */  li    $at, 2
/* B5A6D0 800E3530 17210004 */  bne   $t9, $at, .L800E3544
/* B5A6D4 800E3534 240A0003 */   li    $t2, 3
.L800E3538:
/* B5A6D8 800E3538 A2000000 */  sb    $zero, ($s0)
/* B5A6DC 800E353C 10000023 */  b     .L800E35CC
/* B5A6E0 800E3540 2402FFFF */   li    $v0, -1
.L800E3544:
/* B5A6E4 800E3544 A20A0000 */  sb    $t2, ($s0)
/* B5A6E8 800E3548 10000020 */  b     .L800E35CC
/* B5A6EC 800E354C 2402FFFF */   li    $v0, -1
.L800E3550:
/* B5A6F0 800E3550 24020001 */  li    $v0, 1
/* B5A6F4 800E3554 AC620014 */  sw    $v0, 0x14($v1)
/* B5A6F8 800E3558 8D0B0000 */  lw    $t3, ($t0)
/* B5A6FC 800E355C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5A700 800E3560 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5A704 800E3564 01616024 */  and   $t4, $t3, $at
/* B5A708 800E3568 8C6F000C */  lw    $t7, 0xc($v1)
/* B5A70C 800E356C 258D000F */  addiu $t5, $t4, 0xf
/* B5A710 800E3570 2401FFF0 */  li    $at, -16
/* B5A714 800E3574 01A17024 */  and   $t6, $t5, $at
/* B5A718 800E3578 AC6E0018 */  sw    $t6, 0x18($v1)
/* B5A71C 800E357C AC6F0010 */  sw    $t7, 0x10($v1)
/* B5A720 800E3580 8D180004 */  lw    $t8, 4($t0)
/* B5A724 800E3584 AC780008 */  sw    $t8, 8($v1)
/* B5A728 800E3588 8D190000 */  lw    $t9, ($t0)
/* B5A72C 800E358C 00195100 */  sll   $t2, $t9, 4
/* B5A730 800E3590 000A5F82 */  srl   $t3, $t2, 0x1e
/* B5A734 800E3594 A06B0000 */  sb    $t3, ($v1)
/* B5A738 800E3598 8FAC0030 */  lw    $t4, 0x30($sp)
/* B5A73C 800E359C 316E00FF */  andi  $t6, $t3, 0xff
/* B5A740 800E35A0 A06C0001 */  sb    $t4, 1($v1)
/* B5A744 800E35A4 8FAD0034 */  lw    $t5, 0x34($sp)
/* B5A748 800E35A8 144E0004 */  bne   $v0, $t6, .L800E35BC
/* B5A74C 800E35AC A46D0002 */   sh    $t5, 2($v1)
/* B5A750 800E35B0 8D2F2838 */  lw    $t7, 0x2838($t1)
/* B5A754 800E35B4 85F80002 */  lh    $t8, 2($t7)
/* B5A758 800E35B8 AC780004 */  sw    $t8, 4($v1)
.L800E35BC:
/* B5A75C 800E35BC 8D391D4C */  lw    $t9, 0x1d4c($t1)
/* B5A760 800E35C0 00001025 */  move  $v0, $zero
/* B5A764 800E35C4 3B2A0001 */  xori  $t2, $t9, 1
/* B5A768 800E35C8 AD2A1D4C */  sw    $t2, 0x1d4c($t1)
.L800E35CC:
/* B5A76C 800E35CC 8FBF0024 */  lw    $ra, 0x24($sp)
/* B5A770 800E35D0 8FB00020 */  lw    $s0, 0x20($sp)
/* B5A774 800E35D4 27BD0030 */  addiu $sp, $sp, 0x30
/* B5A778 800E35D8 03E00008 */  jr    $ra
/* B5A77C 800E35DC 00000000 */   nop


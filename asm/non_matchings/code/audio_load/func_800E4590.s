glabel func_800E4590
/* B5B730 800E4590 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5B734 800E4594 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5B738 800E4598 8CEE176C */  lw    $t6, 0x176c($a3)
/* B5B73C 800E459C 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B5B740 800E45A0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B5B744 800E45A4 19C00061 */  blez  $t6, .L800E472C
/* B5B748 800E45A8 AFB00028 */   sw    $s0, 0x28($sp)
/* B5B74C 800E45AC 1080000B */  beqz  $a0, .L800E45DC
/* B5B750 800E45B0 27A5004C */   addiu $a1, $sp, 0x4c
/* B5B754 800E45B4 3C048017 */  lui   $a0, %hi(gAudioContext+0x1e78) # $a0, 0x8017
/* B5B758 800E45B8 24840FF8 */  addiu $a0, %lo(gAudioContext+0x1e78) # addiu $a0, $a0, 0xff8
/* B5B75C 800E45BC 27A5004C */  addiu $a1, $sp, 0x4c
/* B5B760 800E45C0 0C000CA0 */  jal   osRecvMesg
/* B5B764 800E45C4 00003025 */   move  $a2, $zero
/* B5B768 800E45C8 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5B76C 800E45CC 24E7F180 */  addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5B770 800E45D0 ACE0176C */  sw    $zero, 0x176c($a3)
/* B5B774 800E45D4 10000056 */  b     .L800E4730
/* B5B778 800E45D8 00001025 */   move  $v0, $zero
.L800E45DC:
/* B5B77C 800E45DC 3C048017 */  lui   $a0, %hi(gAudioContext+0x1e78) # $a0, 0x8017
/* B5B780 800E45E0 24840FF8 */  addiu $a0, %lo(gAudioContext+0x1e78) # addiu $a0, $a0, 0xff8
/* B5B784 800E45E4 0C000CA0 */  jal   osRecvMesg
/* B5B788 800E45E8 00003025 */   move  $a2, $zero
/* B5B78C 800E45EC 3C078017 */  lui   $a3, %hi(gAudioContext) # $a3, 0x8017
/* B5B790 800E45F0 2401FFFF */  li    $at, -1
/* B5B794 800E45F4 14410003 */  bne   $v0, $at, .L800E4604
/* B5B798 800E45F8 24E7F180 */   addiu $a3, %lo(gAudioContext) # addiu $a3, $a3, -0xe80
/* B5B79C 800E45FC 1000004C */  b     .L800E4730
/* B5B7A0 800E4600 00001025 */   move  $v0, $zero
.L800E4604:
/* B5B7A4 800E4604 8FA4004C */  lw    $a0, 0x4c($sp)
/* B5B7A8 800E4608 24090001 */  li    $t1, 1
/* B5B7AC 800E460C 240B0014 */  li    $t3, 20
/* B5B7B0 800E4610 00042602 */  srl   $a0, $a0, 0x18
/* B5B7B4 800E4614 00047880 */  sll   $t7, $a0, 2
/* B5B7B8 800E4618 01E47821 */  addu  $t7, $t7, $a0
/* B5B7BC 800E461C 000F7880 */  sll   $t7, $t7, 2
/* B5B7C0 800E4620 00EF1021 */  addu  $v0, $a3, $t7
/* B5B7C4 800E4624 8C580D78 */  lw    $t8, 0xd78($v0)
/* B5B7C8 800E4628 24460D68 */  addiu $a2, $v0, 0xd68
/* B5B7CC 800E462C 00C01825 */  move  $v1, $a2
/* B5B7D0 800E4630 17000014 */  bnez  $t8, .L800E4684
/* B5B7D4 800E4634 AFA4004C */   sw    $a0, 0x4c($sp)
/* B5B7D8 800E4638 8CC20004 */  lw    $v0, 4($a2)
/* B5B7DC 800E463C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B7E0 800E4640 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B7E4 800E4644 8C440000 */  lw    $a0, ($v0)
/* B5B7E8 800E4648 8C590004 */  lw    $t9, 4($v0)
/* B5B7EC 800E464C 8CD80000 */  lw    $t8, ($a2)
/* B5B7F0 800E4650 00816024 */  and   $t4, $a0, $at
/* B5B7F4 800E4654 00047100 */  sll   $t6, $a0, 4
/* B5B7F8 800E4658 000E7F82 */  srl   $t7, $t6, 0x1e
/* B5B7FC 800E465C 032C6821 */  addu  $t5, $t9, $t4
/* B5B800 800E4660 01AF2821 */  addu  $a1, $t5, $t7
/* B5B804 800E4664 54B80007 */  bnel  $a1, $t8, .L800E4684
/* B5B808 800E4668 AC690010 */   sw    $t1, 0x10($v1)
/* B5B80C 800E466C 904C0000 */  lbu   $t4, ($v0)
/* B5B810 800E4670 8CD90008 */  lw    $t9, 8($a2)
/* B5B814 800E4674 318EFFF3 */  andi  $t6, $t4, 0xfff3
/* B5B818 800E4678 A04E0000 */  sb    $t6, ($v0)
/* B5B81C 800E467C AC590004 */  sw    $t9, 4($v0)
/* B5B820 800E4680 AC690010 */  sw    $t1, 0x10($v1)
.L800E4684:
/* B5B824 800E4684 24090001 */  li    $t1, 1
.L800E4688:
/* B5B828 800E4688 8CE2176C */  lw    $v0, 0x176c($a3)
/* B5B82C 800E468C 18400027 */  blez  $v0, .L800E472C
/* B5B830 800E4690 2458FFFF */   addiu $t8, $v0, -1
/* B5B834 800E4694 004B0019 */  multu $v0, $t3
/* B5B838 800E4698 00006812 */  mflo  $t5
/* B5B83C 800E469C 00ED1821 */  addu  $v1, $a3, $t5
/* B5B840 800E46A0 8C6F0D64 */  lw    $t7, 0xd64($v1)
/* B5B844 800E46A4 24630D54 */  addiu $v1, $v1, 0xd54
/* B5B848 800E46A8 552F0004 */  bnel  $t1, $t7, .L800E46BC
/* B5B84C 800E46AC 8C620004 */   lw    $v0, 4($v1)
/* B5B850 800E46B0 1000FFF5 */  b     .L800E4688
/* B5B854 800E46B4 ACF8176C */   sw    $t8, 0x176c($a3)
/* B5B858 800E46B8 8C620004 */  lw    $v0, 4($v1)
.L800E46BC:
/* B5B85C 800E46BC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5B860 800E46C0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5B864 800E46C4 8C440000 */  lw    $a0, ($v0)
/* B5B868 800E46C8 8C500004 */  lw    $s0, 4($v0)
/* B5B86C 800E46CC 8C6C0000 */  lw    $t4, ($v1)
/* B5B870 800E46D0 00813024 */  and   $a2, $a0, $at
/* B5B874 800E46D4 00044100 */  sll   $t0, $a0, 4
/* B5B878 800E46D8 00084782 */  srl   $t0, $t0, 0x1e
/* B5B87C 800E46DC 0206C821 */  addu  $t9, $s0, $a2
/* B5B880 800E46E0 00065302 */  srl   $t2, $a2, 0xc
/* B5B884 800E46E4 03282821 */  addu  $a1, $t9, $t0
/* B5B888 800E46E8 10AC0006 */  beq   $a1, $t4, .L800E4704
/* B5B88C 800E46EC 254A0001 */   addiu $t2, $t2, 1
/* B5B890 800E46F0 AC690010 */  sw    $t1, 0x10($v1)
/* B5B894 800E46F4 8CEE176C */  lw    $t6, 0x176c($a3)
/* B5B898 800E46F8 25CDFFFF */  addiu $t5, $t6, -1
/* B5B89C 800E46FC 1000FFE2 */  b     .L800E4688
/* B5B8A0 800E4700 ACED176C */   sw    $t5, 0x176c($a3)
.L800E4704:
/* B5B8A4 800E4704 8C650008 */  lw    $a1, 8($v1)
/* B5B8A8 800E4708 3C0F8017 */  lui   $t7, %hi(gAudioContext+0x1e78) # $t7, 0x8017
/* B5B8AC 800E470C 25EF0FF8 */  addiu $t7, %lo(gAudioContext+0x1e78) # addiu $t7, $t7, 0xff8
/* B5B8B0 800E4710 AFAF0014 */  sw    $t7, 0x14($sp)
/* B5B8B4 800E4714 AFAA0010 */  sw    $t2, 0x10($sp)
/* B5B8B8 800E4718 8C78000C */  lw    $t8, 0xc($v1)
/* B5B8BC 800E471C 02002025 */  move  $a0, $s0
/* B5B8C0 800E4720 01003825 */  move  $a3, $t0
/* B5B8C4 800E4724 0C038EB2 */  jal   Audio_InitAsyncReq
/* B5B8C8 800E4728 AFB80018 */   sw    $t8, 0x18($sp)
.L800E472C:
/* B5B8CC 800E472C 24020001 */  li    $v0, 1
.L800E4730:
/* B5B8D0 800E4730 8FBF002C */  lw    $ra, 0x2c($sp)
/* B5B8D4 800E4734 8FB00028 */  lw    $s0, 0x28($sp)
/* B5B8D8 800E4738 27BD0058 */  addiu $sp, $sp, 0x58
/* B5B8DC 800E473C 03E00008 */  jr    $ra
/* B5B8E0 800E4740 00000000 */   nop


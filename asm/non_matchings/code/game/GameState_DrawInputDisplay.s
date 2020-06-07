.rdata

glabel D_80144D30
    .incbin "baserom.z64", 0xBBBED0, 0x20

.text
glabel GameState_DrawInputDisplay
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

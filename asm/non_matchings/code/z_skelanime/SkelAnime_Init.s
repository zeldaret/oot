.rdata
glabel D_80140464
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140478
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_8014048C
    .asciz "joint_buff_num == this->joint_num"
    .balign 4

glabel D_801404B0
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_801404C4
    .asciz "\x1b[31m"
    .balign 4

glabel D_801404CC
    .asciz "Skeleton_Info2_ct メモリアロケーションエラー\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_801404FC
    .asciz "\x1b[m"
    .balign 4

.text
glabel SkelAnime_Init
/* B1B71C 800A457C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B720 800A4580 AFA40020 */  sw    $a0, 0x20($sp)
/* B1B724 800A4584 00067100 */  sll   $t6, $a2, 4
/* B1B728 800A4588 3C048016 */  lui   $a0, %hi(gSegments) # $a0, 0x8016
/* B1B72C 800A458C 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B730 800A4590 24846FA8 */  addiu $a0, %lo(gSegments) # addiu $a0, $a0, 0x6fa8
/* B1B734 800A4594 000FC080 */  sll   $t8, $t7, 2
/* B1B738 800A4598 0098C821 */  addu  $t9, $a0, $t8
/* B1B73C 800A459C 8F2A0000 */  lw    $t2, ($t9)
/* B1B740 800A45A0 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B744 800A45A4 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B748 800A45A8 00C85824 */  and   $t3, $a2, $t0
/* B1B74C 800A45AC 3C098000 */  lui   $t1, 0x8000
/* B1B750 800A45B0 014B6021 */  addu  $t4, $t2, $t3
/* B1B754 800A45B4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B758 800A45B8 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B75C 800A45BC AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B760 800A45C0 01891021 */  addu  $v0, $t4, $t1
/* B1B764 800A45C4 904D0004 */  lbu   $t5, 4($v0)
/* B1B768 800A45C8 00A08025 */  move  $s0, $a1
/* B1B76C 800A45CC 24060B98 */  li    $a2, 2968
/* B1B770 800A45D0 25AE0001 */  addiu $t6, $t5, 1
/* B1B774 800A45D4 A0AE0000 */  sb    $t6, ($a1)
/* B1B778 800A45D8 8C430000 */  lw    $v1, ($v0)
/* B1B77C 800A45DC 00037900 */  sll   $t7, $v1, 4
/* B1B780 800A45E0 000FC702 */  srl   $t8, $t7, 0x1c
/* B1B784 800A45E4 0018C880 */  sll   $t9, $t8, 2
/* B1B788 800A45E8 00995021 */  addu  $t2, $a0, $t9
/* B1B78C 800A45EC 8D4B0000 */  lw    $t3, ($t2)
/* B1B790 800A45F0 00686024 */  and   $t4, $v1, $t0
/* B1B794 800A45F4 016C6821 */  addu  $t5, $t3, $t4
/* B1B798 800A45F8 01A97021 */  addu  $t6, $t5, $t1
/* B1B79C 800A45FC ACAE0004 */  sw    $t6, 4($a1)
/* B1B7A0 800A4600 8FAF0030 */  lw    $t7, 0x30($sp)
/* B1B7A4 800A4604 8FB80038 */  lw    $t8, 0x38($sp)
/* B1B7A8 800A4608 55E00016 */  bnezl $t7, .L800A4664
/* B1B7AC 800A460C 92190000 */   lbu   $t9, ($s0)
/* B1B7B0 800A4610 90A40000 */  lbu   $a0, ($a1)
/* B1B7B4 800A4614 3C058014 */  lui   $a1, %hi(D_80140464) # $a1, 0x8014
/* B1B7B8 800A4618 24A50464 */  addiu $a1, %lo(D_80140464) # addiu $a1, $a1, 0x464
/* B1B7BC 800A461C 00800821 */  addu  $at, $a0, $zero
/* B1B7C0 800A4620 00042080 */  sll   $a0, $a0, 2
/* B1B7C4 800A4624 00812023 */  subu  $a0, $a0, $at
/* B1B7C8 800A4628 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1B7CC 800A462C 00042040 */   sll   $a0, $a0, 1
/* B1B7D0 800A4630 92040000 */  lbu   $a0, ($s0)
/* B1B7D4 800A4634 3C058014 */  lui   $a1, %hi(D_80140478) # $a1, 0x8014
/* B1B7D8 800A4638 AE020020 */  sw    $v0, 0x20($s0)
/* B1B7DC 800A463C 00800821 */  addu  $at, $a0, $zero
/* B1B7E0 800A4640 00042080 */  sll   $a0, $a0, 2
/* B1B7E4 800A4644 00812023 */  subu  $a0, $a0, $at
/* B1B7E8 800A4648 00042040 */  sll   $a0, $a0, 1
/* B1B7EC 800A464C 24A50478 */  addiu $a1, %lo(D_80140478) # addiu $a1, $a1, 0x478
/* B1B7F0 800A4650 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1B7F4 800A4654 24060B99 */   li    $a2, 2969
/* B1B7F8 800A4658 1000000D */  b     .L800A4690
/* B1B7FC 800A465C AE020024 */   sw    $v0, 0x24($s0)
/* B1B800 800A4660 92190000 */  lbu   $t9, ($s0)
.L800A4664:
/* B1B804 800A4664 3C048014 */  lui   $a0, %hi(D_8014048C) # $a0, 0x8014
/* B1B808 800A4668 2484048C */  addiu $a0, %lo(D_8014048C) # addiu $a0, $a0, 0x48c
/* B1B80C 800A466C 13190004 */  beq   $t8, $t9, .L800A4680
/* B1B810 800A4670 3C058014 */   lui   $a1, %hi(D_801404B0) # $a1, 0x8014
/* B1B814 800A4674 24A504B0 */  addiu $a1, %lo(D_801404B0) # addiu $a1, $a1, 0x4b0
/* B1B818 800A4678 0C0007FC */  jal   __assert
/* B1B81C 800A467C 24060B9D */   li    $a2, 2973
.L800A4680:
/* B1B820 800A4680 8FAA0030 */  lw    $t2, 0x30($sp)
/* B1B824 800A4684 AE0A0020 */  sw    $t2, 0x20($s0)
/* B1B828 800A4688 8FAB0034 */  lw    $t3, 0x34($sp)
/* B1B82C 800A468C AE0B0024 */  sw    $t3, 0x24($s0)
.L800A4690:
/* B1B830 800A4690 8E0C0020 */  lw    $t4, 0x20($s0)
/* B1B834 800A4694 3C048014 */  lui   $a0, %hi(D_801404C4) # $a0, 0x8014
/* B1B838 800A4698 11800004 */  beqz  $t4, .L800A46AC
/* B1B83C 800A469C 00000000 */   nop   
/* B1B840 800A46A0 8E0D0024 */  lw    $t5, 0x24($s0)
/* B1B844 800A46A4 55A0000A */  bnezl $t5, .L800A46D0
/* B1B848 800A46A8 8FAE002C */   lw    $t6, 0x2c($sp)
.L800A46AC:
/* B1B84C 800A46AC 0C00084C */  jal   osSyncPrintf
/* B1B850 800A46B0 248404C4 */   addiu $a0, %lo(D_801404C4) # addiu $a0, $a0, 0x4c4
/* B1B854 800A46B4 3C048014 */  lui   $a0, %hi(D_801404CC) # $a0, 0x8014
/* B1B858 800A46B8 0C00084C */  jal   osSyncPrintf
/* B1B85C 800A46BC 248404CC */   addiu $a0, %lo(D_801404CC) # addiu $a0, $a0, 0x4cc
/* B1B860 800A46C0 3C048014 */  lui   $a0, %hi(D_801404FC) # $a0, 0x8014
/* B1B864 800A46C4 0C00084C */  jal   osSyncPrintf
/* B1B868 800A46C8 248404FC */   addiu $a0, %lo(D_801404FC) # addiu $a0, $a0, 0x4fc
/* B1B86C 800A46CC 8FAE002C */  lw    $t6, 0x2c($sp)
.L800A46D0:
/* B1B870 800A46D0 02002025 */  move  $a0, $s0
/* B1B874 800A46D4 51C00004 */  beql  $t6, $zero, .L800A46E8
/* B1B878 800A46D8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1B87C 800A46DC 0C0294BE */  jal   func_800A52F8
/* B1B880 800A46E0 01C02825 */   move  $a1, $t6
/* B1B884 800A46E4 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A46E8:
/* B1B888 800A46E8 8FB00018 */  lw    $s0, 0x18($sp)
/* B1B88C 800A46EC 27BD0020 */  addiu $sp, $sp, 0x20
/* B1B890 800A46F0 03E00008 */  jr    $ra
/* B1B894 800A46F4 00000000 */   nop   


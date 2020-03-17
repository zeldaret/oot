.rdata
glabel D_80140500
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140514
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140528
    .asciz "joint_buff_num == this->joint_num"
    .balign 4

glabel D_8014054C
    .asciz "../z_skelanime.c"
    .balign 4

glabel D_80140560
    .asciz "\x1b[31m"
    .balign 4

glabel D_80140568
    .asciz "Skeleton_Info_Rom_SV_ct メモリアロケーションエラー\n"
    # EUC-JP: メモリアロケーションエラー | Memory allocation error
    .balign 4

glabel D_8014059C
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800A46F8
/* B1B898 800A46F8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B1B89C 800A46FC AFA40020 */  sw    $a0, 0x20($sp)
/* B1B8A0 800A4700 00067100 */  sll   $t6, $a2, 4
/* B1B8A4 800A4704 3C048016 */  lui   $a0, %hi(gSegments) # $a0, 0x8016
/* B1B8A8 800A4708 000E7F02 */  srl   $t7, $t6, 0x1c
/* B1B8AC 800A470C 24846FA8 */  addiu $a0, %lo(gSegments) # addiu $a0, $a0, 0x6fa8
/* B1B8B0 800A4710 000FC080 */  sll   $t8, $t7, 2
/* B1B8B4 800A4714 0098C821 */  addu  $t9, $a0, $t8
/* B1B8B8 800A4718 8F2A0000 */  lw    $t2, ($t9)
/* B1B8BC 800A471C 3C0800FF */  lui   $t0, (0x00FFFFFF >> 16) # lui $t0, 0xff
/* B1B8C0 800A4720 3508FFFF */  ori   $t0, (0x00FFFFFF & 0xFFFF) # ori $t0, $t0, 0xffff
/* B1B8C4 800A4724 00C85824 */  and   $t3, $a2, $t0
/* B1B8C8 800A4728 3C098000 */  lui   $t1, 0x8000
/* B1B8CC 800A472C 014B6021 */  addu  $t4, $t2, $t3
/* B1B8D0 800A4730 AFBF001C */  sw    $ra, 0x1c($sp)
/* B1B8D4 800A4734 AFB00018 */  sw    $s0, 0x18($sp)
/* B1B8D8 800A4738 AFA7002C */  sw    $a3, 0x2c($sp)
/* B1B8DC 800A473C 01891021 */  addu  $v0, $t4, $t1
/* B1B8E0 800A4740 904D0004 */  lbu   $t5, 4($v0)
/* B1B8E4 800A4744 00A08025 */  move  $s0, $a1
/* B1B8E8 800A4748 24060BE7 */  li    $a2, 3047
/* B1B8EC 800A474C 25AE0001 */  addiu $t6, $t5, 1
/* B1B8F0 800A4750 A0AE0000 */  sb    $t6, ($a1)
/* B1B8F4 800A4754 904F0008 */  lbu   $t7, 8($v0)
/* B1B8F8 800A4758 A0AF0002 */  sb    $t7, 2($a1)
/* B1B8FC 800A475C 8C430000 */  lw    $v1, ($v0)
/* B1B900 800A4760 0003C100 */  sll   $t8, $v1, 4
/* B1B904 800A4764 0018CF02 */  srl   $t9, $t8, 0x1c
/* B1B908 800A4768 00195080 */  sll   $t2, $t9, 2
/* B1B90C 800A476C 008A5821 */  addu  $t3, $a0, $t2
/* B1B910 800A4770 8D6C0000 */  lw    $t4, ($t3)
/* B1B914 800A4774 00686824 */  and   $t5, $v1, $t0
/* B1B918 800A4778 018D7021 */  addu  $t6, $t4, $t5
/* B1B91C 800A477C 01C97821 */  addu  $t7, $t6, $t1
/* B1B920 800A4780 ACAF0004 */  sw    $t7, 4($a1)
/* B1B924 800A4784 8FB80030 */  lw    $t8, 0x30($sp)
/* B1B928 800A4788 8FB90038 */  lw    $t9, 0x38($sp)
/* B1B92C 800A478C 57000016 */  bnezl $t8, .L800A47E8
/* B1B930 800A4790 920A0000 */   lbu   $t2, ($s0)
/* B1B934 800A4794 90A40000 */  lbu   $a0, ($a1)
/* B1B938 800A4798 3C058014 */  lui   $a1, %hi(D_80140500) # $a1, 0x8014
/* B1B93C 800A479C 24A50500 */  addiu $a1, %lo(D_80140500) # addiu $a1, $a1, 0x500
/* B1B940 800A47A0 00800821 */  addu  $at, $a0, $zero
/* B1B944 800A47A4 00042080 */  sll   $a0, $a0, 2
/* B1B948 800A47A8 00812023 */  subu  $a0, $a0, $at
/* B1B94C 800A47AC 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1B950 800A47B0 00042040 */   sll   $a0, $a0, 1
/* B1B954 800A47B4 92040000 */  lbu   $a0, ($s0)
/* B1B958 800A47B8 3C058014 */  lui   $a1, %hi(D_80140514) # $a1, 0x8014
/* B1B95C 800A47BC AE020020 */  sw    $v0, 0x20($s0)
/* B1B960 800A47C0 00800821 */  addu  $at, $a0, $zero
/* B1B964 800A47C4 00042080 */  sll   $a0, $a0, 2
/* B1B968 800A47C8 00812023 */  subu  $a0, $a0, $at
/* B1B96C 800A47CC 00042040 */  sll   $a0, $a0, 1
/* B1B970 800A47D0 24A50514 */  addiu $a1, %lo(D_80140514) # addiu $a1, $a1, 0x514
/* B1B974 800A47D4 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* B1B978 800A47D8 24060BE8 */   li    $a2, 3048
/* B1B97C 800A47DC 1000000D */  b     .L800A4814
/* B1B980 800A47E0 AE020024 */   sw    $v0, 0x24($s0)
/* B1B984 800A47E4 920A0000 */  lbu   $t2, ($s0)
.L800A47E8:
/* B1B988 800A47E8 3C048014 */  lui   $a0, %hi(D_80140528) # $a0, 0x8014
/* B1B98C 800A47EC 24840528 */  addiu $a0, %lo(D_80140528) # addiu $a0, $a0, 0x528
/* B1B990 800A47F0 132A0004 */  beq   $t9, $t2, .L800A4804
/* B1B994 800A47F4 3C058014 */   lui   $a1, %hi(D_8014054C) # $a1, 0x8014
/* B1B998 800A47F8 24A5054C */  addiu $a1, %lo(D_8014054C) # addiu $a1, $a1, 0x54c
/* B1B99C 800A47FC 0C0007FC */  jal   __assert
/* B1B9A0 800A4800 24060BEC */   li    $a2, 3052
.L800A4804:
/* B1B9A4 800A4804 8FAB0030 */  lw    $t3, 0x30($sp)
/* B1B9A8 800A4808 AE0B0020 */  sw    $t3, 0x20($s0)
/* B1B9AC 800A480C 8FAC0034 */  lw    $t4, 0x34($sp)
/* B1B9B0 800A4810 AE0C0024 */  sw    $t4, 0x24($s0)
.L800A4814:
/* B1B9B4 800A4814 8E0D0020 */  lw    $t5, 0x20($s0)
/* B1B9B8 800A4818 3C048014 */  lui   $a0, %hi(D_80140560) # $a0, 0x8014
/* B1B9BC 800A481C 11A00004 */  beqz  $t5, .L800A4830
/* B1B9C0 800A4820 00000000 */   nop   
/* B1B9C4 800A4824 8E0E0024 */  lw    $t6, 0x24($s0)
/* B1B9C8 800A4828 55C0000A */  bnezl $t6, .L800A4854
/* B1B9CC 800A482C 8FAF002C */   lw    $t7, 0x2c($sp)
.L800A4830:
/* B1B9D0 800A4830 0C00084C */  jal   osSyncPrintf
/* B1B9D4 800A4834 24840560 */   addiu $a0, %lo(D_80140560) # addiu $a0, $a0, 0x560
/* B1B9D8 800A4838 3C048014 */  lui   $a0, %hi(D_80140568) # $a0, 0x8014
/* B1B9DC 800A483C 0C00084C */  jal   osSyncPrintf
/* B1B9E0 800A4840 24840568 */   addiu $a0, %lo(D_80140568) # addiu $a0, $a0, 0x568
/* B1B9E4 800A4844 3C048014 */  lui   $a0, %hi(D_8014059C) # $a0, 0x8014
/* B1B9E8 800A4848 0C00084C */  jal   osSyncPrintf
/* B1B9EC 800A484C 2484059C */   addiu $a0, %lo(D_8014059C) # addiu $a0, $a0, 0x59c
/* B1B9F0 800A4850 8FAF002C */  lw    $t7, 0x2c($sp)
.L800A4854:
/* B1B9F4 800A4854 02002025 */  move  $a0, $s0
/* B1B9F8 800A4858 51E00004 */  beql  $t7, $zero, .L800A486C
/* B1B9FC 800A485C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B1BA00 800A4860 0C0294BE */  jal   func_800A52F8
/* B1BA04 800A4864 01E02825 */   move  $a1, $t7
/* B1BA08 800A4868 8FBF001C */  lw    $ra, 0x1c($sp)
.L800A486C:
/* B1BA0C 800A486C 8FB00018 */  lw    $s0, 0x18($sp)
/* B1BA10 800A4870 27BD0020 */  addiu $sp, $sp, 0x20
/* B1BA14 800A4874 03E00008 */  jr    $ra
/* B1BA18 800A4878 00000000 */   nop   


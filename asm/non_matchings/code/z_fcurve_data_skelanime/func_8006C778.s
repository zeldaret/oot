.rdata
glabel D_8013B9E0
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

glabel D_8013BA00
    .asciz "this->now_joint != NULL"
    .balign 4

glabel D_8013BA18
    .asciz "../z_fcurve_data_skelanime.c"
    .balign 4

.text
glabel func_8006C778
/* AE3918 8006C778 00067100 */  sll   $t6, $a2, 4
/* AE391C 8006C77C 3C088016 */  lui   $t0, %hi(gSegments) # $t0, 0x8016
/* AE3920 8006C780 000E7F02 */  srl   $t7, $t6, 0x1c
/* AE3924 8006C784 25086FA8 */  addiu $t0, %lo(gSegments) # addiu $t0, $t0, 0x6fa8
/* AE3928 8006C788 000FC080 */  sll   $t8, $t7, 2
/* AE392C 8006C78C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AE3930 8006C790 0118C821 */  addu  $t9, $t0, $t8
/* AE3934 8006C794 8F2B0000 */  lw    $t3, ($t9)
/* AE3938 8006C798 3C0900FF */  lui   $t1, (0x00FFFFFF >> 16) # lui $t1, 0xff
/* AE393C 8006C79C 3529FFFF */  ori   $t1, (0x00FFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* AE3940 8006C7A0 00C96024 */  and   $t4, $a2, $t1
/* AE3944 8006C7A4 3C0A8000 */  lui   $t2, 0x8000
/* AE3948 8006C7A8 016C6821 */  addu  $t5, $t3, $t4
/* AE394C 8006C7AC AFBF001C */  sw    $ra, 0x1c($sp)
/* AE3950 8006C7B0 AFB00018 */  sw    $s0, 0x18($sp)
/* AE3954 8006C7B4 AFA40020 */  sw    $a0, 0x20($sp)
/* AE3958 8006C7B8 AFA60028 */  sw    $a2, 0x28($sp)
/* AE395C 8006C7BC AFA7002C */  sw    $a3, 0x2c($sp)
/* AE3960 8006C7C0 01AA1021 */  addu  $v0, $t5, $t2
/* AE3964 8006C7C4 904E0004 */  lbu   $t6, 4($v0)
/* AE3968 8006C7C8 00A08025 */  move  $s0, $a1
/* AE396C 8006C7CC 2406007D */  li    $a2, 125
/* AE3970 8006C7D0 A0AE0000 */  sb    $t6, ($a1)
/* AE3974 8006C7D4 8C430000 */  lw    $v1, ($v0)
/* AE3978 8006C7D8 90A40000 */  lbu   $a0, ($a1)
/* AE397C 8006C7DC 00037900 */  sll   $t7, $v1, 4
/* AE3980 8006C7E0 000FC702 */  srl   $t8, $t7, 0x1c
/* AE3984 8006C7E4 0018C880 */  sll   $t9, $t8, 2
/* AE3988 8006C7E8 01195821 */  addu  $t3, $t0, $t9
/* AE398C 8006C7EC 8D6C0000 */  lw    $t4, ($t3)
/* AE3990 8006C7F0 00696824 */  and   $t5, $v1, $t1
/* AE3994 8006C7F4 00800821 */  addu  $at, $a0, $zero
/* AE3998 8006C7F8 018D7021 */  addu  $t6, $t4, $t5
/* AE399C 8006C7FC 01CA7821 */  addu  $t7, $t6, $t2
/* AE39A0 8006C800 ACAF0004 */  sw    $t7, 4($a1)
/* AE39A4 8006C804 000420C0 */  sll   $a0, $a0, 3
/* AE39A8 8006C808 00812021 */  addu  $a0, $a0, $at
/* AE39AC 8006C80C 3C058014 */  lui   $a1, %hi(D_8013B9E0) # $a1, 0x8014
/* AE39B0 8006C810 24A5B9E0 */  addiu $a1, %lo(D_8013B9E0) # addiu $a1, $a1, -0x4620
/* AE39B4 8006C814 0C01EBB8 */  jal   ZeldaArena_MallocDebug
/* AE39B8 8006C818 00042040 */   sll   $a0, $a0, 1
/* AE39BC 8006C81C 14400007 */  bnez  $v0, .L8006C83C
/* AE39C0 8006C820 AE02001C */   sw    $v0, 0x1c($s0)
/* AE39C4 8006C824 3C048014 */  lui   $a0, %hi(D_8013BA00) # $a0, 0x8014
/* AE39C8 8006C828 3C058014 */  lui   $a1, %hi(D_8013BA18)
/* AE39CC 8006C82C 24A5BA18 */  addiu $a1, %lo(D_8013BA18) # addiu $a1, $a1, -0x45e8
/* AE39D0 8006C830 2484BA00 */  addiu $a0, %lo(D_8013BA00) # addiu $a0, $a0, -0x4600
/* AE39D4 8006C834 0C0007FC */  jal   __assert
/* AE39D8 8006C838 2406007F */   li    $a2, 127
.L8006C83C:
/* AE39DC 8006C83C 44802000 */  mtc1  $zero, $f4
/* AE39E0 8006C840 24020001 */  li    $v0, 1
/* AE39E4 8006C844 E6040018 */  swc1  $f4, 0x18($s0)
/* AE39E8 8006C848 8FBF001C */  lw    $ra, 0x1c($sp)
/* AE39EC 8006C84C 8FB00018 */  lw    $s0, 0x18($sp)
/* AE39F0 8006C850 27BD0020 */  addiu $sp, $sp, 0x20
/* AE39F4 8006C854 03E00008 */  jr    $ra
/* AE39F8 8006C858 00000000 */   nop   


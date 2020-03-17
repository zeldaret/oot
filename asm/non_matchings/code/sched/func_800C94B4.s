.rdata
glabel D_80146150
    .asciz "sc->curRDPTask"
    .balign 4

glabel D_80146160
    .asciz "../sched.c"
    .balign 4

glabel D_8014616C
    .asciz "sc->curRDPTask->list.t.type == M_GFXTASK"
    .balign 4

glabel D_80146198
    .asciz "../sched.c"
    .balign 4

glabel D_801461A4
    .asciz "DP sc:%08x sp:%08x dp:%08x state:%x\n"
    .balign 4

.text
glabel func_800C94B4
/* B40654 800C94B4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* B40658 800C94B8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B4065C 800C94BC AFB00020 */  sw    $s0, 0x20($sp)
/* B40660 800C94C0 00808025 */  move  $s0, $a0
/* B40664 800C94C4 AFA00038 */  sw    $zero, 0x38($sp)
/* B40668 800C94C8 0C001A78 */  jal   osGetTime
/* B4066C 800C94CC AFA00034 */   sw    $zero, 0x34($sp)
/* B40670 800C94D0 3C0E8017 */  lui   $t6, %hi(D_8016A518) # $t6, 0x8017
/* B40674 800C94D4 3C0F8017 */  lui   $t7, %hi(D_8016A51C) # $t7, 0x8017
/* B40678 800C94D8 8DEFA51C */  lw    $t7, %lo(D_8016A51C)($t7)
/* B4067C 800C94DC 8DCEA518 */  lw    $t6, %lo(D_8016A518)($t6)
/* B40680 800C94E0 3C088017 */  lui   $t0, %hi(D_8016A580) # $t0, 0x8017
/* B40684 800C94E4 006F082B */  sltu  $at, $v1, $t7
/* B40688 800C94E8 004EC023 */  subu  $t8, $v0, $t6
/* B4068C 800C94EC 0301C023 */  subu  $t8, $t8, $at
/* B40690 800C94F0 2508A580 */  addiu $t0, %lo(D_8016A580) # addiu $t0, $t0, -0x5a80
/* B40694 800C94F4 AD180000 */  sw    $t8, ($t0)
/* B40698 800C94F8 006FC823 */  subu  $t9, $v1, $t7
/* B4069C 800C94FC AD190004 */  sw    $t9, 4($t0)
/* B406A0 800C9500 8E060234 */  lw    $a2, 0x234($s0)
/* B406A4 800C9504 3C048014 */  lui   $a0, %hi(D_80146150) # $a0, 0x8014
/* B406A8 800C9508 24846150 */  addiu $a0, %lo(D_80146150) # addiu $a0, $a0, 0x6150
/* B406AC 800C950C 14C00005 */  bnez  $a2, .L800C9524
/* B406B0 800C9510 3C058014 */   lui   $a1, %hi(D_80146160) # $a1, 0x8014
/* B406B4 800C9514 24A56160 */  addiu $a1, %lo(D_80146160) # addiu $a1, $a1, 0x6160
/* B406B8 800C9518 0C0007FC */  jal   __assert
/* B406BC 800C951C 2406036E */   li    $a2, 878
/* B406C0 800C9520 8E060234 */  lw    $a2, 0x234($s0)
.L800C9524:
/* B406C4 800C9524 8CC90010 */  lw    $t1, 0x10($a2)
/* B406C8 800C9528 24010001 */  li    $at, 1
/* B406CC 800C952C 3C048014 */  lui   $a0, %hi(D_8014616C) # $a0, 0x8014
/* B406D0 800C9530 11210006 */  beq   $t1, $at, .L800C954C
/* B406D4 800C9534 2484616C */   addiu $a0, %lo(D_8014616C) # addiu $a0, $a0, 0x616c
/* B406D8 800C9538 3C058014 */  lui   $a1, %hi(D_80146198) # $a1, 0x8014
/* B406DC 800C953C 24A56198 */  addiu $a1, %lo(D_80146198) # addiu $a1, $a1, 0x6198
/* B406E0 800C9540 0C0007FC */  jal   __assert
/* B406E4 800C9544 2406036F */   li    $a2, 879
/* B406E8 800C9548 8E060234 */  lw    $a2, 0x234($s0)
.L800C954C:
/* B406EC 800C954C AE000234 */  sw    $zero, 0x234($s0)
/* B406F0 800C9550 8CCA0004 */  lw    $t2, 4($a2)
/* B406F4 800C9554 2401FFFE */  li    $at, -2
/* B406F8 800C9558 00C02825 */  move  $a1, $a2
/* B406FC 800C955C 01415824 */  and   $t3, $t2, $at
/* B40700 800C9560 ACCB0004 */  sw    $t3, 4($a2)
/* B40704 800C9564 0C032310 */  jal   func_800C8C40
/* B40708 800C9568 02002025 */   move  $a0, $s0
/* B4070C 800C956C 8E0C0230 */  lw    $t4, 0x230($s0)
/* B40710 800C9570 8E0F0234 */  lw    $t7, 0x234($s0)
/* B40714 800C9574 02002025 */  move  $a0, $s0
/* B40718 800C9578 2D8D0001 */  sltiu $t5, $t4, 1
/* B4071C 800C957C 000D7040 */  sll   $t6, $t5, 1
/* B40720 800C9580 2DF80001 */  sltiu $t8, $t7, 1
/* B40724 800C9584 01D83825 */  or    $a3, $t6, $t8
/* B40728 800C9588 AFA70030 */  sw    $a3, 0x30($sp)
/* B4072C 800C958C 27A50038 */  addiu $a1, $sp, 0x38
/* B40730 800C9590 0C0322A5 */  jal   func_800C8A94
/* B40734 800C9594 27A60034 */   addiu $a2, $sp, 0x34
/* B40738 800C9598 8FB90030 */  lw    $t9, 0x30($sp)
/* B4073C 800C959C 02002025 */  move  $a0, $s0
/* B40740 800C95A0 8FA50038 */  lw    $a1, 0x38($sp)
/* B40744 800C95A4 10590003 */  beq   $v0, $t9, .L800C95B4
/* B40748 800C95A8 00000000 */   nop   
/* B4074C 800C95AC 0C03232E */  jal   func_800C8CB8
/* B40750 800C95B0 8FA60034 */   lw    $a2, 0x34($sp)
.L800C95B4:
/* B40754 800C95B4 3C088013 */  lui   $t0, %hi(D_8012D290) # $t0, 0x8013
/* B40758 800C95B8 2508D290 */  addiu $t0, %lo(D_8012D290) # addiu $t0, $t0, -0x2d70
/* B4075C 800C95BC 8D090000 */  lw    $t1, ($t0)
/* B40760 800C95C0 3C048014 */  lui   $a0, %hi(D_801461A4) # $a0, 0x8014
/* B40764 800C95C4 248461A4 */  addiu $a0, %lo(D_801461A4) # addiu $a0, $a0, 0x61a4
/* B40768 800C95C8 11200006 */  beqz  $t1, .L800C95E4
/* B4076C 800C95CC 02002825 */   move  $a1, $s0
/* B40770 800C95D0 8FAA0030 */  lw    $t2, 0x30($sp)
/* B40774 800C95D4 8FA60038 */  lw    $a2, 0x38($sp)
/* B40778 800C95D8 8FA70034 */  lw    $a3, 0x34($sp)
/* B4077C 800C95DC 0C00084C */  jal   osSyncPrintf
/* B40780 800C95E0 AFAA0010 */   sw    $t2, 0x10($sp)
.L800C95E4:
/* B40784 800C95E4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B40788 800C95E8 8FB00020 */  lw    $s0, 0x20($sp)
/* B4078C 800C95EC 27BD0040 */  addiu $sp, $sp, 0x40
/* B40790 800C95F0 03E00008 */  jr    $ra
/* B40794 800C95F4 00000000 */   nop   


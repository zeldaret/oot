.rdata
glabel D_80145894
    .asciz "\x1b[33m"
    .balign 4

glabel D_8014589C
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801458B0
    .asciz "振動パック ぶるぶるぶるぶる"
    # EUC-JP: 振動パック ぶるぶるぶるぶる | Vibration pack jumble jumble?
    .balign 4

glabel D_801458CC
    .asciz "\x1b[m"
    .balign 4

glabel D_801458D0
    .asciz "\x1b[33m"
    .balign 4

glabel D_801458D8
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801458EC
    .asciz "振動パックで通信エラーが発生しました"
    # EUC-JP: 振動パックで通信エラーが発生しました | A communication error has occurred with the vibraton pack
    .balign 4

glabel D_80145914
    .asciz "\x1b[m"
    .balign 4

glabel D_80145918
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145920
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145934
    .asciz "振動パック 停止"
    # EUC-JP: 振動パック 停止 | Stop vibration pack
    .balign 4

glabel D_80145944
    .asciz "\x1b[m"
    .balign 4

glabel D_80145948
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145950
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145964
    .asciz "振動パックで通信エラーが発生しました"
    # EUC-JP: 振動パックで通信エラーが発生しました | A communication error has occurred with the vibration pack
    .balign 4    

glabel D_8014598C
    .asciz "\x1b[m"
    .balign 4

glabel D_80145990
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145998
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801459AC
    .asciz "振動パックが抜かれたようです"
    # EUC-JP: 振動パックが抜かれたようです | Vibration pack seems to be pulled out
    .balign 4

glabel D_801459CC
    .asciz "\x1b[m"
    .balign 4

glabel D_801459D0
    .asciz "\x1b[33m"
    .balign 4

glabel D_801459D8
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_801459EC
    .asciz "振動パックではないコントローラパックが抜かれたようです"
    # EUC-JP: 振動パックではないコントローラパックが抜かれたようです | It seems that a controller pack that is not a vibration pack was pulled out
    .balign 4

glabel D_80145A24
    .asciz "\x1b[m"
    .balign 4

glabel D_80145A28
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145A30
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145A44
    .asciz "振動パックを認識しました"
    # EUC-JP: 振動パックを認識しました | Recognized vibration pack
    .balign 4

glabel D_80145A60
    .asciz "\x1b[m"
    .balign 4

glabel D_80145A64
    .asciz "../padmgr.c"
    .balign 4

glabel D_80145A70
    .asciz "++errcnt = %d\n"
    .balign 4

glabel D_80145A80
    .asciz "\x1b[33m"
    .balign 4

glabel D_80145A88
    .asciz "padmgr: %dコン: %s\n"
    # EUC-JP: コン | 'Con'?
    .balign 4

glabel D_80145A9C
    .asciz "コントローラパックの通信エラー"
    # EUC-JP: コントローラパックの通信エラー | Controller pack communication error
    .balign 4

glabel D_80145ABC
    .asciz "\x1b[m"
    .balign 4

.text
glabel func_800C740C
/* B3E5AC 800C740C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* B3E5B0 800C7410 AFBF0034 */  sw    $ra, 0x34($sp)
/* B3E5B4 800C7414 AFB40028 */  sw    $s4, 0x28($sp)
/* B3E5B8 800C7418 0080A025 */  move  $s4, $a0
/* B3E5BC 800C741C AFB60030 */  sw    $s6, 0x30($sp)
/* B3E5C0 800C7420 AFB5002C */  sw    $s5, 0x2c($sp)
/* B3E5C4 800C7424 AFB30024 */  sw    $s3, 0x24($sp)
/* B3E5C8 800C7428 AFB20020 */  sw    $s2, 0x20($sp)
/* B3E5CC 800C742C AFB1001C */  sw    $s1, 0x1c($sp)
/* B3E5D0 800C7430 0C031C94 */  jal   PadMgr_LockGetControllerQueue
/* B3E5D4 800C7434 AFB00018 */   sw    $s0, 0x18($sp)
/* B3E5D8 800C7438 AFA2003C */  sw    $v0, 0x3c($sp)
/* B3E5DC 800C743C 0000A825 */  move  $s5, $zero
/* B3E5E0 800C7440 00009825 */  move  $s3, $zero
/* B3E5E4 800C7444 02808825 */  move  $s1, $s4
/* B3E5E8 800C7448 24160001 */  li    $s6, 1
.L800C744C:
/* B3E5EC 800C744C 922E02AA */  lbu   $t6, 0x2aa($s1)
/* B3E5F0 800C7450 00137880 */  sll   $t7, $s3, 2
/* B3E5F4 800C7454 028FC021 */  addu  $t8, $s4, $t7
/* B3E5F8 800C7458 51C00087 */  beql  $t6, $zero, .L800C7678
/* B3E5FC 800C745C 26730001 */   addiu $s3, $s3, 1
/* B3E600 800C7460 93190002 */  lbu   $t9, 2($t8)
/* B3E604 800C7464 33280001 */  andi  $t0, $t9, 1
/* B3E608 800C7468 51000064 */  beql  $t0, $zero, .L800C75FC
/* B3E60C 800C746C 922202AE */   lbu   $v0, 0x2ae($s1)
/* B3E610 800C7470 922902AE */  lbu   $t1, 0x2ae($s1)
/* B3E614 800C7474 56C90080 */  bnel  $s6, $t1, .L800C7678
/* B3E618 800C7478 26730001 */   addiu $s3, $s3, 1
/* B3E61C 800C747C 922A02B2 */  lbu   $t2, 0x2b2($s1)
/* B3E620 800C7480 51400030 */  beql  $t2, $zero, .L800C7544
/* B3E624 800C7484 922E02B6 */   lbu   $t6, 0x2b6($s1)
/* B3E628 800C7488 922B02B6 */  lbu   $t3, 0x2b6($s1)
/* B3E62C 800C748C 00136080 */  sll   $t4, $s3, 2
/* B3E630 800C7490 01936023 */  subu  $t4, $t4, $s3
/* B3E634 800C7494 29610003 */  slti  $at, $t3, 3
/* B3E638 800C7498 10200076 */  beqz  $at, .L800C7674
/* B3E63C 800C749C 000C6080 */   sll   $t4, $t4, 2
/* B3E640 800C74A0 01936021 */  addu  $t4, $t4, $s3
/* B3E644 800C74A4 000C60C0 */  sll   $t4, $t4, 3
/* B3E648 800C74A8 028C9021 */  addu  $s2, $s4, $t4
/* B3E64C 800C74AC 3C048014 */  lui   $a0, %hi(D_80145894) # $a0, 0x8014
/* B3E650 800C74B0 24845894 */  addiu $a0, %lo(D_80145894) # addiu $a0, $a0, 0x5894
/* B3E654 800C74B4 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E658 800C74B8 0C00084C */  jal   osSyncPrintf
/* B3E65C 800C74BC 24150001 */   li    $s5, 1
/* B3E660 800C74C0 3C048014 */  lui   $a0, %hi(D_8014589C) # $a0, 0x8014
/* B3E664 800C74C4 26700001 */  addiu $s0, $s3, 1
/* B3E668 800C74C8 3C068014 */  lui   $a2, %hi(D_801458B0) # $a2, 0x8014
/* B3E66C 800C74CC 24C658B0 */  addiu $a2, %lo(D_801458B0) # addiu $a2, $a2, 0x58b0
/* B3E670 800C74D0 02002825 */  move  $a1, $s0
/* B3E674 800C74D4 0C00084C */  jal   osSyncPrintf
/* B3E678 800C74D8 2484589C */   addiu $a0, %lo(D_8014589C) # addiu $a0, $a0, 0x589c
/* B3E67C 800C74DC 3C048014 */  lui   $a0, %hi(D_801458CC) # $a0, 0x8014
/* B3E680 800C74E0 0C00084C */  jal   osSyncPrintf
/* B3E684 800C74E4 248458CC */   addiu $a0, %lo(D_801458CC) # addiu $a0, $a0, 0x58cc
/* B3E688 800C74E8 02402025 */  move  $a0, $s2
/* B3E68C 800C74EC 0C0401E0 */  jal   osSetVibration
/* B3E690 800C74F0 02C02825 */   move  $a1, $s6
/* B3E694 800C74F4 10400010 */  beqz  $v0, .L800C7538
/* B3E698 800C74F8 240D0003 */   li    $t5, 3
/* B3E69C 800C74FC 3C048014 */  lui   $a0, %hi(D_801458D0) # $a0, 0x8014
/* B3E6A0 800C7500 A22002AE */  sb    $zero, 0x2ae($s1)
/* B3E6A4 800C7504 0C00084C */  jal   osSyncPrintf
/* B3E6A8 800C7508 248458D0 */   addiu $a0, %lo(D_801458D0) # addiu $a0, $a0, 0x58d0
/* B3E6AC 800C750C 3C048014 */  lui   $a0, %hi(D_801458D8) # $a0, 0x8014
/* B3E6B0 800C7510 3C068014 */  lui   $a2, %hi(D_801458EC) # $a2, 0x8014
/* B3E6B4 800C7514 24C658EC */  addiu $a2, %lo(D_801458EC) # addiu $a2, $a2, 0x58ec
/* B3E6B8 800C7518 248458D8 */  addiu $a0, %lo(D_801458D8) # addiu $a0, $a0, 0x58d8
/* B3E6BC 800C751C 0C00084C */  jal   osSyncPrintf
/* B3E6C0 800C7520 02002825 */   move  $a1, $s0
/* B3E6C4 800C7524 3C048014 */  lui   $a0, %hi(D_80145914) # $a0, 0x8014
/* B3E6C8 800C7528 0C00084C */  jal   osSyncPrintf
/* B3E6CC 800C752C 24845914 */   addiu $a0, %lo(D_80145914) # addiu $a0, $a0, 0x5914
/* B3E6D0 800C7530 10000051 */  b     .L800C7678
/* B3E6D4 800C7534 26730001 */   addiu $s3, $s3, 1
.L800C7538:
/* B3E6D8 800C7538 1000004E */  b     .L800C7674
/* B3E6DC 800C753C A22D02B6 */   sb    $t5, 0x2b6($s1)
/* B3E6E0 800C7540 922E02B6 */  lbu   $t6, 0x2b6($s1)
.L800C7544:
/* B3E6E4 800C7544 00137880 */  sll   $t7, $s3, 2
/* B3E6E8 800C7548 01F37823 */  subu  $t7, $t7, $s3
/* B3E6EC 800C754C 11C00049 */  beqz  $t6, .L800C7674
/* B3E6F0 800C7550 000F7880 */   sll   $t7, $t7, 2
/* B3E6F4 800C7554 01F37821 */  addu  $t7, $t7, $s3
/* B3E6F8 800C7558 000F78C0 */  sll   $t7, $t7, 3
/* B3E6FC 800C755C 028F9021 */  addu  $s2, $s4, $t7
/* B3E700 800C7560 3C048014 */  lui   $a0, %hi(D_80145918) # $a0, 0x8014
/* B3E704 800C7564 24845918 */  addiu $a0, %lo(D_80145918) # addiu $a0, $a0, 0x5918
/* B3E708 800C7568 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E70C 800C756C 0C00084C */  jal   osSyncPrintf
/* B3E710 800C7570 24150001 */   li    $s5, 1
/* B3E714 800C7574 3C048014 */  lui   $a0, %hi(D_80145920) # $a0, 0x8014
/* B3E718 800C7578 26700001 */  addiu $s0, $s3, 1
/* B3E71C 800C757C 3C068014 */  lui   $a2, %hi(D_80145934) # $a2, 0x8014
/* B3E720 800C7580 24C65934 */  addiu $a2, %lo(D_80145934) # addiu $a2, $a2, 0x5934
/* B3E724 800C7584 02002825 */  move  $a1, $s0
/* B3E728 800C7588 0C00084C */  jal   osSyncPrintf
/* B3E72C 800C758C 24845920 */   addiu $a0, %lo(D_80145920) # addiu $a0, $a0, 0x5920
/* B3E730 800C7590 3C048014 */  lui   $a0, %hi(D_80145944) # $a0, 0x8014
/* B3E734 800C7594 0C00084C */  jal   osSyncPrintf
/* B3E738 800C7598 24845944 */   addiu $a0, %lo(D_80145944) # addiu $a0, $a0, 0x5944
/* B3E73C 800C759C 02402025 */  move  $a0, $s2
/* B3E740 800C75A0 0C0401E0 */  jal   osSetVibration
/* B3E744 800C75A4 00002825 */   move  $a1, $zero
/* B3E748 800C75A8 1040000F */  beqz  $v0, .L800C75E8
/* B3E74C 800C75AC 3C048014 */   lui   $a0, %hi(D_80145948) # $a0, 0x8014
/* B3E750 800C75B0 A22002AE */  sb    $zero, 0x2ae($s1)
/* B3E754 800C75B4 0C00084C */  jal   osSyncPrintf
/* B3E758 800C75B8 24845948 */   addiu $a0, %lo(D_80145948) # addiu $a0, $a0, 0x5948
/* B3E75C 800C75BC 3C048014 */  lui   $a0, %hi(D_80145950) # $a0, 0x8014
/* B3E760 800C75C0 3C068014 */  lui   $a2, %hi(D_80145964) # $a2, 0x8014
/* B3E764 800C75C4 24C65964 */  addiu $a2, %lo(D_80145964) # addiu $a2, $a2, 0x5964
/* B3E768 800C75C8 24845950 */  addiu $a0, %lo(D_80145950) # addiu $a0, $a0, 0x5950
/* B3E76C 800C75CC 0C00084C */  jal   osSyncPrintf
/* B3E770 800C75D0 02002825 */   move  $a1, $s0
/* B3E774 800C75D4 3C048014 */  lui   $a0, %hi(D_8014598C) # $a0, 0x8014
/* B3E778 800C75D8 0C00084C */  jal   osSyncPrintf
/* B3E77C 800C75DC 2484598C */   addiu $a0, %lo(D_8014598C) # addiu $a0, $a0, 0x598c
/* B3E780 800C75E0 10000025 */  b     .L800C7678
/* B3E784 800C75E4 26730001 */   addiu $s3, $s3, 1
.L800C75E8:
/* B3E788 800C75E8 923802B6 */  lbu   $t8, 0x2b6($s1)
/* B3E78C 800C75EC 2719FFFF */  addiu $t9, $t8, -1
/* B3E790 800C75F0 10000020 */  b     .L800C7674
/* B3E794 800C75F4 A23902B6 */   sb    $t9, 0x2b6($s1)
/* B3E798 800C75F8 922202AE */  lbu   $v0, 0x2ae($s1)
.L800C75FC:
/* B3E79C 800C75FC 5040001E */  beql  $v0, $zero, .L800C7678
/* B3E7A0 800C7600 26730001 */   addiu $s3, $s3, 1
/* B3E7A4 800C7604 16C2000F */  bne   $s6, $v0, .L800C7644
/* B3E7A8 800C7608 3C048014 */   lui   $a0, %hi(D_801459D0)
/* B3E7AC 800C760C 3C048014 */  lui   $a0, %hi(D_80145990) # $a0, 0x8014
/* B3E7B0 800C7610 0C00084C */  jal   osSyncPrintf
/* B3E7B4 800C7614 24845990 */   addiu $a0, %lo(D_80145990) # addiu $a0, $a0, 0x5990
/* B3E7B8 800C7618 3C048014 */  lui   $a0, %hi(D_80145998) # $a0, 0x8014
/* B3E7BC 800C761C 3C068014 */  lui   $a2, %hi(D_801459AC) # $a2, 0x8014
/* B3E7C0 800C7620 24C659AC */  addiu $a2, %lo(D_801459AC) # addiu $a2, $a2, 0x59ac
/* B3E7C4 800C7624 24845998 */  addiu $a0, %lo(D_80145998) # addiu $a0, $a0, 0x5998
/* B3E7C8 800C7628 0C00084C */  jal   osSyncPrintf
/* B3E7CC 800C762C 26650001 */   addiu $a1, $s3, 1
/* B3E7D0 800C7630 3C048014 */  lui   $a0, %hi(D_801459CC) # $a0, 0x8014
/* B3E7D4 800C7634 0C00084C */  jal   osSyncPrintf
/* B3E7D8 800C7638 248459CC */   addiu $a0, %lo(D_801459CC) # addiu $a0, $a0, 0x59cc
/* B3E7DC 800C763C 1000000D */  b     .L800C7674
/* B3E7E0 800C7640 A22002AE */   sb    $zero, 0x2ae($s1)
.L800C7644:
/* B3E7E4 800C7644 0C00084C */  jal   osSyncPrintf
/* B3E7E8 800C7648 248459D0 */   addiu $a0, %lo(D_801459D0)
/* B3E7EC 800C764C 3C048014 */  lui   $a0, %hi(D_801459D8) # $a0, 0x8014
/* B3E7F0 800C7650 3C068014 */  lui   $a2, %hi(D_801459EC) # $a2, 0x8014
/* B3E7F4 800C7654 24C659EC */  addiu $a2, %lo(D_801459EC) # addiu $a2, $a2, 0x59ec
/* B3E7F8 800C7658 248459D8 */  addiu $a0, %lo(D_801459D8) # addiu $a0, $a0, 0x59d8
/* B3E7FC 800C765C 0C00084C */  jal   osSyncPrintf
/* B3E800 800C7660 26650001 */   addiu $a1, $s3, 1
/* B3E804 800C7664 3C048014 */  lui   $a0, %hi(D_80145A24) # $a0, 0x8014
/* B3E808 800C7668 0C00084C */  jal   osSyncPrintf
/* B3E80C 800C766C 24845A24 */   addiu $a0, %lo(D_80145A24) # addiu $a0, $a0, 0x5a24
/* B3E810 800C7670 A22002AE */  sb    $zero, 0x2ae($s1)
.L800C7674:
/* B3E814 800C7674 26730001 */  addiu $s3, $s3, 1
.L800C7678:
/* B3E818 800C7678 2A610004 */  slti  $at, $s3, 4
/* B3E81C 800C767C 1420FF73 */  bnez  $at, .L800C744C
/* B3E820 800C7680 26310001 */   addiu $s1, $s1, 1
/* B3E824 800C7684 16A00052 */  bnez  $s5, .L800C77D0
/* B3E828 800C7688 3C028017 */   lui   $v0, %hi(D_8016A4F0) # $v0, 0x8017
/* B3E82C 800C768C 8C42A4F0 */  lw    $v0, %lo(D_8016A4F0)($v0)
/* B3E830 800C7690 30420003 */  andi  $v0, $v0, 3
/* B3E834 800C7694 02821821 */  addu  $v1, $s4, $v0
/* B3E838 800C7698 906802AA */  lbu   $t0, 0x2aa($v1)
/* B3E83C 800C769C 00024880 */  sll   $t1, $v0, 2
/* B3E840 800C76A0 00409825 */  move  $s3, $v0
/* B3E844 800C76A4 1100004A */  beqz  $t0, .L800C77D0
/* B3E848 800C76A8 02895021 */   addu  $t2, $s4, $t1
/* B3E84C 800C76AC 914B0002 */  lbu   $t3, 2($t2)
/* B3E850 800C76B0 316C0001 */  andi  $t4, $t3, 1
/* B3E854 800C76B4 11800046 */  beqz  $t4, .L800C77D0
/* B3E858 800C76B8 00000000 */   nop   
/* B3E85C 800C76BC 906D02AE */  lbu   $t5, 0x2ae($v1)
/* B3E860 800C76C0 00027080 */  sll   $t6, $v0, 2
/* B3E864 800C76C4 01C27023 */  subu  $t6, $t6, $v0
/* B3E868 800C76C8 12CD0041 */  beq   $s6, $t5, .L800C77D0
/* B3E86C 800C76CC 8FA4003C */   lw    $a0, 0x3c($sp)
/* B3E870 800C76D0 000E7080 */  sll   $t6, $t6, 2
/* B3E874 800C76D4 01C27021 */  addu  $t6, $t6, $v0
/* B3E878 800C76D8 000E70C0 */  sll   $t6, $t6, 3
/* B3E87C 800C76DC 028E9021 */  addu  $s2, $s4, $t6
/* B3E880 800C76E0 265202BC */  addiu $s2, $s2, 0x2bc
/* B3E884 800C76E4 02402825 */  move  $a1, $s2
/* B3E888 800C76E8 0C04027D */  jal   osProbeVibrationPack
/* B3E88C 800C76EC 00403025 */   move  $a2, $v0
/* B3E890 800C76F0 14400018 */  bnez  $v0, .L800C7754
/* B3E894 800C76F4 2401000B */   li    $at, 11
/* B3E898 800C76F8 240F0001 */  li    $t7, 1
/* B3E89C 800C76FC 0293C021 */  addu  $t8, $s4, $s3
/* B3E8A0 800C7700 A30F02AE */  sb    $t7, 0x2ae($t8)
/* B3E8A4 800C7704 02402025 */  move  $a0, $s2
/* B3E8A8 800C7708 0C0401E0 */  jal   osSetVibration
/* B3E8AC 800C770C 24050001 */   li    $a1, 1
/* B3E8B0 800C7710 02402025 */  move  $a0, $s2
/* B3E8B4 800C7714 0C0401E0 */  jal   osSetVibration
/* B3E8B8 800C7718 00002825 */   move  $a1, $zero
/* B3E8BC 800C771C 3C048014 */  lui   $a0, %hi(D_80145A28) # $a0, 0x8014
/* B3E8C0 800C7720 0C00084C */  jal   osSyncPrintf
/* B3E8C4 800C7724 24845A28 */   addiu $a0, %lo(D_80145A28) # addiu $a0, $a0, 0x5a28
/* B3E8C8 800C7728 3C048014 */  lui   $a0, %hi(D_80145A30) # $a0, 0x8014
/* B3E8CC 800C772C 3C068014 */  lui   $a2, %hi(D_80145A44) # $a2, 0x8014
/* B3E8D0 800C7730 24C65A44 */  addiu $a2, %lo(D_80145A44) # addiu $a2, $a2, 0x5a44
/* B3E8D4 800C7734 24845A30 */  addiu $a0, %lo(D_80145A30) # addiu $a0, $a0, 0x5a30
/* B3E8D8 800C7738 0C00084C */  jal   osSyncPrintf
/* B3E8DC 800C773C 26650001 */   addiu $a1, $s3, 1
/* B3E8E0 800C7740 3C048014 */  lui   $a0, %hi(D_80145A60) # $a0, 0x8014
/* B3E8E4 800C7744 0C00084C */  jal   osSyncPrintf
/* B3E8E8 800C7748 24845A60 */   addiu $a0, %lo(D_80145A60) # addiu $a0, $a0, 0x5a60
/* B3E8EC 800C774C 10000020 */  b     .L800C77D0
/* B3E8F0 800C7750 00000000 */   nop   
.L800C7754:
/* B3E8F4 800C7754 14410004 */  bne   $v0, $at, .L800C7768
/* B3E8F8 800C7758 24190002 */   li    $t9, 2
/* B3E8FC 800C775C 02934021 */  addu  $t0, $s4, $s3
/* B3E900 800C7760 1000001B */  b     .L800C77D0
/* B3E904 800C7764 A11902AE */   sb    $t9, 0x2ae($t0)
.L800C7768:
/* B3E908 800C7768 24010004 */  li    $at, 4
/* B3E90C 800C776C 14410018 */  bne   $v0, $at, .L800C77D0
/* B3E910 800C7770 3C048014 */   lui   $a0, %hi(D_80145A64) # $a0, 0x8014
/* B3E914 800C7774 24845A64 */  addiu $a0, %lo(D_80145A64) # addiu $a0, $a0, 0x5a64
/* B3E918 800C7778 0C000B84 */  jal   LogUtils_LogThreadId
/* B3E91C 800C777C 2405011A */   li    $a1, 282
/* B3E920 800C7780 3C058013 */  lui   $a1, %hi(D_8012D284) # $a1, 0x8013
/* B3E924 800C7784 8CA5D284 */  lw    $a1, %lo(D_8012D284)($a1)
/* B3E928 800C7788 3C048014 */  lui   $a0, %hi(D_80145A70) # $a0, 0x8014
/* B3E92C 800C778C 3C018013 */  lui   $at, %hi(D_8012D284) # $at, 0x8013
/* B3E930 800C7790 24A50001 */  addiu $a1, $a1, 1
/* B3E934 800C7794 AC25D284 */  sw    $a1, %lo(D_8012D284)($at)
/* B3E938 800C7798 0C00084C */  jal   osSyncPrintf
/* B3E93C 800C779C 24845A70 */   addiu $a0, %lo(D_80145A70) # addiu $a0, $a0, 0x5a70
/* B3E940 800C77A0 3C048014 */  lui   $a0, %hi(D_80145A80) # $a0, 0x8014
/* B3E944 800C77A4 0C00084C */  jal   osSyncPrintf
/* B3E948 800C77A8 24845A80 */   addiu $a0, %lo(D_80145A80) # addiu $a0, $a0, 0x5a80
/* B3E94C 800C77AC 3C048014 */  lui   $a0, %hi(D_80145A88) # $a0, 0x8014
/* B3E950 800C77B0 3C068014 */  lui   $a2, %hi(D_80145A9C) # $a2, 0x8014
/* B3E954 800C77B4 24C65A9C */  addiu $a2, %lo(D_80145A9C) # addiu $a2, $a2, 0x5a9c
/* B3E958 800C77B8 24845A88 */  addiu $a0, %lo(D_80145A88) # addiu $a0, $a0, 0x5a88
/* B3E95C 800C77BC 0C00084C */  jal   osSyncPrintf
/* B3E960 800C77C0 26650001 */   addiu $a1, $s3, 1
/* B3E964 800C77C4 3C048014 */  lui   $a0, %hi(D_80145ABC) # $a0, 0x8014
/* B3E968 800C77C8 0C00084C */  jal   osSyncPrintf
/* B3E96C 800C77CC 24845ABC */   addiu $a0, %lo(D_80145ABC) # addiu $a0, $a0, 0x5abc
.L800C77D0:
/* B3E970 800C77D0 3C098017 */  lui   $t1, %hi(D_8016A4F0) # $t1, 0x8017
/* B3E974 800C77D4 8D29A4F0 */  lw    $t1, %lo(D_8016A4F0)($t1)
/* B3E978 800C77D8 3C018017 */  lui   $at, %hi(D_8016A4F0) # $at, 0x8017
/* B3E97C 800C77DC 02802025 */  move  $a0, $s4
/* B3E980 800C77E0 252A0001 */  addiu $t2, $t1, 1
/* B3E984 800C77E4 AC2AA4F0 */  sw    $t2, %lo(D_8016A4F0)($at)
/* B3E988 800C77E8 0C031CBF */  jal   PadMgr_UnlockReleaseControllerQueue
/* B3E98C 800C77EC 8FA5003C */   lw    $a1, 0x3c($sp)
/* B3E990 800C77F0 8FBF0034 */  lw    $ra, 0x34($sp)
/* B3E994 800C77F4 8FB00018 */  lw    $s0, 0x18($sp)
/* B3E998 800C77F8 8FB1001C */  lw    $s1, 0x1c($sp)
/* B3E99C 800C77FC 8FB20020 */  lw    $s2, 0x20($sp)
/* B3E9A0 800C7800 8FB30024 */  lw    $s3, 0x24($sp)
/* B3E9A4 800C7804 8FB40028 */  lw    $s4, 0x28($sp)
/* B3E9A8 800C7808 8FB5002C */  lw    $s5, 0x2c($sp)
/* B3E9AC 800C780C 8FB60030 */  lw    $s6, 0x30($sp)
/* B3E9B0 800C7810 03E00008 */  jr    $ra
/* B3E9B4 800C7814 27BD0048 */   addiu $sp, $sp, 0x48

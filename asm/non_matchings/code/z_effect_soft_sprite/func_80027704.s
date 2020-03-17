glabel func_80027704
/* A9E8A4 80027704 27BDFFE0 */  addiu $sp, $sp, -0x20
/* A9E8A8 80027708 AFBF0014 */  sw    $ra, 0x14($sp)
/* A9E8AC 8002770C 0C03034A */  jal   func_800C0D28
/* A9E8B0 80027710 AFA50024 */   sw    $a1, 0x24($sp)
/* A9E8B4 80027714 24010001 */  li    $at, 1
/* A9E8B8 80027718 1041001B */  beq   $v0, $at, .L80027788
/* A9E8BC 8002771C 8FAE0024 */   lw    $t6, 0x24($sp)
/* A9E8C0 80027720 91C4005E */  lbu   $a0, 0x5e($t6)
/* A9E8C4 80027724 0C009D74 */  jal   func_800275D0
/* A9E8C8 80027728 27A5001C */   addiu $a1, $sp, 0x1c
/* A9E8CC 8002772C 14400016 */  bnez  $v0, .L80027788
/* A9E8D0 80027730 8FAF001C */   lw    $t7, 0x1c($sp)
/* A9E8D4 80027734 8FA8001C */  lw    $t0, 0x1c($sp)
/* A9E8D8 80027738 3C028011 */  lui   $v0, %hi(EffectSS2Info) # $v0, 0x8011
/* A9E8DC 8002773C 244258B0 */  addiu $v0, %lo(EffectSS2Info) # addiu $v0, $v0, 0x58b0
/* A9E8E0 80027740 8C590000 */  lw    $t9, ($v0)
/* A9E8E4 80027744 8FAB0024 */  lw    $t3, 0x24($sp)
/* A9E8E8 80027748 00084880 */  sll   $t1, $t0, 2
/* A9E8EC 8002774C 01284823 */  subu  $t1, $t1, $t0
/* A9E8F0 80027750 25F80001 */  addiu $t8, $t7, 1
/* A9E8F4 80027754 00094940 */  sll   $t1, $t1, 5
/* A9E8F8 80027758 AC580004 */  sw    $t8, 4($v0)
/* A9E8FC 8002775C 03295021 */  addu  $t2, $t9, $t1
/* A9E900 80027760 256E0060 */  addiu $t6, $t3, 0x60
.L80027764:
/* A9E904 80027764 8D6D0000 */  lw    $t5, ($t3)
/* A9E908 80027768 256B000C */  addiu $t3, $t3, 0xc
/* A9E90C 8002776C 254A000C */  addiu $t2, $t2, 0xc
/* A9E910 80027770 AD4DFFF4 */  sw    $t5, -0xc($t2)
/* A9E914 80027774 8D6CFFF8 */  lw    $t4, -8($t3)
/* A9E918 80027778 AD4CFFF8 */  sw    $t4, -8($t2)
/* A9E91C 8002777C 8D6DFFFC */  lw    $t5, -4($t3)
/* A9E920 80027780 156EFFF8 */  bne   $t3, $t6, .L80027764
/* A9E924 80027784 AD4DFFFC */   sw    $t5, -4($t2)
.L80027788:
/* A9E928 80027788 8FBF0014 */  lw    $ra, 0x14($sp)
/* A9E92C 8002778C 27BD0020 */  addiu $sp, $sp, 0x20
/* A9E930 80027790 03E00008 */  jr    $ra
/* A9E934 80027794 00000000 */   nop   


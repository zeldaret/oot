glabel func_800E7744

    # if (bankId == 0xFF)
        # return -1;
/* B5E8E4 800E7744 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5E8E8 800E7748 240100FF */  li    $at, 255
/* B5E8EC 800E774C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5E8F0 800E7750 14A10003 */  bne   $a1, $at, .BANKCHECK
/* B5E8F4 800E7754 AFA40018 */   sw    $a0, 0x18($sp)
/* B5E8F8 800E7758 10000047 */  b     .RETURN
/* B5E8FC 800E775C 2402FFFF */   li    $v0, -1


.BANKCHECK:
    # if (func_800E18B0(bankId) == 0) {
        # return -2;
    # }
/* B5E900 800E7760 00A02025 */  move  $a0, $a1
/* B5E904 800E7764 AFA5001C */  sw    $a1, 0x1c($sp)
/* B5E908 800E7768 AFA60020 */  sw    $a2, 0x20($sp)
/* B5E90C 800E776C 0C03862C */  jal   func_800E18B0
/* B5E910 800E7770 AFA70024 */   sw    $a3, 0x24($sp)
/* B5E914 800E7774 8FA30018 */  lw    $v1, 0x18($sp)
/* B5E918 800E7778 8FA5001C */  lw    $a1, 0x1c($sp)
/* B5E91C 800E777C 8FA60020 */  lw    $a2, 0x20($sp)
/* B5E920 800E7780 14400003 */  bnez  $v0, .MAINCHECK
/* B5E924 800E7784 8FA70024 */   lw    $a3, 0x24($sp)
/* B5E928 800E7788 1000003B */  b     .RETURN
/* B5E92C 800E778C 2402FFFE */   li    $v0, -2


.MAINCHECK:
    # if (arg0 != 0) {
/* B5E930 800E7790 10600006 */  beqz  $v1, .SWITCH0
/* B5E934 800E7794 3C0E8017 */   lui   $t6, %hi(D_801719C4) # $t6, 0x8017
    # if (arg0 != 1) {
/* B5E938 800E7798 24010001 */  li    $at, 1
/* B5E93C 800E779C 10610013 */  beq   $v1, $at, .SWITCH1
/* B5E940 800E77A0 3C0A8017 */   lui   $t2, %hi(D_801719C4) # $t2, 0x8017
/* B5E944 800E77A4 10000024 */  b     .SWITCH2
/* B5E948 800E77A8 3C088017 */   lui   $t0, %hi(D_801719C4) # $t0, 0x8017

.SWITCH0:
    # if (instId >= gAudioContext.gCtlEntries[bankId].numDrums) {
        # return -3;
    # }
/* B5E94C 800E77AC 8DCE19C4 */  lw    $t6, %lo(D_801719C4)($t6)
/* B5E950 800E77B0 00057880 */  sll   $t7, $a1, 2
/* B5E954 800E77B4 01E57821 */  addu  $t7, $t7, $a1
/* B5E958 800E77B8 000F7880 */  sll   $t7, $t7, 2
/* B5E95C 800E77BC 01CF1021 */  addu  $v0, $t6, $t7
/* B5E960 800E77C0 90580001 */  lbu   $t8, 1($v0)
/* B5E964 800E77C4 00D8082A */  slt   $at, $a2, $t8
/* B5E968 800E77C8 54200004 */  bnezl $at, .MAINELSERET0
/* B5E96C 800E77CC 8C59000C */   lw    $t9, 0xc($v0)
/* B5E970 800E77D0 10000029 */  b     .RETURN
/* B5E974 800E77D4 2402FFFD */   li    $v0, -3

/* B5E978 800E77D8 8C59000C */  lw    $t9, 0xc($v0)
.MAINELSERET0:
/* B5E97C 800E77DC 00064080 */  sll   $t0, $a2, 2
/* B5E980 800E77E0 03284821 */  addu  $t1, $t9, $t0
/* B5E984 800E77E4 10000023 */  b     .RETURN0
/* B5E988 800E77E8 AD270000 */   sw    $a3, ($t1)

.SWITCH1:
    # if (instId >= gAudioContext.gCtlEntries[bankId].numUnkInstruments) {
        # return -3;
    # }
/* B5E98C 800E77EC 8D4A19C4 */  lw    $t2, %lo(D_801719C4)($t2)
/* B5E990 800E77F0 00055880 */  sll   $t3, $a1, 2
/* B5E994 800E77F4 01655821 */  addu  $t3, $t3, $a1
/* B5E998 800E77F8 000B5880 */  sll   $t3, $t3, 2
/* B5E99C 800E77FC 014B1021 */  addu  $v0, $t2, $t3
/* B5E9A0 800E7800 944C0004 */  lhu   $t4, 4($v0)
/* B5E9A4 800E7804 00CC082A */  slt   $at, $a2, $t4
/* B5E9A8 800E7808 54200004 */  bnezl $at, .TEMPS
/* B5E9AC 800E780C 8C4D0010 */   lw    $t5, 0x10($v0)
/* B5E9B0 800E7810 10000019 */  b     .RETURN
/* B5E9B4 800E7814 2402FFFD */   li    $v0, -3
/* B5E9B8 800E7818 8C4D0010 */  lw    $t5, 0x10($v0)

.TEMPS:
/* B5E9BC 800E781C 8CF90000 */  lw    $t9, ($a3)
/* B5E9C0 800E7820 000670C0 */  sll   $t6, $a2, 3
/* B5E9C4 800E7824 01AE7821 */  addu  $t7, $t5, $t6
/* B5E9C8 800E7828 ADF90000 */  sw    $t9, ($t7)
/* B5E9CC 800E782C 8CF80004 */  lw    $t8, 4($a3)
/* B5E9D0 800E7830 10000010 */  b     .RETURN0
/* B5E9D4 800E7834 ADF80004 */   sw    $t8, 4($t7)

.SWITCH2:
/* B5E9D8 800E7838 8D0819C4 */  lw    $t0, %lo(D_801719C4)($t0)
/* B5E9DC 800E783C 00054880 */  sll   $t1, $a1, 2
/* B5E9E0 800E7840 01254821 */  addu  $t1, $t1, $a1
/* B5E9E4 800E7844 00094880 */  sll   $t1, $t1, 2
/* B5E9E8 800E7848 01091021 */  addu  $v0, $t0, $t1
/* B5E9EC 800E784C 904A0000 */  lbu   $t2, ($v0)
/* B5E9F0 800E7850 00CA082A */  slt   $at, $a2, $t2
/* B5E9F4 800E7854 54200004 */  bnezl $at, .L800E7868
/* B5E9F8 800E7858 8C4B0008 */   lw    $t3, 8($v0)
/* B5E9FC 800E785C 10000006 */  b     .RETURN
/* B5EA00 800E7860 2402FFFD */   li    $v0, -3
/* B5EA04 800E7864 8C4B0008 */  lw    $t3, 8($v0)
.L800E7868:
/* B5EA08 800E7868 00066080 */  sll   $t4, $a2, 2
/* B5EA0C 800E786C 016C6821 */  addu  $t5, $t3, $t4
/* B5EA10 800E7870 ADA70000 */  sw    $a3, ($t5)

.RETURN0:
/* B5EA14 800E7874 00001025 */  move  $v0, $zero
.RETURN:
/* B5EA18 800E7878 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5EA1C 800E787C 27BD0018 */  addiu $sp, $sp, 0x18
/* B5EA20 800E7880 03E00008 */  jr    $ra
/* B5EA24 800E7884 00000000 */   nop   

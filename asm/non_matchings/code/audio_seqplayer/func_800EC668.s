glabel func_800EC668
/* B63808 800EC668 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B6380C 800EC66C AFBF0024 */  sw    $ra, 0x24($sp)
/* B63810 800EC670 AFB20020 */  sw    $s2, 0x20($sp)
/* B63814 800EC674 AFB1001C */  sw    $s1, 0x1c($sp)
/* B63818 800EC678 AFB00018 */  sw    $s0, 0x18($sp)
/* B6381C 800EC67C 0C03A6DB */  jal   func_800E9B6C
/* B63820 800EC680 AFA40028 */   sw    $a0, 0x28($sp)
/* B63824 800EC684 8FB10028 */  lw    $s1, 0x28($sp)
/* B63828 800EC688 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B6382C 800EC68C 44812000 */  mtc1  $at, $f4
/* B63830 800EC690 44800000 */  mtc1  $zero, $f0
/* B63834 800EC694 922E0000 */  lbu   $t6, ($s1)
/* B63838 800EC698 3C013F00 */  li    $at, 0x3F000000 # 0.000000
/* B6383C 800EC69C 44813000 */  mtc1  $at, $f6
/* B63840 800EC6A0 3C088013 */  lui   $t0, %hi(D_8012FAB4) # $t0, 0x8013
/* B63844 800EC6A4 3C098013 */  lui   $t1, %hi(D_8012FAC4) # $t1, 0x8013
/* B63848 800EC6A8 24180001 */  li    $t8, 1
/* B6384C 800EC6AC 24191680 */  li    $t9, 5760
/* B63850 800EC6B0 2508FAB4 */  addiu $t0, %lo(D_8012FAB4) # addiu $t0, $t0, -0x54c
/* B63854 800EC6B4 2529FAC4 */  addiu $t1, %lo(D_8012FAC4) # addiu $t1, $t1, -0x53c
/* B63858 800EC6B8 31CFFFFD */  andi  $t7, $t6, 0xfffd
/* B6385C 800EC6BC 00008025 */  move  $s0, $zero
/* B63860 800EC6C0 24120040 */  li    $s2, 64
/* B63864 800EC6C4 A22F0000 */  sb    $t7, ($s1)
/* B63868 800EC6C8 A6200010 */  sh    $zero, 0x10($s1)
/* B6386C 800EC6CC A2380001 */  sb    $t8, 1($s1)
/* B63870 800EC6D0 A6200012 */  sh    $zero, 0x12($s1)
/* B63874 800EC6D4 A6200014 */  sh    $zero, 0x14($s1)
/* B63878 800EC6D8 A620000A */  sh    $zero, 0xa($s1)
/* B6387C 800EC6DC A6390008 */  sh    $t9, 8($s1)
/* B63880 800EC6E0 A620000C */  sh    $zero, 0xc($s1)
/* B63884 800EC6E4 A620000E */  sh    $zero, 0xe($s1)
/* B63888 800EC6E8 A2200002 */  sb    $zero, 2($s1)
/* B6388C 800EC6EC AE280094 */  sw    $t0, 0x94($s1)
/* B63890 800EC6F0 AE290098 */  sw    $t1, 0x98($s1)
/* B63894 800EC6F4 AE2000E0 */  sw    $zero, 0xe0($s1)
/* B63898 800EC6F8 E624001C */  swc1  $f4, 0x1c($s1)
/* B6389C 800EC6FC E6200020 */  swc1  $f0, 0x20($s1)
/* B638A0 800EC700 E6200024 */  swc1  $f0, 0x24($s1)
/* B638A4 800EC704 E6260028 */  swc1  $f6, 0x28($s1)
.L800EC708:
/* B638A8 800EC708 0C03A561 */  jal   func_800E9584
/* B638AC 800EC70C 8E240038 */   lw    $a0, 0x38($s1)
/* B638B0 800EC710 26100004 */  addiu $s0, $s0, 4
/* B638B4 800EC714 1612FFFC */  bne   $s0, $s2, .L800EC708
/* B638B8 800EC718 26310004 */   addiu $s1, $s1, 4
/* B638BC 800EC71C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B638C0 800EC720 8FB00018 */  lw    $s0, 0x18($sp)
/* B638C4 800EC724 8FB1001C */  lw    $s1, 0x1c($sp)
/* B638C8 800EC728 8FB20020 */  lw    $s2, 0x20($sp)
/* B638CC 800EC72C 03E00008 */  jr    $ra
/* B638D0 800EC730 27BD0028 */   addiu $sp, $sp, 0x28


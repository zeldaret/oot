glabel func_800C3770
/* B3A910 800C3770 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3A914 800C3774 AFBF0024 */  sw    $ra, 0x24($sp)
/* B3A918 800C3778 AFB30020 */  sw    $s3, 0x20($sp)
/* B3A91C 800C377C AFB2001C */  sw    $s2, 0x1c($sp)
/* B3A920 800C3780 AFB10018 */  sw    $s1, 0x18($sp)
/* B3A924 800C3784 AFB00014 */  sw    $s0, 0x14($sp)
/* B3A928 800C3788 8C8E0018 */  lw    $t6, 0x18($a0)
/* B3A92C 800C378C 00809025 */  move  $s2, $a0
/* B3A930 800C3790 51C00032 */  beql  $t6, $zero, .L800C385C
/* B3A934 800C3794 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A938 800C3798 8C8F0014 */  lw    $t7, 0x14($a0)
/* B3A93C 800C379C 51E0002F */  beql  $t7, $zero, .L800C385C
/* B3A940 800C37A0 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A944 800C37A4 8C820004 */  lw    $v0, 4($a0)
/* B3A948 800C37A8 00008825 */  move  $s1, $zero
/* B3A94C 800C37AC 24130008 */  li    $s3, 8
/* B3A950 800C37B0 1840001C */  blez  $v0, .L800C3824
/* B3A954 800C37B4 00000000 */   nop   
/* B3A958 800C37B8 8C830000 */  lw    $v1, ($a0)
.L800C37BC:
/* B3A95C 800C37BC 18600015 */  blez  $v1, .L800C3814
/* B3A960 800C37C0 00008025 */   move  $s0, $zero
.L800C37C4:
/* B3A964 800C37C4 02230019 */  multu $s1, $v1
/* B3A968 800C37C8 8E580018 */  lw    $t8, 0x18($s2)
/* B3A96C 800C37CC 02402025 */  move  $a0, $s2
/* B3A970 800C37D0 02002825 */  move  $a1, $s0
/* B3A974 800C37D4 0310C821 */  addu  $t9, $t8, $s0
/* B3A978 800C37D8 00004012 */  mflo  $t0
/* B3A97C 800C37DC 03284821 */  addu  $t1, $t9, $t0
/* B3A980 800C37E0 91220000 */  lbu   $v0, ($t1)
/* B3A984 800C37E4 00021143 */  sra   $v0, $v0, 5
/* B3A988 800C37E8 24420001 */  addiu $v0, $v0, 1
/* B3A98C 800C37EC 50530005 */  beql  $v0, $s3, .L800C3804
/* B3A990 800C37F0 26100001 */   addiu $s0, $s0, 1
/* B3A994 800C37F4 0C030940 */  jal   func_800C2500
/* B3A998 800C37F8 02203025 */   move  $a2, $s1
/* B3A99C 800C37FC 8E430000 */  lw    $v1, ($s2)
/* B3A9A0 800C3800 26100001 */  addiu $s0, $s0, 1
.L800C3804:
/* B3A9A4 800C3804 0203082A */  slt   $at, $s0, $v1
/* B3A9A8 800C3808 1420FFEE */  bnez  $at, .L800C37C4
/* B3A9AC 800C380C 00000000 */   nop   
/* B3A9B0 800C3810 8E420004 */  lw    $v0, 4($s2)
.L800C3814:
/* B3A9B4 800C3814 26310001 */  addiu $s1, $s1, 1
/* B3A9B8 800C3818 0222082A */  slt   $at, $s1, $v0
/* B3A9BC 800C381C 1420FFE7 */  bnez  $at, .L800C37BC
/* B3A9C0 800C3820 00000000 */   nop   
.L800C3824:
/* B3A9C4 800C3824 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B3A9C8 800C3828 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B3A9CC 800C382C 2401000F */  li    $at, 15
/* B3A9D0 800C3830 00001825 */  move  $v1, $zero
/* B3A9D4 800C3834 844A1074 */  lh    $t2, 0x1074($v0)
/* B3A9D8 800C3838 15410003 */  bne   $t2, $at, .L800C3848
/* B3A9DC 800C383C 00000000 */   nop   
/* B3A9E0 800C3840 10000001 */  b     .L800C3848
/* B3A9E4 800C3844 84431076 */   lh    $v1, 0x1076($v0)
.L800C3848:
/* B3A9E8 800C3848 50600004 */  beql  $v1, $zero, .L800C385C
/* B3A9EC 800C384C 8FBF0024 */   lw    $ra, 0x24($sp)
/* B3A9F0 800C3850 0C030BF9 */  jal   func_800C2FE4
/* B3A9F4 800C3854 02402025 */   move  $a0, $s2
/* B3A9F8 800C3858 8FBF0024 */  lw    $ra, 0x24($sp)
.L800C385C:
/* B3A9FC 800C385C 8FB00014 */  lw    $s0, 0x14($sp)
/* B3AA00 800C3860 8FB10018 */  lw    $s1, 0x18($sp)
/* B3AA04 800C3864 8FB2001C */  lw    $s2, 0x1c($sp)
/* B3AA08 800C3868 8FB30020 */  lw    $s3, 0x20($sp)
/* B3AA0C 800C386C 03E00008 */  jr    $ra
/* B3AA10 800C3870 27BD0028 */   addiu $sp, $sp, 0x28
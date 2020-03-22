.text
glabel func_8005C1AC
/* AD334C 8005C1AC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD3350 8005C1B0 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD3354 8005C1B4 AFB20020 */  sw    $s2, 0x20($sp)
/* AD3358 8005C1B8 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD335C 8005C1BC 00809025 */  move  $s2, $a0
/* AD3360 8005C1C0 AFB00018 */  sw    $s0, 0x18($sp)
/* AD3364 8005C1C4 00A08825 */  move  $s1, $a1
/* AD3368 8005C1C8 0C016DE1 */  jal   func_8005B784
/* AD336C 8005C1CC AFA5002C */   sw    $a1, 0x2c($sp)
/* AD3370 8005C1D0 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD3374 8005C1D4 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3378 8005C1D8 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD337C 8005C1DC 000E7980 */  sll   $t7, $t6, 6
/* AD3380 8005C1E0 020FC021 */  addu  $t8, $s0, $t7
/* AD3384 8005C1E4 0218082B */  sltu  $at, $s0, $t8
/* AD3388 8005C1E8 1020000B */  beqz  $at, .L8005C218
/* AD338C 8005C1EC 02402025 */   move  $a0, $s2
.L8005C1F0:
/* AD3390 8005C1F0 0C016EEC */  jal   func_8005BBB0
/* AD3394 8005C1F4 02002825 */   move  $a1, $s0
/* AD3398 8005C1F8 8E280018 */  lw    $t0, 0x18($s1)
/* AD339C 8005C1FC 8E39001C */  lw    $t9, 0x1c($s1)
/* AD33A0 8005C200 26100040 */  addiu $s0, $s0, 0x40
/* AD33A4 8005C204 00084980 */  sll   $t1, $t0, 6
/* AD33A8 8005C208 03295021 */  addu  $t2, $t9, $t1
/* AD33AC 8005C20C 020A082B */  sltu  $at, $s0, $t2
/* AD33B0 8005C210 5420FFF7 */  bnezl $at, .L8005C1F0
/* AD33B4 8005C214 02402025 */   move  $a0, $s2
.L8005C218:
/* AD33B8 8005C218 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD33BC 8005C21C 8FB00018 */  lw    $s0, 0x18($sp)
/* AD33C0 8005C220 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD33C4 8005C224 8FB20020 */  lw    $s2, 0x20($sp)
/* AD33C8 8005C228 27BD0028 */  addiu $sp, $sp, 0x28
/* AD33CC 8005C22C 03E00008 */  jr    $ra
/* AD33D0 8005C230 24020001 */   li    $v0, 1

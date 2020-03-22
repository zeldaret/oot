.text
glabel func_8005C234
/* AD33D4 8005C234 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD33D8 8005C238 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD33DC 8005C23C AFB20020 */  sw    $s2, 0x20($sp)
/* AD33E0 8005C240 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD33E4 8005C244 00809025 */  move  $s2, $a0
/* AD33E8 8005C248 AFB00018 */  sw    $s0, 0x18($sp)
/* AD33EC 8005C24C 00A08825 */  move  $s1, $a1
/* AD33F0 8005C250 0C016DE7 */  jal   func_8005B79C
/* AD33F4 8005C254 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD33F8 8005C258 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD33FC 8005C25C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD3400 8005C260 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD3404 8005C264 000E7980 */  sll   $t7, $t6, 6
/* AD3408 8005C268 020FC021 */  addu  $t8, $s0, $t7
/* AD340C 8005C26C 0218082B */  sltu  $at, $s0, $t8
/* AD3410 8005C270 1020000B */  beqz  $at, .L8005C2A0
/* AD3414 8005C274 02402025 */   move  $a0, $s2
.L8005C278:
/* AD3418 8005C278 0C016EF5 */  jal   func_8005BBD4
/* AD341C 8005C27C 02002825 */   move  $a1, $s0
/* AD3420 8005C280 8E280018 */  lw    $t0, 0x18($s1)
/* AD3424 8005C284 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3428 8005C288 26100040 */  addiu $s0, $s0, 0x40
/* AD342C 8005C28C 00084980 */  sll   $t1, $t0, 6
/* AD3430 8005C290 03295021 */  addu  $t2, $t9, $t1
/* AD3434 8005C294 020A082B */  sltu  $at, $s0, $t2
/* AD3438 8005C298 5420FFF7 */  bnezl $at, .L8005C278
/* AD343C 8005C29C 02402025 */   move  $a0, $s2
.L8005C2A0:
/* AD3440 8005C2A0 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3444 8005C2A4 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3448 8005C2A8 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD344C 8005C2AC 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3450 8005C2B0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3454 8005C2B4 03E00008 */  jr    $ra
/* AD3458 8005C2B8 24020001 */   li    $v0, 1


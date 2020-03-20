.text
glabel func_8005BCC8
/* AD2E68 8005BCC8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2E6C 8005BCCC AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2E70 8005BCD0 AFB20020 */  sw    $s2, 0x20($sp)
/* AD2E74 8005BCD4 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD2E78 8005BCD8 00A08825 */  move  $s1, $a1
/* AD2E7C 8005BCDC 00809025 */  move  $s2, $a0
/* AD2E80 8005BCE0 0C016DA8 */  jal   func_8005B6A0
/* AD2E84 8005BCE4 AFB00018 */   sw    $s0, 0x18($sp)
/* AD2E88 8005BCE8 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD2E8C 8005BCEC 8E30001C */  lw    $s0, 0x1c($s1)
/* AD2E90 8005BCF0 000E7980 */  sll   $t7, $t6, 6
/* AD2E94 8005BCF4 020FC021 */  addu  $t8, $s0, $t7
/* AD2E98 8005BCF8 0218082B */  sltu  $at, $s0, $t8
/* AD2E9C 8005BCFC 1020000B */  beqz  $at, .L8005BD2C
/* AD2EA0 8005BD00 02402025 */   move  $a0, $s2
.L8005BD04:
/* AD2EA4 8005BD04 0C016EC4 */  jal   func_8005BB10
/* AD2EA8 8005BD08 02002825 */   move  $a1, $s0
/* AD2EAC 8005BD0C 8E280018 */  lw    $t0, 0x18($s1)
/* AD2EB0 8005BD10 8E39001C */  lw    $t9, 0x1c($s1)
/* AD2EB4 8005BD14 26100040 */  addiu $s0, $s0, 0x40
/* AD2EB8 8005BD18 00084980 */  sll   $t1, $t0, 6
/* AD2EBC 8005BD1C 03295021 */  addu  $t2, $t9, $t1
/* AD2EC0 8005BD20 020A082B */  sltu  $at, $s0, $t2
/* AD2EC4 8005BD24 5420FFF7 */  bnezl $at, .L8005BD04
/* AD2EC8 8005BD28 02402025 */   move  $a0, $s2
.L8005BD2C:
/* AD2ECC 8005BD2C AE200018 */  sw    $zero, 0x18($s1)
/* AD2ED0 8005BD30 AE20001C */  sw    $zero, 0x1c($s1)
/* AD2ED4 8005BD34 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2ED8 8005BD38 8FB20020 */  lw    $s2, 0x20($sp)
/* AD2EDC 8005BD3C 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD2EE0 8005BD40 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2EE4 8005BD44 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2EE8 8005BD48 03E00008 */  jr    $ra
/* AD2EEC 8005BD4C 24020001 */   li    $v0, 1

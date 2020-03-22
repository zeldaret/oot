.text
glabel func_8005C124
/* AD32C4 8005C124 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD32C8 8005C128 AFBF0024 */  sw    $ra, 0x24($sp)
/* AD32CC 8005C12C AFB20020 */  sw    $s2, 0x20($sp)
/* AD32D0 8005C130 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD32D4 8005C134 00809025 */  move  $s2, $a0
/* AD32D8 8005C138 AFB00018 */  sw    $s0, 0x18($sp)
/* AD32DC 8005C13C 00A08825 */  move  $s1, $a1
/* AD32E0 8005C140 0C016DDB */  jal   func_8005B76C
/* AD32E4 8005C144 AFA5002C */   sw    $a1, 0x2c($sp)
/* AD32E8 8005C148 8FA5002C */  lw    $a1, 0x2c($sp)
/* AD32EC 8005C14C 8CAE0018 */  lw    $t6, 0x18($a1)
/* AD32F0 8005C150 8CB0001C */  lw    $s0, 0x1c($a1)
/* AD32F4 8005C154 000E7980 */  sll   $t7, $t6, 6
/* AD32F8 8005C158 020FC021 */  addu  $t8, $s0, $t7
/* AD32FC 8005C15C 0218082B */  sltu  $at, $s0, $t8
/* AD3300 8005C160 1020000B */  beqz  $at, .L8005C190
/* AD3304 8005C164 02402025 */   move  $a0, $s2
.L8005C168:
/* AD3308 8005C168 0C016EE3 */  jal   func_8005BB8C
/* AD330C 8005C16C 02002825 */   move  $a1, $s0
/* AD3310 8005C170 8E280018 */  lw    $t0, 0x18($s1)
/* AD3314 8005C174 8E39001C */  lw    $t9, 0x1c($s1)
/* AD3318 8005C178 26100040 */  addiu $s0, $s0, 0x40
/* AD331C 8005C17C 00084980 */  sll   $t1, $t0, 6
/* AD3320 8005C180 03295021 */  addu  $t2, $t9, $t1
/* AD3324 8005C184 020A082B */  sltu  $at, $s0, $t2
/* AD3328 8005C188 5420FFF7 */  bnezl $at, .L8005C168
/* AD332C 8005C18C 02402025 */   move  $a0, $s2
.L8005C190:
/* AD3330 8005C190 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD3334 8005C194 8FB00018 */  lw    $s0, 0x18($sp)
/* AD3338 8005C198 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD333C 8005C19C 8FB20020 */  lw    $s2, 0x20($sp)
/* AD3340 8005C1A0 27BD0028 */  addiu $sp, $sp, 0x28
/* AD3344 8005C1A4 03E00008 */  jr    $ra
/* AD3348 8005C1A8 24020001 */   li    $v0, 1

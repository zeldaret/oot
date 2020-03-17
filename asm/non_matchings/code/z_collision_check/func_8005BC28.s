.rdata
glabel D_8013A608
    .asciz "../z_collision_check.c"
    .balign 4

.text
glabel func_8005BC28
/* AD2DC8 8005BC28 27BDFFD8 */  addiu $sp, $sp, -0x28
/* AD2DCC 8005BC2C AFBF0024 */  sw    $ra, 0x24($sp)
/* AD2DD0 8005BC30 AFB20020 */  sw    $s2, 0x20($sp)
/* AD2DD4 8005BC34 AFB1001C */  sw    $s1, 0x1c($sp)
/* AD2DD8 8005BC38 00A08825 */  move  $s1, $a1
/* AD2DDC 8005BC3C 00809025 */  move  $s2, $a0
/* AD2DE0 8005BC40 0C016DA8 */  jal   func_8005B6A0
/* AD2DE4 8005BC44 AFB00018 */   sw    $s0, 0x18($sp)
/* AD2DE8 8005BC48 8E2E0018 */  lw    $t6, 0x18($s1)
/* AD2DEC 8005BC4C 8E24001C */  lw    $a0, 0x1c($s1)
/* AD2DF0 8005BC50 000E7980 */  sll   $t7, $t6, 6
/* AD2DF4 8005BC54 008FC021 */  addu  $t8, $a0, $t7
/* AD2DF8 8005BC58 0098082B */  sltu  $at, $a0, $t8
/* AD2DFC 8005BC5C 1020000C */  beqz  $at, .L8005BC90
/* AD2E00 8005BC60 00808025 */   move  $s0, $a0
/* AD2E04 8005BC64 02402025 */  move  $a0, $s2
.L8005BC68:
/* AD2E08 8005BC68 0C016EC4 */  jal   func_8005BB10
/* AD2E0C 8005BC6C 02002825 */   move  $a1, $s0
/* AD2E10 8005BC70 8E390018 */  lw    $t9, 0x18($s1)
/* AD2E14 8005BC74 8E24001C */  lw    $a0, 0x1c($s1)
/* AD2E18 8005BC78 26100040 */  addiu $s0, $s0, 0x40
/* AD2E1C 8005BC7C 00194180 */  sll   $t0, $t9, 6
/* AD2E20 8005BC80 00884821 */  addu  $t1, $a0, $t0
/* AD2E24 8005BC84 0209082B */  sltu  $at, $s0, $t1
/* AD2E28 8005BC88 5420FFF7 */  bnezl $at, .L8005BC68
/* AD2E2C 8005BC8C 02402025 */   move  $a0, $s2
.L8005BC90:
/* AD2E30 8005BC90 10800005 */  beqz  $a0, .L8005BCA8
/* AD2E34 8005BC94 AE200018 */   sw    $zero, 0x18($s1)
/* AD2E38 8005BC98 3C058014 */  lui   $a1, %hi(D_8013A608) # $a1, 0x8014
/* AD2E3C 8005BC9C 24A5A608 */  addiu $a1, %lo(D_8013A608) # addiu $a1, $a1, -0x59f8
/* AD2E40 8005BCA0 0C01EC35 */  jal   ZeldaArena_FreeDebug
/* AD2E44 8005BCA4 24060571 */   li    $a2, 1393
.L8005BCA8:
/* AD2E48 8005BCA8 AE20001C */  sw    $zero, 0x1c($s1)
/* AD2E4C 8005BCAC 8FBF0024 */  lw    $ra, 0x24($sp)
/* AD2E50 8005BCB0 8FB20020 */  lw    $s2, 0x20($sp)
/* AD2E54 8005BCB4 8FB1001C */  lw    $s1, 0x1c($sp)
/* AD2E58 8005BCB8 8FB00018 */  lw    $s0, 0x18($sp)
/* AD2E5C 8005BCBC 27BD0028 */  addiu $sp, $sp, 0x28
/* AD2E60 8005BCC0 03E00008 */  jr    $ra
/* AD2E64 8005BCC4 24020001 */   li    $v0, 1


glabel func_80042C3C
/* AB9DDC 80042C3C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* AB9DE0 80042C40 AFB40028 */  sw    $s4, 0x28($sp)
/* AB9DE4 80042C44 AFB30024 */  sw    $s3, 0x24($sp)
/* AB9DE8 80042C48 AFB20020 */  sw    $s2, 0x20($sp)
/* AB9DEC 80042C4C AFB1001C */  sw    $s1, 0x1c($sp)
/* AB9DF0 80042C50 AFB00018 */  sw    $s0, 0x18($sp)
/* AB9DF4 80042C54 00A09825 */  move  $s3, $a1
/* AB9DF8 80042C58 0080A025 */  move  $s4, $a0
/* AB9DFC 80042C5C AFBF002C */  sw    $ra, 0x2c($sp)
/* AB9E00 80042C60 00008025 */  move  $s0, $zero
/* AB9E04 80042C64 00A08825 */  move  $s1, $a1
/* AB9E08 80042C68 24120032 */  li    $s2, 50
.L80042C6C:
/* AB9E0C 80042C6C 962E13DC */  lhu   $t6, 0x13dc($s1)
/* AB9E10 80042C70 02802025 */  move  $a0, $s4
/* AB9E14 80042C74 02602825 */  move  $a1, $s3
/* AB9E18 80042C78 31CF0001 */  andi  $t7, $t6, 1
/* AB9E1C 80042C7C 51E00004 */  beql  $t7, $zero, .L80042C90
/* AB9E20 80042C80 26100001 */   addiu $s0, $s0, 1
/* AB9E24 80042C84 0C010ACB */  jal   func_80042B2C
/* AB9E28 80042C88 02003025 */   move  $a2, $s0
/* AB9E2C 80042C8C 26100001 */  addiu $s0, $s0, 1
.L80042C90:
/* AB9E30 80042C90 1612FFF6 */  bne   $s0, $s2, .L80042C6C
/* AB9E34 80042C94 26310002 */   addiu $s1, $s1, 2
/* AB9E38 80042C98 8FBF002C */  lw    $ra, 0x2c($sp)
/* AB9E3C 80042C9C 8FB00018 */  lw    $s0, 0x18($sp)
/* AB9E40 80042CA0 8FB1001C */  lw    $s1, 0x1c($sp)
/* AB9E44 80042CA4 8FB20020 */  lw    $s2, 0x20($sp)
/* AB9E48 80042CA8 8FB30024 */  lw    $s3, 0x24($sp)
/* AB9E4C 80042CAC 8FB40028 */  lw    $s4, 0x28($sp)
/* AB9E50 80042CB0 03E00008 */  jr    $ra
/* AB9E54 80042CB4 27BD0030 */   addiu $sp, $sp, 0x30


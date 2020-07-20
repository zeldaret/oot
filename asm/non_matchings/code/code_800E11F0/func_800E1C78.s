glabel func_800E1C78
/* B58E18 800E1C78 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B58E1C 800E1C7C AFBF0024 */  sw    $ra, 0x24($sp)
/* B58E20 800E1C80 AFB00020 */  sw    $s0, 0x20($sp)
/* B58E24 800E1C84 908E0000 */  lbu   $t6, ($a0)
/* B58E28 800E1C88 24010001 */  li    $at, 1
/* B58E2C 800E1C8C 00808025 */  move  $s0, $a0
/* B58E30 800E1C90 31CF0001 */  andi  $t7, $t6, 1
/* B58E34 800E1C94 55E1002F */  bnel  $t7, $at, .L800E1D54
/* B58E38 800E1C98 8FBF0024 */   lw    $ra, 0x24($sp)
/* B58E3C 800E1C9C 8C820000 */  lw    $v0, ($a0)
/* B58E40 800E1CA0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B58E44 800E1CA4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B58E48 800E1CA8 00021900 */  sll   $v1, $v0, 4
/* B58E4C 800E1CAC 00031F82 */  srl   $v1, $v1, 0x1e
/* B58E50 800E1CB0 10600027 */  beqz  $v1, .L800E1D50
/* B58E54 800E1CB4 00412024 */   and   $a0, $v0, $at
/* B58E58 800E1CB8 8E060004 */  lw    $a2, 4($s0)
/* B58E5C 800E1CBC 00033E00 */  sll   $a3, $v1, 0x18
/* B58E60 800E1CC0 24180001 */  li    $t8, 1
/* B58E64 800E1CC4 AFB80010 */  sw    $t8, 0x10($sp)
/* B58E68 800E1CC8 0C038171 */  jal   func_800E05C4
/* B58E6C 800E1CCC 00073E03 */   sra   $a3, $a3, 0x18
/* B58E70 800E1CD0 14400003 */  bnez  $v0, .L800E1CE0
/* B58E74 800E1CD4 00402825 */   move  $a1, $v0
/* B58E78 800E1CD8 1000001D */  b     .L800E1D50
/* B58E7C 800E1CDC 2402FFFF */   li    $v0, -1
.L800E1CE0:
/* B58E80 800E1CE0 8E020000 */  lw    $v0, ($s0)
/* B58E84 800E1CE4 24010001 */  li    $at, 1
/* B58E88 800E1CE8 3C198017 */  lui   $t9, %hi(D_801719B8) # $t9, 0x8017
/* B58E8C 800E1CEC 00021900 */  sll   $v1, $v0, 4
/* B58E90 800E1CF0 00031F82 */  srl   $v1, $v1, 0x1e
/* B58E94 800E1CF4 1461000B */  bne   $v1, $at, .L800E1D24
/* B58E98 800E1CF8 00603825 */   move  $a3, $v1
/* B58E9C 800E1CFC 8F3919B8 */  lw    $t9, %lo(D_801719B8)($t9)
/* B58EA0 800E1D00 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B58EA4 800E1D04 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B58EA8 800E1D08 8E040004 */  lw    $a0, 4($s0)
/* B58EAC 800E1D0C 87270002 */  lh    $a3, 2($t9)
/* B58EB0 800E1D10 AFA5002C */  sw    $a1, 0x2c($sp)
/* B58EB4 800E1D14 0C038AF3 */  jal   func_800E2BCC
/* B58EB8 800E1D18 00413024 */   and   $a2, $v0, $at
/* B58EBC 800E1D1C 10000008 */  b     .L800E1D40
/* B58EC0 800E1D20 92080000 */   lbu   $t0, ($s0)
.L800E1D24:
/* B58EC4 800E1D24 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B58EC8 800E1D28 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B58ECC 800E1D2C 8E040004 */  lw    $a0, 4($s0)
/* B58ED0 800E1D30 AFA5002C */  sw    $a1, 0x2c($sp)
/* B58ED4 800E1D34 0C038AAA */  jal   func_800E2AA8
/* B58ED8 800E1D38 00413024 */   and   $a2, $v0, $at
/* B58EDC 800E1D3C 92080000 */  lbu   $t0, ($s0)
.L800E1D40:
/* B58EE0 800E1D40 3109FFF3 */  andi  $t1, $t0, 0xfff3
/* B58EE4 800E1D44 A2090000 */  sb    $t1, ($s0)
/* B58EE8 800E1D48 8FAA002C */  lw    $t2, 0x2c($sp)
/* B58EEC 800E1D4C AE0A0004 */  sw    $t2, 4($s0)
.L800E1D50:
/* B58EF0 800E1D50 8FBF0024 */  lw    $ra, 0x24($sp)
.L800E1D54:
/* B58EF4 800E1D54 8FB00020 */  lw    $s0, 0x20($sp)
/* B58EF8 800E1D58 27BD0030 */  addiu $sp, $sp, 0x30
/* B58EFC 800E1D5C 03E00008 */  jr    $ra
/* B58F00 800E1D60 00000000 */   nop


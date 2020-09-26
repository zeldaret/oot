glabel func_8003EC50
/* AB5DF0 8003EC50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5DF4 8003EC54 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5DF8 8003EC58 AFA40018 */  sw    $a0, 0x18($sp)
/* AB5DFC 8003EC5C AFA60020 */  sw    $a2, 0x20($sp)
/* AB5E00 8003EC60 00C02025 */  move  $a0, $a2
/* AB5E04 8003EC64 0C00FA4D */  jal   func_8003E934
/* AB5E08 8003EC68 AFA5001C */   sw    $a1, 0x1c($sp)
/* AB5E0C 8003EC6C 1040000A */  beqz  $v0, .L8003EC98
/* AB5E10 8003EC70 8FA5001C */   lw    $a1, 0x1c($sp)
/* AB5E14 8003EC74 8FAE0020 */  lw    $t6, 0x20($sp)
/* AB5E18 8003EC78 000E7840 */  sll   $t7, $t6, 1
/* AB5E1C 8003EC7C 00AF1021 */  addu  $v0, $a1, $t7
/* AB5E20 8003EC80 9458138C */  lhu   $t8, 0x138c($v0)
/* AB5E24 8003EC84 3319FFFB */  andi  $t9, $t8, 0xfffb
/* AB5E28 8003EC88 A459138C */  sh    $t9, 0x138c($v0)
/* AB5E2C 8003EC8C 90A80000 */  lbu   $t0, ($a1)
/* AB5E30 8003EC90 35090001 */  ori   $t1, $t0, 1
/* AB5E34 8003EC94 A0A90000 */  sb    $t1, ($a1)
.L8003EC98:
/* AB5E38 8003EC98 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5E3C 8003EC9C 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5E40 8003ECA0 03E00008 */  jr    $ra
/* AB5E44 8003ECA4 00000000 */   nop

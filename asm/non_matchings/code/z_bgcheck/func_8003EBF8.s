glabel func_8003EBF8
/* AB5D98 8003EBF8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5D9C 8003EBFC AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5DA0 8003EC00 AFA40018 */  sw    $a0, 0x18($sp)
/* AB5DA4 8003EC04 AFA60020 */  sw    $a2, 0x20($sp)
/* AB5DA8 8003EC08 00C02025 */  move  $a0, $a2
/* AB5DAC 8003EC0C 0C00FA4D */  jal   func_8003E934
/* AB5DB0 8003EC10 AFA5001C */   sw    $a1, 0x1c($sp)
/* AB5DB4 8003EC14 1040000A */  beqz  $v0, .L8003EC40
/* AB5DB8 8003EC18 8FA5001C */   lw    $a1, 0x1c($sp)
/* AB5DBC 8003EC1C 8FAE0020 */  lw    $t6, 0x20($sp)
/* AB5DC0 8003EC20 000E7840 */  sll   $t7, $t6, 1
/* AB5DC4 8003EC24 00AF1021 */  addu  $v0, $a1, $t7
/* AB5DC8 8003EC28 9458138C */  lhu   $t8, 0x138c($v0)
/* AB5DCC 8003EC2C 37190004 */  ori   $t9, $t8, 4
/* AB5DD0 8003EC30 A459138C */  sh    $t9, 0x138c($v0)
/* AB5DD4 8003EC34 90A80000 */  lbu   $t0, ($a1)
/* AB5DD8 8003EC38 35090001 */  ori   $t1, $t0, 1
/* AB5DDC 8003EC3C A0A90000 */  sb    $t1, ($a1)
.L8003EC40:
/* AB5DE0 8003EC40 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5DE4 8003EC44 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5DE8 8003EC48 03E00008 */  jr    $ra
/* AB5DEC 8003EC4C 00000000 */   nop

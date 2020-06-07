glabel func_8003ECA8
/* AB5E48 8003ECA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5E4C 8003ECAC AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5E50 8003ECB0 AFA40018 */  sw    $a0, 0x18($sp)
/* AB5E54 8003ECB4 AFA60020 */  sw    $a2, 0x20($sp)
/* AB5E58 8003ECB8 00C02025 */  move  $a0, $a2
/* AB5E5C 8003ECBC 0C00FA4D */  jal   func_8003E934
/* AB5E60 8003ECC0 AFA5001C */   sw    $a1, 0x1c($sp)
/* AB5E64 8003ECC4 1040000A */  beqz  $v0, .L8003ECF0
/* AB5E68 8003ECC8 8FA5001C */   lw    $a1, 0x1c($sp)
/* AB5E6C 8003ECCC 8FAE0020 */  lw    $t6, 0x20($sp)
/* AB5E70 8003ECD0 000E7840 */  sll   $t7, $t6, 1
/* AB5E74 8003ECD4 00AF1021 */  addu  $v0, $a1, $t7
/* AB5E78 8003ECD8 9458138C */  lhu   $t8, 0x138c($v0)
/* AB5E7C 8003ECDC 37190008 */  ori   $t9, $t8, 8
/* AB5E80 8003ECE0 A459138C */  sh    $t9, 0x138c($v0)
/* AB5E84 8003ECE4 90A80000 */  lbu   $t0, ($a1)
/* AB5E88 8003ECE8 35090001 */  ori   $t1, $t0, 1
/* AB5E8C 8003ECEC A0A90000 */  sb    $t1, ($a1)
.L8003ECF0:
/* AB5E90 8003ECF0 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5E94 8003ECF4 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5E98 8003ECF8 03E00008 */  jr    $ra
/* AB5E9C 8003ECFC 00000000 */   nop   

/* AB5EA0 8003ED00 27BDFFE8 */  addiu $sp, $sp, -0x18
/* AB5EA4 8003ED04 AFBF0014 */  sw    $ra, 0x14($sp)
/* AB5EA8 8003ED08 AFA40018 */  sw    $a0, 0x18($sp)
/* AB5EAC 8003ED0C AFA60020 */  sw    $a2, 0x20($sp)
/* AB5EB0 8003ED10 00C02025 */  move  $a0, $a2
/* AB5EB4 8003ED14 0C00FA4D */  jal   func_8003E934
/* AB5EB8 8003ED18 AFA5001C */   sw    $a1, 0x1c($sp)
/* AB5EBC 8003ED1C 1040000A */  beqz  $v0, .L8003ED48
/* AB5EC0 8003ED20 8FA5001C */   lw    $a1, 0x1c($sp)
/* AB5EC4 8003ED24 8FAE0020 */  lw    $t6, 0x20($sp)
/* AB5EC8 8003ED28 000E7840 */  sll   $t7, $t6, 1
/* AB5ECC 8003ED2C 00AF1021 */  addu  $v0, $a1, $t7
/* AB5ED0 8003ED30 9458138C */  lhu   $t8, 0x138c($v0)
/* AB5ED4 8003ED34 3319FFF7 */  andi  $t9, $t8, 0xfff7
/* AB5ED8 8003ED38 A459138C */  sh    $t9, 0x138c($v0)
/* AB5EDC 8003ED3C 90A80000 */  lbu   $t0, ($a1)
/* AB5EE0 8003ED40 35090001 */  ori   $t1, $t0, 1
/* AB5EE4 8003ED44 A0A90000 */  sb    $t1, ($a1)
.L8003ED48:
/* AB5EE8 8003ED48 8FBF0014 */  lw    $ra, 0x14($sp)
/* AB5EEC 8003ED4C 27BD0018 */  addiu $sp, $sp, 0x18
/* AB5EF0 8003ED50 03E00008 */  jr    $ra
/* AB5EF4 8003ED54 00000000 */   nop   


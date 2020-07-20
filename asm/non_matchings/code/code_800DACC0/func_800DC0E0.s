glabel func_800DC0E0
/* B53280 800DC0E0 00077103 */  sra   $t6, $a3, 4
/* B53284 800DC0E4 31CF00FF */  andi  $t7, $t6, 0xff
/* B53288 800DC0E8 000FC400 */  sll   $t8, $t7, 0x10
/* B5328C 800DC0EC 3C011500 */  lui   $at, 0x1500
/* B53290 800DC0F0 0301C825 */  or    $t9, $t8, $at
/* B53294 800DC0F4 30A8FFFF */  andi  $t0, $a1, 0xffff
/* B53298 800DC0F8 AFA50004 */  sw    $a1, 4($sp)
/* B5329C 800DC0FC AFA60008 */  sw    $a2, 8($sp)
/* B532A0 800DC100 03284825 */  or    $t1, $t9, $t0
/* B532A4 800DC104 AC890000 */  sw    $t1, ($a0)
/* B532A8 800DC108 8FAB0010 */  lw    $t3, 0x10($sp)
/* B532AC 800DC10C 30C6FFFF */  andi  $a2, $a2, 0xffff
/* B532B0 800DC110 00065040 */  sll   $t2, $a2, 1
/* B532B4 800DC114 014B6021 */  addu  $t4, $t2, $t3
/* B532B8 800DC118 AC8C0004 */  sw    $t4, 4($a0)
/* B532BC 800DC11C 03E00008 */  jr    $ra
/* B532C0 800DC120 24820008 */   addiu $v0, $a0, 8


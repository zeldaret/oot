glabel func_800DB3D8
/* B52578 800DB3D8 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B5257C 800DB3DC AFBF001C */  sw    $ra, 0x1c($sp)
/* B52580 800DB3E0 AFA5002C */  sw    $a1, 0x2c($sp)
/* B52584 800DB3E4 AFA60030 */  sw    $a2, 0x30($sp)
/* B52588 800DB3E8 90AF0003 */  lbu   $t7, 3($a1)
/* B5258C 800DB3EC 87A80032 */  lh    $t0, 0x32($sp)
/* B52590 800DB3F0 00A07025 */  move  $t6, $a1
/* B52594 800DB3F4 000FC0C0 */  sll   $t8, $t7, 3
/* B52598 800DB3F8 030FC021 */  addu  $t8, $t8, $t7
/* B5259C 800DB3FC 0018C080 */  sll   $t8, $t8, 2
/* B525A0 800DB400 030FC023 */  subu  $t8, $t8, $t7
/* B525A4 800DB404 000848C0 */  sll   $t1, $t0, 3
/* B525A8 800DB408 0018C080 */  sll   $t8, $t8, 2
/* B525AC 800DB40C 01284823 */  subu  $t1, $t1, $t0
/* B525B0 800DB410 00094880 */  sll   $t1, $t1, 2
/* B525B4 800DB414 00B8C821 */  addu  $t9, $a1, $t8
/* B525B8 800DB418 03291821 */  addu  $v1, $t9, $t1
/* B525BC 800DB41C 24630040 */  addiu $v1, $v1, 0x40
/* B525C0 800DB420 84670010 */  lh    $a3, 0x10($v1)
/* B525C4 800DB424 9466000E */  lhu   $a2, 0xe($v1)
/* B525C8 800DB428 AFA30024 */  sw    $v1, 0x24($sp)
/* B525CC 800DB42C AFAE0010 */  sw    $t6, 0x10($sp)
/* B525D0 800DB430 0C03701D */  jal   func_800DC074
/* B525D4 800DB434 240503E0 */   li    $a1, 992
/* B525D8 800DB438 8FA30024 */  lw    $v1, 0x24($sp)
/* B525DC 800DB43C 00402025 */  move  $a0, $v0
/* B525E0 800DB440 8FAA002C */  lw    $t2, 0x2c($sp)
/* B525E4 800DB444 84670012 */  lh    $a3, 0x12($v1)
/* B525E8 800DB448 50E00009 */  beql  $a3, $zero, .L800DB470
/* B525EC 800DB44C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B525F0 800DB450 84650010 */  lh    $a1, 0x10($v1)
/* B525F4 800DB454 AFAA0010 */  sw    $t2, 0x10($sp)
/* B525F8 800DB458 00003025 */  move  $a2, $zero
/* B525FC 800DB45C 24A503E0 */  addiu $a1, $a1, 0x3e0
/* B52600 800DB460 0C03701D */  jal   func_800DC074
/* B52604 800DB464 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52608 800DB468 00402025 */  move  $a0, $v0
/* B5260C 800DB46C 8FBF001C */  lw    $ra, 0x1c($sp)
.L800DB470:
/* B52610 800DB470 27BD0028 */  addiu $sp, $sp, 0x28
/* B52614 800DB474 00801025 */  move  $v0, $a0
/* B52618 800DB478 03E00008 */  jr    $ra
/* B5261C 800DB47C 00000000 */   nop


glabel func_800DB4E4
/* B52684 800DB4E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B52688 800DB4E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* B5268C 800DB4EC AFB00020 */  sw    $s0, 0x20($sp)
/* B52690 800DB4F0 AFA50034 */  sw    $a1, 0x34($sp)
/* B52694 800DB4F4 AFA7003C */  sw    $a3, 0x3c($sp)
/* B52698 800DB4F8 90CE0003 */  lbu   $t6, 3($a2)
/* B5269C 800DB4FC 87B9003E */  lh    $t9, 0x3e($sp)
/* B526A0 800DB500 2401FFF0 */  li    $at, -16
/* B526A4 800DB504 000E78C0 */  sll   $t7, $t6, 3
/* B526A8 800DB508 01EE7821 */  addu  $t7, $t7, $t6
/* B526AC 800DB50C 000F7880 */  sll   $t7, $t7, 2
/* B526B0 800DB510 01EE7823 */  subu  $t7, $t7, $t6
/* B526B4 800DB514 001960C0 */  sll   $t4, $t9, 3
/* B526B8 800DB518 000F7880 */  sll   $t7, $t7, 2
/* B526BC 800DB51C 01996023 */  subu  $t4, $t4, $t9
/* B526C0 800DB520 000C6080 */  sll   $t4, $t4, 2
/* B526C4 800DB524 00CFC021 */  addu  $t8, $a2, $t7
/* B526C8 800DB528 030C1821 */  addu  $v1, $t8, $t4
/* B526CC 800DB52C 8C62004C */  lw    $v0, 0x4c($v1)
/* B526D0 800DB530 846D0050 */  lh    $t5, 0x50($v1)
/* B526D4 800DB534 00C08025 */  move  $s0, $a2
/* B526D8 800DB538 30480007 */  andi  $t0, $v0, 7
/* B526DC 800DB53C 00084040 */  sll   $t0, $t0, 1
/* B526E0 800DB540 00084400 */  sll   $t0, $t0, 0x10
/* B526E4 800DB544 00084403 */  sra   $t0, $t0, 0x10
/* B526E8 800DB548 010D4821 */  addu  $t1, $t0, $t5
/* B526EC 800DB54C 2529000F */  addiu $t1, $t1, 0xf
/* B526F0 800DB550 3129FFF0 */  andi  $t1, $t1, 0xfff0
/* B526F4 800DB554 00094C00 */  sll   $t1, $t1, 0x10
/* B526F8 800DB558 24630040 */  addiu $v1, $v1, 0x40
/* B526FC 800DB55C 00094C03 */  sra   $t1, $t1, 0x10
/* B52700 800DB560 A7A90028 */  sh    $t1, 0x28($sp)
/* B52704 800DB564 AFA3002C */  sw    $v1, 0x2c($sp)
/* B52708 800DB568 A7A8002A */  sh    $t0, 0x2a($sp)
/* B5270C 800DB56C AFB00010 */  sw    $s0, 0x10($sp)
/* B52710 800DB570 240701A0 */  li    $a3, 416
/* B52714 800DB574 240503E0 */  li    $a1, 992
/* B52718 800DB578 05010003 */  bgez  $t0, .L800DB588
/* B5271C 800DB57C 00087043 */   sra   $t6, $t0, 1
/* B52720 800DB580 25010001 */  addiu $at, $t0, 1
/* B52724 800DB584 00017043 */  sra   $t6, $at, 1
.L800DB588:
/* B52728 800DB588 004E3023 */  subu  $a2, $v0, $t6
/* B5272C 800DB58C 0C037002 */  jal   func_800DC008
/* B52730 800DB590 30C6FFFF */   andi  $a2, $a2, 0xffff
/* B52734 800DB594 8FA3002C */  lw    $v1, 0x2c($sp)
/* B52738 800DB598 87A90028 */  lh    $t1, 0x28($sp)
/* B5273C 800DB59C 87A8002A */  lh    $t0, 0x2a($sp)
/* B52740 800DB5A0 846F0012 */  lh    $t7, 0x12($v1)
/* B52744 800DB5A4 252503E0 */  addiu $a1, $t1, 0x3e0
/* B52748 800DB5A8 00402025 */  move  $a0, $v0
/* B5274C 800DB5AC 11E00008 */  beqz  $t7, .L800DB5D0
/* B52750 800DB5B0 30A5FFFF */   andi  $a1, $a1, 0xffff
/* B52754 800DB5B4 241901A0 */  li    $t9, 416
/* B52758 800DB5B8 03293823 */  subu  $a3, $t9, $t1
/* B5275C 800DB5BC 00003025 */  move  $a2, $zero
/* B52760 800DB5C0 AFB00010 */  sw    $s0, 0x10($sp)
/* B52764 800DB5C4 0C037002 */  jal   func_800DC008
/* B52768 800DB5C8 A7A8002A */   sh    $t0, 0x2a($sp)
/* B5276C 800DB5CC 87A8002A */  lh    $t0, 0x2a($sp)
.L800DB5D0:
/* B52770 800DB5D0 251803E0 */  addiu $t8, $t0, 0x3e0
/* B52774 800DB5D4 3C0A0800 */  lui   $t2, 0x800
/* B52778 800DB5D8 330CFFFF */  andi  $t4, $t8, 0xffff
/* B5277C 800DB5DC 018A6825 */  or    $t5, $t4, $t2
/* B52780 800DB5E0 AC4D0000 */  sw    $t5, ($v0)
/* B52784 800DB5E4 8FA50034 */  lw    $a1, 0x34($sp)
/* B52788 800DB5E8 3C010C80 */  lui   $at, 0xc80
/* B5278C 800DB5EC 3C0B0500 */  lui   $t3, 0x500
/* B52790 800DB5F0 00052840 */  sll   $a1, $a1, 1
/* B52794 800DB5F4 30A5FFFF */  andi  $a1, $a1, 0xffff
/* B52798 800DB5F8 00A17025 */  or    $t6, $a1, $at
/* B5279C 800DB5FC AC4E0004 */  sw    $t6, 4($v0)
/* B527A0 800DB600 92190000 */  lbu   $t9, ($s0)
/* B527A4 800DB604 960E000E */  lhu   $t6, 0xe($s0)
/* B527A8 800DB608 24460008 */  addiu $a2, $v0, 8
/* B527AC 800DB60C 0019C400 */  sll   $t8, $t9, 0x10
/* B527B0 800DB610 030B6025 */  or    $t4, $t8, $t3
/* B527B4 800DB614 018E7825 */  or    $t7, $t4, $t6
/* B527B8 800DB618 ACCF0000 */  sw    $t7, ($a2)
/* B527BC 800DB61C 8E190030 */  lw    $t9, 0x30($s0)
/* B527C0 800DB620 25180580 */  addiu $t8, $t0, 0x580
/* B527C4 800DB624 24C70008 */  addiu $a3, $a2, 8
/* B527C8 800DB628 330DFFFF */  andi  $t5, $t8, 0xffff
/* B527CC 800DB62C 3C010E20 */  lui   $at, 0xe20
/* B527D0 800DB630 ACD90004 */  sw    $t9, 4($a2)
/* B527D4 800DB634 00A17025 */  or    $t6, $a1, $at
/* B527D8 800DB638 01AA6025 */  or    $t4, $t5, $t2
/* B527DC 800DB63C ACEC0000 */  sw    $t4, ($a3)
/* B527E0 800DB640 ACEE0004 */  sw    $t6, 4($a3)
/* B527E4 800DB644 92190000 */  lbu   $t9, ($s0)
/* B527E8 800DB648 960E000E */  lhu   $t6, 0xe($s0)
/* B527EC 800DB64C 24E90008 */  addiu $t1, $a3, 8
/* B527F0 800DB650 0019C400 */  sll   $t8, $t9, 0x10
/* B527F4 800DB654 030B6825 */  or    $t5, $t8, $t3
/* B527F8 800DB658 01AE7825 */  or    $t7, $t5, $t6
/* B527FC 800DB65C AD2F0000 */  sw    $t7, ($t1)
/* B52800 800DB660 8E190034 */  lw    $t9, 0x34($s0)
/* B52804 800DB664 25220008 */  addiu $v0, $t1, 8
/* B52808 800DB668 AD390004 */  sw    $t9, 4($t1)
/* B5280C 800DB66C 8FBF0024 */  lw    $ra, 0x24($sp)
/* B52810 800DB670 8FB00020 */  lw    $s0, 0x20($sp)
/* B52814 800DB674 27BD0030 */  addiu $sp, $sp, 0x30
/* B52818 800DB678 03E00008 */  jr    $ra
/* B5281C 800DB67C 00000000 */   nop


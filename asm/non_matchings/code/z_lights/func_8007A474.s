glabel func_8007A474
/* AF1614 8007A474 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AF1618 8007A478 3C0E8012 */  lui   $t6, %hi(D_80120030) # $t6, 0x8012
/* AF161C 8007A47C AFBF0024 */  sw    $ra, 0x24($sp)
/* AF1620 8007A480 AFB30020 */  sw    $s3, 0x20($sp)
/* AF1624 8007A484 AFB2001C */  sw    $s2, 0x1c($sp)
/* AF1628 8007A488 AFB10018 */  sw    $s1, 0x18($sp)
/* AF162C 8007A48C AFB00014 */  sw    $s0, 0x14($sp)
/* AF1630 8007A490 25CE0030 */  addiu $t6, %lo(D_80120030) # addiu $t6, $t6, 0x30
/* AF1634 8007A494 8DD80000 */  lw    $t8, ($t6)
/* AF1638 8007A498 27B3002C */  addiu $s3, $sp, 0x2c
/* AF163C 8007A49C 00A08025 */  move  $s0, $a1
/* AF1640 8007A4A0 AE780000 */  sw    $t8, ($s3)
/* AF1644 8007A4A4 8DCF0004 */  lw    $t7, 4($t6)
/* AF1648 8007A4A8 00808825 */  move  $s1, $a0
/* AF164C 8007A4AC 00C09025 */  move  $s2, $a2
/* AF1650 8007A4B0 AE6F0004 */  sw    $t7, 4($s3)
/* AF1654 8007A4B4 8DD80008 */  lw    $t8, 8($t6)
/* AF1658 8007A4B8 10A0000E */  beqz  $a1, .L8007A4F4
/* AF165C 8007A4BC AE780008 */   sw    $t8, 8($s3)
/* AF1660 8007A4C0 8E020000 */  lw    $v0, ($s0)
.L8007A4C4:
/* AF1664 8007A4C4 02202025 */  move  $a0, $s1
/* AF1668 8007A4C8 02403025 */  move  $a2, $s2
/* AF166C 8007A4CC 90590000 */  lbu   $t9, ($v0)
/* AF1670 8007A4D0 24450002 */  addiu $a1, $v0, 2
/* AF1674 8007A4D4 00194080 */  sll   $t0, $t9, 2
/* AF1678 8007A4D8 02684821 */  addu  $t1, $s3, $t0
/* AF167C 8007A4DC 8D390000 */  lw    $t9, ($t1)
/* AF1680 8007A4E0 0320F809 */  jalr  $t9
/* AF1684 8007A4E4 00000000 */  nop   
/* AF1688 8007A4E8 8E100008 */  lw    $s0, 8($s0)
/* AF168C 8007A4EC 5600FFF5 */  bnezl $s0, .L8007A4C4
/* AF1690 8007A4F0 8E020000 */   lw    $v0, ($s0)
.L8007A4F4:
/* AF1694 8007A4F4 8FBF0024 */  lw    $ra, 0x24($sp)
/* AF1698 8007A4F8 8FB00014 */  lw    $s0, 0x14($sp)
/* AF169C 8007A4FC 8FB10018 */  lw    $s1, 0x18($sp)
/* AF16A0 8007A500 8FB2001C */  lw    $s2, 0x1c($sp)
/* AF16A4 8007A504 8FB30020 */  lw    $s3, 0x20($sp)
/* AF16A8 8007A508 03E00008 */  jr    $ra
/* AF16AC 8007A50C 27BD0038 */   addiu $sp, $sp, 0x38


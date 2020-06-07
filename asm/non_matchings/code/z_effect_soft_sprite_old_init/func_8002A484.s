glabel func_8002A484
/* AA1624 8002A484 27BDFFE0 */  addiu $sp, $sp, -0x20
/* AA1628 8002A488 AFA60028 */  sw    $a2, 0x28($sp)
/* AA162C 8002A48C 87AE002A */  lh    $t6, 0x2a($sp)
/* AA1630 8002A490 44856000 */  mtc1  $a1, $f12
/* AA1634 8002A494 AFBF001C */  sw    $ra, 0x1c($sp)
/* AA1638 8002A498 8C851C44 */  lw    $a1, 0x1c44($a0)
/* AA163C 8002A49C 000E7880 */  sll   $t7, $t6, 2
/* AA1640 8002A4A0 44877000 */  mtc1  $a3, $f14
/* AA1644 8002A4A4 01EE7823 */  subu  $t7, $t7, $t6
/* AA1648 8002A4A8 000F7880 */  sll   $t7, $t7, 2
/* AA164C 8002A4AC 44076000 */  mfc1  $a3, $f12
/* AA1650 8002A4B0 00AF3021 */  addu  $a2, $a1, $t7
/* AA1654 8002A4B4 24C60908 */  addiu $a2, $a2, 0x908
/* AA1658 8002A4B8 AFAE0010 */  sw    $t6, 0x10($sp)
/* AA165C 8002A4BC 0C00A8F1 */  jal   func_8002A3C4
/* AA1660 8002A4C0 E7AE0014 */   swc1  $f14, 0x14($sp)
/* AA1664 8002A4C4 8FBF001C */  lw    $ra, 0x1c($sp)
/* AA1668 8002A4C8 27BD0020 */  addiu $sp, $sp, 0x20
/* AA166C 8002A4CC 03E00008 */  jr    $ra
/* AA1670 8002A4D0 00000000 */   nop   


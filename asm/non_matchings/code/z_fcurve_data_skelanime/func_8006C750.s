glabel func_8006C750
/* AE38F0 8006C750 44800000 */  mtc1  $zero, $f0
/* AE38F4 8006C754 A0800000 */  sb    $zero, ($a0)
/* AE38F8 8006C758 AC800004 */  sw    $zero, 4($a0)
/* AE38FC 8006C75C AC800008 */  sw    $zero, 8($a0)
/* AE3900 8006C760 AC80001C */  sw    $zero, 0x1c($a0)
/* AE3904 8006C764 E4800018 */  swc1  $f0, 0x18($a0)
/* AE3908 8006C768 E4800014 */  swc1  $f0, 0x14($a0)
/* AE390C 8006C76C E4800010 */  swc1  $f0, 0x10($a0)
/* AE3910 8006C770 03E00008 */  jr    $ra
/* AE3914 8006C774 E480000C */   swc1  $f0, 0xc($a0)


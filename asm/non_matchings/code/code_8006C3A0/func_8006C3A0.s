glabel func_8006C3A0
/* AE3540 8006C3A0 00001025 */  move  $v0, $zero
/* AE3544 8006C3A4 3C030001 */  lui   $v1, 1
.L8006C3A8:
/* AE3548 8006C3A8 00027040 */  sll   $t6, $v0, 1
/* AE354C 8006C3AC 24420001 */  addiu $v0, $v0, 1
/* AE3550 8006C3B0 304200FF */  andi  $v0, $v0, 0xff
/* AE3554 8006C3B4 008E7821 */  addu  $t7, $a0, $t6
/* AE3558 8006C3B8 28410014 */  slti  $at, $v0, 0x14
/* AE355C 8006C3BC 01E3C021 */  addu  $t8, $t7, $v1
/* AE3560 8006C3C0 1420FFF9 */  bnez  $at, .L8006C3A8
/* AE3564 8006C3C4 A70020FC */   sh    $zero, 0x20fc($t8)
/* AE3568 8006C3C8 03E00008 */  jr    $ra
/* AE356C 8006C3CC 00000000 */   nop   


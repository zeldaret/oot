glabel func_800E9D5C
/* B60EFC 800E9D5C 8C850000 */  lw    $a1, ($a0)
/* B60F00 800E9D60 90A30000 */  lbu   $v1, ($a1)
/* B60F04 800E9D64 24AE0001 */  addiu $t6, $a1, 1
/* B60F08 800E9D68 AC8E0000 */  sw    $t6, ($a0)
/* B60F0C 800E9D6C 91CF0000 */  lbu   $t7, ($t6)
/* B60F10 800E9D70 00031A00 */  sll   $v1, $v1, 8
/* B60F14 800E9D74 00031C00 */  sll   $v1, $v1, 0x10
/* B60F18 800E9D78 00031C03 */  sra   $v1, $v1, 0x10
/* B60F1C 800E9D7C 01E31825 */  or    $v1, $t7, $v1
/* B60F20 800E9D80 00031C00 */  sll   $v1, $v1, 0x10
/* B60F24 800E9D84 25D80001 */  addiu $t8, $t6, 1
/* B60F28 800E9D88 AC980000 */  sw    $t8, ($a0)
/* B60F2C 800E9D8C 03E00008 */  jr    $ra
/* B60F30 800E9D90 00031403 */   sra   $v0, $v1, 0x10


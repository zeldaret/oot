glabel func_800E8C30
/* B5FDD0 800E8C30 C4840010 */  lwc1  $f4, 0x10($a0)
/* B5FDD4 800E8C34 8C8E0004 */  lw    $t6, 4($a0)
/* B5FDD8 800E8C38 8C880008 */  lw    $t0, 8($a0)
/* B5FDDC 800E8C3C 4600218D */  trunc.w.s $f6, $f4
/* B5FDE0 800E8C40 44183000 */  mfc1  $t8, $f6
/* B5FDE4 800E8C44 00000000 */  nop
/* B5FDE8 800E8C48 01D8C821 */  addu  $t9, $t6, $t8
/* B5FDEC 800E8C4C 00191A82 */  srl   $v1, $t9, 0xa
/* B5FDF0 800E8C50 3063003F */  andi  $v1, $v1, 0x3f
/* B5FDF4 800E8C54 00034840 */  sll   $t1, $v1, 1
/* B5FDF8 800E8C58 AC990004 */  sw    $t9, 4($a0)
/* B5FDFC 800E8C5C 01095021 */  addu  $t2, $t0, $t1
/* B5FE00 800E8C60 03E00008 */  jr    $ra
/* B5FE04 800E8C64 85420000 */   lh    $v0, ($t2)


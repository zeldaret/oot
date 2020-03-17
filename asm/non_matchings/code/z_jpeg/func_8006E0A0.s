glabel func_8006E0A0
/* AE5240 8006E0A0 308E0001 */  andi  $t6, $a0, 1
/* AE5244 8006E0A4 55C00004 */  bnezl $t6, .L8006E0B8
/* AE5248 8006E0A8 90810001 */   lbu   $at, 1($a0)
/* AE524C 8006E0AC 03E00008 */  jr    $ra
/* AE5250 8006E0B0 94820000 */   lhu   $v0, ($a0)

/* AE5254 8006E0B4 90810001 */  lbu   $at, 1($a0)
.L8006E0B8:
/* AE5258 8006E0B8 908F0002 */  lbu   $t7, 2($a0)
/* AE525C 8006E0BC 90990000 */  lbu   $t9, ($a0)
/* AE5260 8006E0C0 00010A00 */  sll   $at, $at, 8
/* AE5264 8006E0C4 01E17825 */  or    $t7, $t7, $at
/* AE5268 8006E0C8 9081FFFF */  lbu   $at, -1($a0)
/* AE526C 8006E0CC 000FC203 */  sra   $t8, $t7, 8
/* AE5270 8006E0D0 00010A00 */  sll   $at, $at, 8
/* AE5274 8006E0D4 0321C825 */  or    $t9, $t9, $at
/* AE5278 8006E0D8 00194200 */  sll   $t0, $t9, 8
/* AE527C 8006E0DC 03081025 */  or    $v0, $t8, $t0
/* AE5280 8006E0E0 3042FFFF */  andi  $v0, $v0, 0xffff
/* AE5284 8006E0E4 03E00008 */  jr    $ra
/* AE5288 8006E0E8 00000000 */   nop   


.late_rodata
glabel D_8013ACF0
    .float 0.01

.text
glabel func_8005BA84
/* AD2C24 8005BA84 AFA40000 */  sw    $a0, ($sp)
/* AD2C28 8005BA88 90CE0000 */  lbu   $t6, ($a2)
/* AD2C2C 8005BA8C 3C018014 */  lui   $at, %hi(D_8013ACF0)
/* AD2C30 8005BA90 24020001 */  li    $v0, 1
/* AD2C34 8005BA94 A0AE0014 */  sb    $t6, 0x14($a1)
/* AD2C38 8005BA98 88D80002 */  lwl   $t8, 2($a2)
/* AD2C3C 8005BA9C 98D80005 */  lwr   $t8, 5($a2)
/* AD2C40 8005BAA0 A8B80000 */  swl   $t8, ($a1)
/* AD2C44 8005BAA4 B8B80003 */  swr   $t8, 3($a1)
/* AD2C48 8005BAA8 88CF0006 */  lwl   $t7, 6($a2)
/* AD2C4C 8005BAAC 98CF0009 */  lwr   $t7, 9($a2)
/* AD2C50 8005BAB0 A8AF0004 */  swl   $t7, 4($a1)
/* AD2C54 8005BAB4 B8AF0007 */  swr   $t7, 7($a1)
/* AD2C58 8005BAB8 84D9000A */  lh    $t9, 0xa($a2)
/* AD2C5C 8005BABC C428ACF0 */  lwc1  $f8, %lo(D_8013ACF0)($at)
/* AD2C60 8005BAC0 44992000 */  mtc1  $t9, $f4
/* AD2C64 8005BAC4 00000000 */  nop   
/* AD2C68 8005BAC8 468021A0 */  cvt.s.w $f6, $f4
/* AD2C6C 8005BACC 46083282 */  mul.s $f10, $f6, $f8
/* AD2C70 8005BAD0 03E00008 */  jr    $ra
/* AD2C74 8005BAD4 E4AA0010 */   swc1  $f10, 0x10($a1)


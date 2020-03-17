glabel func_800A2DBC
/* B19F5C 800A2DBC 00047100 */  sll   $t6, $a0, 4
/* B19F60 800A2DC0 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F64 800A2DC4 000FC080 */  sll   $t8, $t7, 2
/* B19F68 800A2DC8 3C198016 */  lui   $t9, %hi(gSegments)
/* B19F6C 800A2DCC 0338C821 */  addu  $t9, $t9, $t8
/* B19F70 800A2DD0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19F74 800A2DD4 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B19F78 800A2DD8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19F7C 800A2DDC 00814024 */  and   $t0, $a0, $at
/* B19F80 800A2DE0 3C018000 */  lui   $at, 0x8000
/* B19F84 800A2DE4 03281821 */  addu  $v1, $t9, $t0
/* B19F88 800A2DE8 00611821 */  addu  $v1, $v1, $at
/* B19F8C 800A2DEC 03E00008 */  jr    $ra
/* B19F90 800A2DF0 84620002 */   lh    $v0, 2($v1)


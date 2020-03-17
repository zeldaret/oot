glabel func_800A2DF4
/* B19F94 800A2DF4 00047100 */  sll   $t6, $a0, 4
/* B19F98 800A2DF8 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19F9C 800A2DFC 000FC080 */  sll   $t8, $t7, 2
/* B19FA0 800A2E00 3C198016 */  lui   $t9, %hi(gSegments)
/* B19FA4 800A2E04 0338C821 */  addu  $t9, $t9, $t8
/* B19FA8 800A2E08 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FAC 800A2E0C 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B19FB0 800A2E10 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FB4 800A2E14 00814024 */  and   $t0, $a0, $at
/* B19FB8 800A2E18 3C018000 */  lui   $at, 0x8000
/* B19FBC 800A2E1C 03281821 */  addu  $v1, $t9, $t0
/* B19FC0 800A2E20 00611821 */  addu  $v1, $v1, $at
/* B19FC4 800A2E24 03E00008 */  jr    $ra
/* B19FC8 800A2E28 84620000 */   lh    $v0, ($v1)


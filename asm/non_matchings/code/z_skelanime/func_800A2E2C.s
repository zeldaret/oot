glabel func_800A2E2C
/* B19FCC 800A2E2C 00047100 */  sll   $t6, $a0, 4
/* B19FD0 800A2E30 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19FD4 800A2E34 000FC080 */  sll   $t8, $t7, 2
/* B19FD8 800A2E38 3C198016 */  lui   $t9, %hi(gSegments)
/* B19FDC 800A2E3C 0338C821 */  addu  $t9, $t9, $t8
/* B19FE0 800A2E40 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19FE4 800A2E44 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B19FE8 800A2E48 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19FEC 800A2E4C 00814024 */  and   $t0, $a0, $at
/* B19FF0 800A2E50 3C018000 */  lui   $at, 0x8000
/* B19FF4 800A2E54 03281821 */  addu  $v1, $t9, $t0
/* B19FF8 800A2E58 00611821 */  addu  $v1, $v1, $at
/* B19FFC 800A2E5C 84620000 */  lh    $v0, ($v1)
/* B1A000 800A2E60 2442FFFF */  addiu $v0, $v0, -1
/* B1A004 800A2E64 00021400 */  sll   $v0, $v0, 0x10
/* B1A008 800A2E68 03E00008 */  jr    $ra
/* B1A00C 800A2E6C 00021403 */   sra   $v0, $v0, 0x10


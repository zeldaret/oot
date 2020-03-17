glabel func_800A1FC8
/* B19168 800A1FC8 00047100 */  sll   $t6, $a0, 4
/* B1916C 800A1FCC 000E7F02 */  srl   $t7, $t6, 0x1c
/* B19170 800A1FD0 000FC080 */  sll   $t8, $t7, 2
/* B19174 800A1FD4 3C198016 */  lui   $t9, %hi(gSegments)
/* B19178 800A1FD8 0338C821 */  addu  $t9, $t9, $t8
/* B1917C 800A1FDC 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B19180 800A1FE0 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B19184 800A1FE4 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B19188 800A1FE8 00814024 */  and   $t0, $a0, $at
/* B1918C 800A1FEC 3C018000 */  lui   $at, 0x8000
/* B19190 800A1FF0 03281821 */  addu  $v1, $t9, $t0
/* B19194 800A1FF4 00611821 */  addu  $v1, $v1, $at
/* B19198 800A1FF8 03E00008 */  jr    $ra
/* B1919C 800A1FFC 84620000 */   lh    $v0, ($v1)


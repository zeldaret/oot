glabel SkelAnime_GetFrameCount
/* B191A0 800A2000 00047100 */  sll   $t6, $a0, 4
/* B191A4 800A2004 000E7F02 */  srl   $t7, $t6, 0x1c
/* B191A8 800A2008 000FC080 */  sll   $t8, $t7, 2
/* B191AC 800A200C 3C198016 */  lui   $t9, %hi(gSegments)
/* B191B0 800A2010 0338C821 */  addu  $t9, $t9, $t8
/* B191B4 800A2014 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B191B8 800A2018 8F396FA8 */  lw    $t9, %lo(gSegments)($t9)
/* B191BC 800A201C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B191C0 800A2020 00814024 */  and   $t0, $a0, $at
/* B191C4 800A2024 3C018000 */  lui   $at, 0x8000
/* B191C8 800A2028 03281821 */  addu  $v1, $t9, $t0
/* B191CC 800A202C 00611821 */  addu  $v1, $v1, $at
/* B191D0 800A2030 94620000 */  lhu   $v0, ($v1)
/* B191D4 800A2034 2442FFFF */  addiu $v0, $v0, -1
/* B191D8 800A2038 00021400 */  sll   $v0, $v0, 0x10
/* B191DC 800A203C 03E00008 */  jr    $ra
/* B191E0 800A2040 00021403 */   sra   $v0, $v0, 0x10


glabel func_800A9A9C
/* B20C3C 800A9A9C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B20C40 800A9AA0 AFA40018 */  sw    $a0, 0x18($sp)
/* B20C44 800A9AA4 8FAE0018 */  lw    $t6, 0x18($sp)
/* B20C48 800A9AA8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B20C4C 800A9AAC 3C040800 */  lui   $a0, 0x800
/* B20C50 800A9AB0 24060010 */  li    $a2, 16
/* B20C54 800A9AB4 24070001 */  li    $a3, 1
/* B20C58 800A9AB8 0C02A7A8 */  jal   Sram_ReadWrite
/* B20C5C 800A9ABC 8DC50000 */   lw    $a1, ($t6)
/* B20C60 800A9AC0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B20C64 800A9AC4 27BD0018 */  addiu $sp, $sp, 0x18
/* B20C68 800A9AC8 03E00008 */  jr    $ra
/* B20C6C 800A9ACC 00000000 */   nop   


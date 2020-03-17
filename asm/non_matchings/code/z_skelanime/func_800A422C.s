glabel func_800A422C
/* B1B3CC 800A422C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3D0 800A4230 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3D4 800A4234 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3D8 800A4238 00A07025 */  move  $t6, $a1
/* B1B3DC 800A423C 8DC60020 */  lw    $a2, 0x20($t6)
/* B1B3E0 800A4240 8DC70024 */  lw    $a3, 0x24($t6)
/* B1B3E4 800A4244 0C028D1E */  jal   func_800A3478
/* B1B3E8 800A4248 90A50000 */   lbu   $a1, ($a1)
/* B1B3EC 800A424C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3F0 800A4250 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3F4 800A4254 03E00008 */  jr    $ra
/* B1B3F8 800A4258 00000000 */   nop   


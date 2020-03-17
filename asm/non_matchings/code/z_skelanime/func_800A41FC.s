glabel func_800A41FC
/* B1B39C 800A41FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1B3A0 800A4200 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1B3A4 800A4204 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1B3A8 800A4208 00A07025 */  move  $t6, $a1
/* B1B3AC 800A420C 8DC60024 */  lw    $a2, 0x24($t6)
/* B1B3B0 800A4210 8DC70020 */  lw    $a3, 0x20($t6)
/* B1B3B4 800A4214 0C028D1E */  jal   func_800A3478
/* B1B3B8 800A4218 90A50000 */   lbu   $a1, ($a1)
/* B1B3BC 800A421C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1B3C0 800A4220 27BD0018 */  addiu $sp, $sp, 0x18
/* B1B3C4 800A4224 03E00008 */  jr    $ra
/* B1B3C8 800A4228 00000000 */   nop   


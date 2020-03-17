glabel func_800A3310
/* B1A4B0 800A3310 3C028013 */  lui   $v0, %hi(D_8012A480) # $v0, 0x8013
/* B1A4B4 800A3314 2442A480 */  addiu $v0, %lo(D_8012A480) # addiu $v0, $v0, -0x5b80
/* B1A4B8 800A3318 3C0F8016 */  lui   $t7, %hi(D_801600B0) # $t7, 0x8016
/* B1A4BC 800A331C 8DEF00B0 */  lw    $t7, %lo(D_801600B0)($t7)
/* B1A4C0 800A3320 8C4E0000 */  lw    $t6, ($v0)
/* B1A4C4 800A3324 AFA40000 */  sw    $a0, ($sp)
/* B1A4C8 800A3328 01CFC025 */  or    $t8, $t6, $t7
/* B1A4CC 800A332C 03E00008 */  jr    $ra
/* B1A4D0 800A3330 AC580000 */   sw    $t8, ($v0)


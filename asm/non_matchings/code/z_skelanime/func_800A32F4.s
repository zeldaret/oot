glabel func_800A32F4
/* B1A494 800A32F4 3C028016 */  lui   $v0, %hi(D_801600B0) # $v0, 0x8016
/* B1A498 800A32F8 244200B0 */  addiu $v0, %lo(D_801600B0) # addiu $v0, $v0, 0xb0
/* B1A49C 800A32FC 8C4E0000 */  lw    $t6, ($v0)
/* B1A4A0 800A3300 AFA40000 */  sw    $a0, ($sp)
/* B1A4A4 800A3304 000E7840 */  sll   $t7, $t6, 1
/* B1A4A8 800A3308 03E00008 */  jr    $ra
/* B1A4AC 800A330C AC4F0000 */   sw    $t7, ($v0)


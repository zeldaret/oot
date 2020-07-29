glabel func_800E3400
/* B5A5A0 800E3400 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5A5A4 800E3404 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5A5A8 800E3408 AC401D64 */  sw    $zero, 0x1d64($v0)
/* B5A5AC 800E340C 03E00008 */  jr    $ra
/* B5A5B0 800E3410 AC401DC8 */   sw    $zero, 0x1dc8($v0)


glabel func_80093794
/* B0A934 80093794 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B0A938 80093798 AFBF0014 */  sw    $ra, 0x14($sp)
/* B0A93C 8009379C AFA40018 */  sw    $a0, 0x18($sp)
/* B0A940 800937A0 0C024DDD */  jal   func_80093774
/* B0A944 800937A4 8C840000 */   lw    $a0, ($a0)
/* B0A948 800937A8 8FAF0018 */  lw    $t7, 0x18($sp)
/* B0A94C 800937AC ADE20000 */  sw    $v0, ($t7)
/* B0A950 800937B0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B0A954 800937B4 27BD0018 */  addiu $sp, $sp, 0x18
/* B0A958 800937B8 03E00008 */  jr    $ra
/* B0A95C 800937BC 00000000 */   nop   


glabel func_800DE258
/* B553F8 800DE258 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x29a0) # $t6, 0x8017
/* B553FC 800DE25C 8DCE1B20 */  lw    $t6, %lo(gAudioContext+0x29a0)($t6)
/* B55400 800DE260 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55404 800DE264 AFBF0014 */  sw    $ra, 0x14($sp)
/* B55408 800DE268 AFA40018 */  sw    $a0, 0x18($sp)
/* B5540C 800DE26C AFA5001C */  sw    $a1, 0x1c($sp)
/* B55410 800DE270 11C00005 */  beqz  $t6, .L800DE288
/* B55414 800DE274 00001825 */   move  $v1, $zero
/* B55418 800DE278 3C048017 */  lui   $a0, %hi(gAudioContext+0x29a0) # $a0, 0x8017
/* B5541C 800DE27C 0C0378E0 */  jal   Audio_AllocZeroed
/* B55420 800DE280 24841B20 */   addiu $a0, %lo(gAudioContext+0x29a0) # addiu $a0, $a0, 0x1b20
/* B55424 800DE284 00401825 */  move  $v1, $v0
.L800DE288:
/* B55428 800DE288 14600004 */  bnez  $v1, .L800DE29C
/* B5542C 800DE28C 8FA40018 */   lw    $a0, 0x18($sp)
/* B55430 800DE290 0C0378E0 */  jal   Audio_AllocZeroed
/* B55434 800DE294 8FA5001C */   lw    $a1, 0x1c($sp)
/* B55438 800DE298 00401825 */  move  $v1, $v0
.L800DE29C:
/* B5543C 800DE29C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55440 800DE2A0 27BD0018 */  addiu $sp, $sp, 0x18
/* B55444 800DE2A4 00601025 */  move  $v0, $v1
/* B55448 800DE2A8 03E00008 */  jr    $ra
/* B5544C 800DE2AC 00000000 */   nop   


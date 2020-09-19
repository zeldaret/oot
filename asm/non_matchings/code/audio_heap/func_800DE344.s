glabel func_800DE344
/* B554E4 800DE344 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B554E8 800DE348 AFBF0014 */  sw    $ra, 0x14($sp)
/* B554EC 800DE34C 0C0378E0 */  jal   Audio_AllocZeroed
/* B554F0 800DE350 AFA50024 */   sw    $a1, 0x24($sp)
/* B554F4 800DE354 10400005 */  beqz  $v0, .L800DE36C
/* B554F8 800DE358 00402025 */   move  $a0, $v0
/* B554FC 800DE35C 8FA50024 */  lw    $a1, 0x24($sp)
/* B55500 800DE360 0C03788E */  jal   func_800DE238
/* B55504 800DE364 AFA2001C */   sw    $v0, 0x1c($sp)
/* B55508 800DE368 8FA4001C */  lw    $a0, 0x1c($sp)
.L800DE36C:
/* B5550C 800DE36C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55510 800DE370 27BD0020 */  addiu $sp, $sp, 0x20
/* B55514 800DE374 00801025 */  move  $v0, $a0
/* B55518 800DE378 03E00008 */  jr    $ra
/* B5551C 800DE37C 00000000 */   nop   


glabel Audio_AllocDmaMemory
/* B554A8 800DE308 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B554AC 800DE30C AFBF0014 */  sw    $ra, 0x14($sp)
/* B554B0 800DE310 0C0378F7 */  jal   Audio_Alloc
/* B554B4 800DE314 AFA50024 */   sw    $a1, 0x24($sp)
/* B554B8 800DE318 10400005 */  beqz  $v0, .L800DE330
/* B554BC 800DE31C 00402025 */   move  $a0, $v0
/* B554C0 800DE320 8FA50024 */  lw    $a1, 0x24($sp)
/* B554C4 800DE324 0C03788E */  jal   func_800DE238
/* B554C8 800DE328 AFA2001C */   sw    $v0, 0x1c($sp)
/* B554CC 800DE32C 8FA4001C */  lw    $a0, 0x1c($sp)
.L800DE330:
/* B554D0 800DE330 8FBF0014 */  lw    $ra, 0x14($sp)
/* B554D4 800DE334 27BD0020 */  addiu $sp, $sp, 0x20
/* B554D8 800DE338 00801025 */  move  $v0, $a0
/* B554DC 800DE33C 03E00008 */  jr    $ra
/* B554E0 800DE340 00000000 */   nop   


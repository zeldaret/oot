glabel func_800DE2B0
/* B55450 800DE2B0 3C0E8017 */  lui   $t6, %hi(gAudioContext+0x29a0) # $t6, 0x8017
/* B55454 800DE2B4 8DCE1B20 */  lw    $t6, %lo(gAudioContext+0x29a0)($t6)
/* B55458 800DE2B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5545C 800DE2BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B55460 800DE2C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B55464 800DE2C4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B55468 800DE2C8 11C00005 */  beqz  $t6, .L800DE2E0
/* B5546C 800DE2CC 00001825 */   move  $v1, $zero
/* B55470 800DE2D0 3C048017 */  lui   $a0, %hi(gAudioContext+0x29a0) # $a0, 0x8017
/* B55474 800DE2D4 0C0378F7 */  jal   Audio_Alloc
/* B55478 800DE2D8 24841B20 */   addiu $a0, %lo(gAudioContext+0x29a0) # addiu $a0, $a0, 0x1b20
/* B5547C 800DE2DC 00401825 */  move  $v1, $v0
.L800DE2E0:
/* B55480 800DE2E0 14600004 */  bnez  $v1, .L800DE2F4
/* B55484 800DE2E4 8FA40018 */   lw    $a0, 0x18($sp)
/* B55488 800DE2E8 0C0378F7 */  jal   Audio_Alloc
/* B5548C 800DE2EC 8FA5001C */   lw    $a1, 0x1c($sp)
/* B55490 800DE2F0 00401825 */  move  $v1, $v0
.L800DE2F4:
/* B55494 800DE2F4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B55498 800DE2F8 27BD0018 */  addiu $sp, $sp, 0x18
/* B5549C 800DE2FC 00601025 */  move  $v0, $v1
/* B554A0 800DE300 03E00008 */  jr    $ra
/* B554A4 800DE304 00000000 */   nop   


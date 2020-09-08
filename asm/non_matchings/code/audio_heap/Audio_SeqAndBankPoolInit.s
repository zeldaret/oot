glabel Audio_SeqAndBankPoolInit
/* B55874 800DE6D4 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B55878 800DE6D8 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5587C 800DE6DC 8C4E29F0 */  lw    $t6, 0x29f0($v0)
/* B55880 800DE6E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B55884 800DE6E4 AFA40018 */  sw    $a0, 0x18($sp)
/* B55888 800DE6E8 8FAF0018 */  lw    $t7, 0x18($sp)
/* B5588C 800DE6EC AFBF0014 */  sw    $ra, 0x14($sp)
/* B55890 800DE6F0 3C048017 */  lui   $a0, %hi(gAudioContext+0x29f0) # $a0, 0x8017
/* B55894 800DE6F4 AC4E29F4 */  sw    $t6, 0x29f4($v0)
/* B55898 800DE6F8 24841B70 */  addiu $a0, %lo(gAudioContext+0x29f0) # addiu $a0, $a0, 0x1b70
/* B5589C 800DE6FC 0C0378F7 */  jal   Audio_Alloc
/* B558A0 800DE700 8DE50000 */   lw    $a1, ($t7)
/* B558A4 800DE704 8FB80018 */  lw    $t8, 0x18($sp)
/* B558A8 800DE708 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a00) # $a0, 0x8017
/* B558AC 800DE70C 24841B80 */  addiu $a0, %lo(gAudioContext+0x2a00) # addiu $a0, $a0, 0x1b80
/* B558B0 800DE710 00402825 */  move  $a1, $v0
/* B558B4 800DE714 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B558B8 800DE718 8F060000 */   lw    $a2, ($t8)
/* B558BC 800DE71C 8FB90018 */  lw    $t9, 0x18($sp)
/* B558C0 800DE720 3C048017 */  lui   $a0, %hi(gAudioContext+0x29f0) # $a0, 0x8017
/* B558C4 800DE724 24841B70 */  addiu $a0, %lo(gAudioContext+0x29f0) # addiu $a0, $a0, 0x1b70
/* B558C8 800DE728 0C0378F7 */  jal   Audio_Alloc
/* B558CC 800DE72C 8F250004 */   lw    $a1, 4($t9)
/* B558D0 800DE730 8FA80018 */  lw    $t0, 0x18($sp)
/* B558D4 800DE734 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a10) # $a0, 0x8017
/* B558D8 800DE738 24841B90 */  addiu $a0, %lo(gAudioContext+0x2a10) # addiu $a0, $a0, 0x1b90
/* B558DC 800DE73C 00402825 */  move  $a1, $v0
/* B558E0 800DE740 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B558E4 800DE744 8D060004 */   lw    $a2, 4($t0)
/* B558E8 800DE748 8FBF0014 */  lw    $ra, 0x14($sp)
/* B558EC 800DE74C 27BD0018 */  addiu $sp, $sp, 0x18
/* B558F0 800DE750 03E00008 */  jr    $ra
/* B558F4 800DE754 00000000 */   nop   


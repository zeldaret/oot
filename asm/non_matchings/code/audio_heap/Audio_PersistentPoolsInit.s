glabel Audio_PersistentPoolsInit
/* B558F8 800DE758 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B558FC 800DE75C 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B55900 800DE760 8C4E2A00 */  lw    $t6, 0x2a00($v0)
/* B55904 800DE764 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B55908 800DE768 AFB00018 */  sw    $s0, 0x18($sp)
/* B5590C 800DE76C 00808025 */  move  $s0, $a0
/* B55910 800DE770 AFBF001C */  sw    $ra, 0x1c($sp)
/* B55914 800DE774 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a00) # $a0, 0x8017
/* B55918 800DE778 AC4E2A04 */  sw    $t6, 0x2a04($v0)
/* B5591C 800DE77C 8E050000 */  lw    $a1, ($s0)
/* B55920 800DE780 0C0378F7 */  jal   Audio_Alloc
/* B55924 800DE784 24841B80 */   addiu $a0, %lo(gAudioContext+0x2a00) # addiu $a0, $a0, 0x1b80
/* B55928 800DE788 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a24) # $a0, 0x8017
/* B5592C 800DE78C 24841BA4 */  addiu $a0, %lo(gAudioContext+0x2a24) # addiu $a0, $a0, 0x1ba4
/* B55930 800DE790 00402825 */  move  $a1, $v0
/* B55934 800DE794 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B55938 800DE798 8E060000 */   lw    $a2, ($s0)
/* B5593C 800DE79C 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a00) # $a0, 0x8017
/* B55940 800DE7A0 24841B80 */  addiu $a0, %lo(gAudioContext+0x2a00) # addiu $a0, $a0, 0x1b80
/* B55944 800DE7A4 0C0378F7 */  jal   Audio_Alloc
/* B55948 800DE7A8 8E050004 */   lw    $a1, 4($s0)
/* B5594C 800DE7AC 3C048017 */  lui   $a0, %hi(gAudioContext+0x2b34) # $a0, 0x8017
/* B55950 800DE7B0 24841CB4 */  addiu $a0, %lo(gAudioContext+0x2b34) # addiu $a0, $a0, 0x1cb4
/* B55954 800DE7B4 00402825 */  move  $a1, $v0
/* B55958 800DE7B8 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B5595C 800DE7BC 8E060004 */   lw    $a2, 4($s0)
/* B55960 800DE7C0 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a00) # $a0, 0x8017
/* B55964 800DE7C4 24841B80 */  addiu $a0, %lo(gAudioContext+0x2a00) # addiu $a0, $a0, 0x1b80
/* B55968 800DE7C8 0C0378F7 */  jal   Audio_Alloc
/* B5596C 800DE7CC 8E050008 */   lw    $a1, 8($s0)
/* B55970 800DE7D0 3C048017 */  lui   $a0, %hi(gAudioContext+0x2c44) # $a0, 0x8017
/* B55974 800DE7D4 24841DC4 */  addiu $a0, %lo(gAudioContext+0x2c44) # addiu $a0, $a0, 0x1dc4
/* B55978 800DE7D8 00402825 */  move  $a1, $v0
/* B5597C 800DE7DC 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B55980 800DE7E0 8E060008 */   lw    $a2, 8($s0)
/* B55984 800DE7E4 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a20) # $a0, 0x8017
/* B55988 800DE7E8 0C037917 */  jal   Audio_PersistentPoolClear
/* B5598C 800DE7EC 24841BA0 */   addiu $a0, %lo(gAudioContext+0x2a20) # addiu $a0, $a0, 0x1ba0
/* B55990 800DE7F0 3C048017 */  lui   $a0, %hi(gAudioContext+0x2b30) # $a0, 0x8017
/* B55994 800DE7F4 0C037917 */  jal   Audio_PersistentPoolClear
/* B55998 800DE7F8 24841CB0 */   addiu $a0, %lo(gAudioContext+0x2b30) # addiu $a0, $a0, 0x1cb0
/* B5599C 800DE7FC 3C048017 */  lui   $a0, %hi(gAudioContext+0x2c40) # $a0, 0x8017
/* B559A0 800DE800 0C037917 */  jal   Audio_PersistentPoolClear
/* B559A4 800DE804 24841DC0 */   addiu $a0, %lo(gAudioContext+0x2c40) # addiu $a0, $a0, 0x1dc0
/* B559A8 800DE808 8FBF001C */  lw    $ra, 0x1c($sp)
/* B559AC 800DE80C 8FB00018 */  lw    $s0, 0x18($sp)
/* B559B0 800DE810 27BD0020 */  addiu $sp, $sp, 0x20
/* B559B4 800DE814 03E00008 */  jr    $ra
/* B559B8 800DE818 00000000 */   nop   


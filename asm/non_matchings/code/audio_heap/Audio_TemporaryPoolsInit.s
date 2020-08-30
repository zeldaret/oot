glabel Audio_TemporaryPoolsInit
/* B559BC 800DE81C 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B559C0 800DE820 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B559C4 800DE824 8C4E2A10 */  lw    $t6, 0x2a10($v0)
/* B559C8 800DE828 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B559CC 800DE82C AFB00018 */  sw    $s0, 0x18($sp)
/* B559D0 800DE830 00808025 */  move  $s0, $a0
/* B559D4 800DE834 AFBF001C */  sw    $ra, 0x1c($sp)
/* B559D8 800DE838 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a10) # $a0, 0x8017
/* B559DC 800DE83C AC4E2A14 */  sw    $t6, 0x2a14($v0)
/* B559E0 800DE840 8E050000 */  lw    $a1, ($s0)
/* B559E4 800DE844 0C0378F7 */  jal   Audio_Alloc
/* B559E8 800DE848 24841B90 */   addiu $a0, %lo(gAudioContext+0x2a10) # addiu $a0, $a0, 0x1b90
/* B559EC 800DE84C 3C048017 */  lui   $a0, %hi(gAudioContext+0x2af8) # $a0, 0x8017
/* B559F0 800DE850 24841C78 */  addiu $a0, %lo(gAudioContext+0x2af8) # addiu $a0, $a0, 0x1c78
/* B559F4 800DE854 00402825 */  move  $a1, $v0
/* B559F8 800DE858 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B559FC 800DE85C 8E060000 */   lw    $a2, ($s0)
/* B55A00 800DE860 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a10) # $a0, 0x8017
/* B55A04 800DE864 24841B90 */  addiu $a0, %lo(gAudioContext+0x2a10) # addiu $a0, $a0, 0x1b90
/* B55A08 800DE868 0C0378F7 */  jal   Audio_Alloc
/* B55A0C 800DE86C 8E050004 */   lw    $a1, 4($s0)
/* B55A10 800DE870 3C048017 */  lui   $a0, %hi(gAudioContext+0x2c08) # $a0, 0x8017
/* B55A14 800DE874 24841D88 */  addiu $a0, %lo(gAudioContext+0x2c08) # addiu $a0, $a0, 0x1d88
/* B55A18 800DE878 00402825 */  move  $a1, $v0
/* B55A1C 800DE87C 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B55A20 800DE880 8E060004 */   lw    $a2, 4($s0)
/* B55A24 800DE884 3C048017 */  lui   $a0, %hi(gAudioContext+0x2a10) # $a0, 0x8017
/* B55A28 800DE888 24841B90 */  addiu $a0, %lo(gAudioContext+0x2a10) # addiu $a0, $a0, 0x1b90
/* B55A2C 800DE88C 0C0378F7 */  jal   Audio_Alloc
/* B55A30 800DE890 8E050008 */   lw    $a1, 8($s0)
/* B55A34 800DE894 3C048017 */  lui   $a0, %hi(gAudioContext+0x2d18) # $a0, 0x8017
/* B55A38 800DE898 24841E98 */  addiu $a0, %lo(gAudioContext+0x2d18) # addiu $a0, $a0, 0x1e98
/* B55A3C 800DE89C 00402825 */  move  $a1, $v0
/* B55A40 800DE8A0 0C03790D */  jal   Audio_SoundAllocPoolInit
/* B55A44 800DE8A4 8E060008 */   lw    $a2, 8($s0)
/* B55A48 800DE8A8 3C048017 */  lui   $a0, %hi(gAudioContext+0x2af4) # $a0, 0x8017
/* B55A4C 800DE8AC 0C03791C */  jal   Audio_TemporaryPoolClear
/* B55A50 800DE8B0 24841C74 */   addiu $a0, %lo(gAudioContext+0x2af4) # addiu $a0, $a0, 0x1c74
/* B55A54 800DE8B4 3C048017 */  lui   $a0, %hi(gAudioContext+0x2c04) # $a0, 0x8017
/* B55A58 800DE8B8 0C03791C */  jal   Audio_TemporaryPoolClear
/* B55A5C 800DE8BC 24841D84 */   addiu $a0, %lo(gAudioContext+0x2c04) # addiu $a0, $a0, 0x1d84
/* B55A60 800DE8C0 3C048017 */  lui   $a0, %hi(gAudioContext+0x2d14) # $a0, 0x8017
/* B55A64 800DE8C4 0C03791C */  jal   Audio_TemporaryPoolClear
/* B55A68 800DE8C8 24841E94 */   addiu $a0, %lo(gAudioContext+0x2d14) # addiu $a0, $a0, 0x1e94
/* B55A6C 800DE8CC 8FBF001C */  lw    $ra, 0x1c($sp)
/* B55A70 800DE8D0 8FB00018 */  lw    $s0, 0x18($sp)
/* B55A74 800DE8D4 27BD0020 */  addiu $sp, $sp, 0x20
/* B55A78 800DE8D8 03E00008 */  jr    $ra
/* B55A7C 800DE8DC 00000000 */   nop   


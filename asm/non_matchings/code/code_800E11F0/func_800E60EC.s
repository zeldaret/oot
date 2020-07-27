glabel func_800E60EC
/* B5D28C 800E60EC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D290 800E60F0 00A03025 */  move  $a2, $a1
/* B5D294 800E60F4 00802825 */  move  $a1, $a0
/* B5D298 800E60F8 AFA40018 */  sw    $a0, 0x18($sp)
/* B5D29C 800E60FC AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D2A0 800E6100 3C048017 */  lui   $a0, %hi(D_80171B20) # $a0, 0x8017
/* B5D2A4 800E6104 0C03790D */  jal   func_800DE434
/* B5D2A8 800E6108 24841B20 */   addiu $a0, %lo(D_80171B20) # addiu $a0, $a0, 0x1b20
/* B5D2AC 800E610C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D2B0 800E6110 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D2B4 800E6114 03E00008 */  jr    $ra
/* B5D2B8 800E6118 00000000 */   nop


glabel func_800A6408
/* B1D5A8 800A6408 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B1D5AC 800A640C 3C188016 */  lui   $t8, %hi(D_801600C0) # $t8, 0x8016
/* B1D5B0 800A6410 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1D5B4 800A6414 AFA40058 */  sw    $a0, 0x58($sp)
/* B1D5B8 800A6418 AFA5005C */  sw    $a1, 0x5c($sp)
/* B1D5BC 800A641C AFA60060 */  sw    $a2, 0x60($sp)
/* B1D5C0 800A6420 271800C0 */  addiu $t8, %lo(D_801600C0) # addiu $t8, $t8, 0xc0
/* B1D5C4 800A6424 00057980 */  sll   $t7, $a1, 6
/* B1D5C8 800A6428 AFA70064 */  sw    $a3, 0x64($sp)
/* B1D5CC 800A642C 01F82821 */  addu  $a1, $t7, $t8
/* B1D5D0 800A6430 27A60018 */  addiu $a2, $sp, 0x18
/* B1D5D4 800A6434 0C029BE8 */  jal   func_800A6FA0
/* B1D5D8 800A6438 24840004 */   addiu $a0, $a0, 4
/* B1D5DC 800A643C 27A40018 */  addiu $a0, $sp, 0x18
/* B1D5E0 800A6440 8FA50060 */  lw    $a1, 0x60($sp)
/* B1D5E4 800A6444 0C029BBD */  jal   func_800A6EF4
/* B1D5E8 800A6448 8FA60064 */   lw    $a2, 0x64($sp)
/* B1D5EC 800A644C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1D5F0 800A6450 27BD0058 */  addiu $sp, $sp, 0x58
/* B1D5F4 800A6454 03E00008 */  jr    $ra
/* B1D5F8 800A6458 00000000 */   nop   

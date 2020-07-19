glabel func_800E6024
/* B5D1C4 800E6024 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D1C8 800E6028 3C0F8017 */  lui   $t7, %hi(gAudioContext) # $t7, 0x8017
/* B5D1CC 800E602C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D1D0 800E6030 25EFF180 */  addiu $t7, %lo(gAudioContext) # addiu $t7, $t7, -0xe80
/* B5D1D4 800E6034 240E0001 */  li    $t6, 1
/* B5D1D8 800E6038 ADEE2984 */  sw    $t6, 0x2984($t7)
/* B5D1DC 800E603C 3C188013 */  lui   $t8, %hi(D_801304D8) # $t8, 0x8013
/* B5D1E0 800E6040 8F1804D8 */  lw    $t8, %lo(D_801304D8)($t8)
/* B5D1E4 800E6044 53000007 */  beql  $t8, $zero, .L800E6064
/* B5D1E8 800E6048 8FBF0014 */   lw    $ra, 0x14($sp)
/* B5D1EC 800E604C 0C0397E2 */  jal   func_800E5F88
/* B5D1F0 800E6050 00002025 */   move  $a0, $zero
/* B5D1F4 800E6054 3C198017 */  lui   $t9, %hi(gAudioContext) # $t9, 0x8017
/* B5D1F8 800E6058 2739F180 */  addiu $t9, %lo(gAudioContext) # addiu $t9, $t9, -0xe80
/* B5D1FC 800E605C A3203518 */  sb    $zero, 0x3518($t9)
/* B5D200 800E6060 8FBF0014 */  lw    $ra, 0x14($sp)
.L800E6064:
/* B5D204 800E6064 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D208 800E6068 03E00008 */  jr    $ra
/* B5D20C 800E606C 00000000 */   nop


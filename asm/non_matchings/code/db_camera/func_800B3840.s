glabel func_800B3840
/* B2A9E0 800B3840 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B2A9E4 800B3844 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B2A9E8 800B3848 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B2A9EC 800B384C AFBF0014 */  sw    $ra, 0x14($sp)
/* B2A9F0 800B3850 AFA40018 */  sw    $a0, 0x18($sp)
/* B2A9F4 800B3854 844E1074 */  lh    $t6, 0x1074($v0)
/* B2A9F8 800B3858 24010013 */  li    $at, 19
/* B2A9FC 800B385C 55C10009 */  bnel  $t6, $at, .L800B3884
/* B2AA00 800B3860 8FBF0014 */   lw    $ra, 0x14($sp)
/* B2AA04 800B3864 844F1076 */  lh    $t7, 0x1076($v0)
/* B2AA08 800B3868 24010001 */  li    $at, 1
/* B2AA0C 800B386C 3C048014 */  lui   $a0, %hi(D_80143100) # $a0, 0x8014
/* B2AA10 800B3870 15E10003 */  bne   $t7, $at, .L800B3880
/* B2AA14 800B3874 24843100 */   addiu $a0, %lo(D_80143100) # addiu $a0, $a0, 0x3100
/* B2AA18 800B3878 0C00084C */  jal   osSyncPrintf
/* B2AA1C 800B387C 8FA50018 */   lw    $a1, 0x18($sp)
.L800B3880:
/* B2AA20 800B3880 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B3884:
/* B2AA24 800B3884 8FB80018 */  lw    $t8, 0x18($sp)
/* B2AA28 800B3888 3C018013 */  lui   $at, %hi(D_8012CED4)
/* B2AA2C 800B388C 27BD0018 */  addiu $sp, $sp, 0x18
/* B2AA30 800B3890 03E00008 */  jr    $ra
/* B2AA34 800B3894 AC38CED4 */   sw    $t8, %lo(D_8012CED4)($at)


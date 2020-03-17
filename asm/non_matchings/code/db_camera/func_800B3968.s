glabel func_800B3968
/* B2AB08 800B3968 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B2AB0C 800B396C 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B2AB10 800B3970 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B2AB14 800B3974 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2AB18 800B3978 844E1074 */  lh    $t6, 0x1074($v0)
/* B2AB1C 800B397C 24010013 */  li    $at, 19
/* B2AB20 800B3980 55C10009 */  bnel  $t6, $at, .L800B39A8
/* B2AB24 800B3984 8FBF0014 */   lw    $ra, 0x14($sp)
/* B2AB28 800B3988 844F1076 */  lh    $t7, 0x1076($v0)
/* B2AB2C 800B398C 24010001 */  li    $at, 1
/* B2AB30 800B3990 3C048014 */  lui   $a0, %hi(D_80143154) # $a0, 0x8014
/* B2AB34 800B3994 55E10004 */  bnel  $t7, $at, .L800B39A8
/* B2AB38 800B3998 8FBF0014 */   lw    $ra, 0x14($sp)
/* B2AB3C 800B399C 0C00084C */  jal   osSyncPrintf
/* B2AB40 800B39A0 24843154 */   addiu $a0, %lo(D_80143154) # addiu $a0, $a0, 0x3154
/* B2AB44 800B39A4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B39A8:
/* B2AB48 800B39A8 3C018013 */  lui   $at, %hi(D_8012CED8) # $at, 0x8013
/* B2AB4C 800B39AC AC20CED8 */  sw    $zero, %lo(D_8012CED8)($at)
/* B2AB50 800B39B0 03E00008 */  jr    $ra
/* B2AB54 800B39B4 27BD0018 */   addiu $sp, $sp, 0x18


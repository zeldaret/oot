glabel func_800B38A4
/* B2AA44 800B38A4 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B2AA48 800B38A8 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* B2AA4C 800B38AC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B2AA50 800B38B0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2AA54 800B38B4 AFA40018 */  sw    $a0, 0x18($sp)
/* B2AA58 800B38B8 844E1074 */  lh    $t6, 0x1074($v0)
/* B2AA5C 800B38BC 24010013 */  li    $at, 19
/* B2AA60 800B38C0 55C10009 */  bnel  $t6, $at, .L800B38E8
/* B2AA64 800B38C4 8FBF0014 */   lw    $ra, 0x14($sp)
/* B2AA68 800B38C8 844F1076 */  lh    $t7, 0x1076($v0)
/* B2AA6C 800B38CC 24010001 */  li    $at, 1
/* B2AA70 800B38D0 3C048014 */  lui   $a0, %hi(D_8014311C) # $a0, 0x8014
/* B2AA74 800B38D4 15E10003 */  bne   $t7, $at, .L800B38E4
/* B2AA78 800B38D8 2484311C */   addiu $a0, %lo(D_8014311C) # addiu $a0, $a0, 0x311c
/* B2AA7C 800B38DC 0C00084C */  jal   osSyncPrintf
/* B2AA80 800B38E0 8FA50018 */   lw    $a1, 0x18($sp)
.L800B38E4:
/* B2AA84 800B38E4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800B38E8:
/* B2AA88 800B38E8 8FB80018 */  lw    $t8, 0x18($sp)
/* B2AA8C 800B38EC 3C018013 */  lui   $at, %hi(D_8012CED8)
/* B2AA90 800B38F0 27BD0018 */  addiu $sp, $sp, 0x18
/* B2AA94 800B38F4 03E00008 */  jr    $ra
/* B2AA98 800B38F8 AC38CED8 */   sw    $t8, %lo(D_8012CED8)($at)


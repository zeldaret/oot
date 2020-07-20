glabel func_800EE2D4
/* B65474 800EE2D4 3C0E8013 */  lui   $t6, %hi(D_80130F1C) # $t6, 0x8013
/* B65478 800EE2D8 91CE0F1C */  lbu   $t6, %lo(D_80130F1C)($t6)
/* B6547C 800EE2DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B65480 800EE2E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B65484 800EE2E4 3C018017 */  lui   $at, %hi(D_8016B9F8) # $at, 0x8017
/* B65488 800EE2E8 31CF003F */  andi  $t7, $t6, 0x3f
/* B6548C 800EE2EC 0C03B2BC */  jal   func_800ECAF0
/* B65490 800EE2F0 A02FB9F8 */   sb    $t7, %lo(D_8016B9F8)($at)
/* B65494 800EE2F4 3C038017 */  lui   $v1, %hi(D_8016B9F8) # $v1, 0x8017
/* B65498 800EE2F8 2463B9F8 */  addiu $v1, %lo(D_8016B9F8) # addiu $v1, $v1, -0x4608
/* B6549C 800EE2FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B654A0 800EE300 A0620001 */  sb    $v0, 1($v1)
/* B654A4 800EE304 3C188017 */  lui   $t8, %hi(D_8016BA2E) # $t8, 0x8017
/* B654A8 800EE308 9318BA2E */  lbu   $t8, %lo(D_8016BA2E)($t8)
/* B654AC 800EE30C 27BD0018 */  addiu $sp, $sp, 0x18
/* B654B0 800EE310 03E00008 */  jr    $ra
/* B654B4 800EE314 A0780002 */   sb    $t8, 2($v1)


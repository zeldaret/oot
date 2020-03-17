glabel func_800A3478
/* B1A618 800A3478 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A61C 800A347C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A620 800A3480 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A624 800A3484 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A628 800A3488 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A62C 800A348C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A630 800A3490 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A634 800A3494 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A638 800A3498 00812021 */  addu  $a0, $a0, $at
/* B1A63C 800A349C 0C028CCD */  jal   func_800A3334
/* B1A640 800A34A0 24050001 */   li    $a1, 1
/* B1A644 800A34A4 10400009 */  beqz  $v0, .L800A34CC
/* B1A648 800A34A8 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A64C 800A34AC 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A650 800A34B0 A04E0004 */  sb    $t6, 4($v0)
/* B1A654 800A34B4 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A658 800A34B8 A04F0005 */  sb    $t7, 5($v0)
/* B1A65C 800A34BC 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A660 800A34C0 AC580008 */  sw    $t8, 8($v0)
/* B1A664 800A34C4 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A668 800A34C8 AC59000C */  sw    $t9, 0xc($v0)
.L800A34CC:
/* B1A66C 800A34CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A670 800A34D0 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A674 800A34D4 03E00008 */  jr    $ra
/* B1A678 800A34D8 00000000 */   nop   


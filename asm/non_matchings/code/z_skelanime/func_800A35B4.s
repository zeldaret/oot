glabel func_800A35B4
/* B1A754 800A35B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A758 800A35B8 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A75C 800A35BC AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A760 800A35C0 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A764 800A35C4 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A768 800A35C8 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A76C 800A35CC AFA60020 */  sw    $a2, 0x20($sp)
/* B1A770 800A35D0 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A774 800A35D4 00812021 */  addu  $a0, $a0, $at
/* B1A778 800A35D8 0C028CCD */  jal   func_800A3334
/* B1A77C 800A35DC 24050004 */   li    $a1, 4
/* B1A780 800A35E0 1040000B */  beqz  $v0, .L800A3610
/* B1A784 800A35E4 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A788 800A35E8 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A78C 800A35EC A04E0004 */  sb    $t6, 4($v0)
/* B1A790 800A35F0 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A794 800A35F4 A04F0005 */  sb    $t7, 5($v0)
/* B1A798 800A35F8 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A79C 800A35FC AC580008 */  sw    $t8, 8($v0)
/* B1A7A0 800A3600 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A7A4 800A3604 AC59000C */  sw    $t9, 0xc($v0)
/* B1A7A8 800A3608 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A7AC 800A360C AC480010 */  sw    $t0, 0x10($v0)
.L800A3610:
/* B1A7B0 800A3610 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A7B4 800A3614 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A7B8 800A3618 03E00008 */  jr    $ra
/* B1A7BC 800A361C 00000000 */   nop   


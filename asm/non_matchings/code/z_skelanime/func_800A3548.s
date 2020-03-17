glabel func_800A3548
/* B1A6E8 800A3548 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A6EC 800A354C 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A6F0 800A3550 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A6F4 800A3554 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A6F8 800A3558 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A6FC 800A355C 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A700 800A3560 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A704 800A3564 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A708 800A3568 00812021 */  addu  $a0, $a0, $at
/* B1A70C 800A356C 0C028CCD */  jal   func_800A3334
/* B1A710 800A3570 24050003 */   li    $a1, 3
/* B1A714 800A3574 1040000B */  beqz  $v0, .L800A35A4
/* B1A718 800A3578 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A71C 800A357C 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A720 800A3580 A04E0004 */  sb    $t6, 4($v0)
/* B1A724 800A3584 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A728 800A3588 A04F0005 */  sb    $t7, 5($v0)
/* B1A72C 800A358C 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A730 800A3590 AC580008 */  sw    $t8, 8($v0)
/* B1A734 800A3594 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A738 800A3598 AC59000C */  sw    $t9, 0xc($v0)
/* B1A73C 800A359C 8FA80028 */  lw    $t0, 0x28($sp)
/* B1A740 800A35A0 AC480010 */  sw    $t0, 0x10($v0)
.L800A35A4:
/* B1A744 800A35A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A748 800A35A8 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A74C 800A35AC 03E00008 */  jr    $ra
/* B1A750 800A35B0 00000000 */   nop   


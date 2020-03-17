glabel func_800A34DC
/* B1A67C 800A34DC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A680 800A34E0 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A684 800A34E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A688 800A34E8 AFA40018 */  sw    $a0, 0x18($sp)
/* B1A68C 800A34EC AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A690 800A34F0 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A694 800A34F4 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A698 800A34F8 AFA70024 */  sw    $a3, 0x24($sp)
/* B1A69C 800A34FC 00812021 */  addu  $a0, $a0, $at
/* B1A6A0 800A3500 0C028CCD */  jal   func_800A3334
/* B1A6A4 800A3504 24050002 */   li    $a1, 2
/* B1A6A8 800A3508 1040000B */  beqz  $v0, .L800A3538
/* B1A6AC 800A350C 3C0E8016 */   lui   $t6, %hi(D_801600B0) # $t6, 0x8016
/* B1A6B0 800A3510 8DCE00B0 */  lw    $t6, %lo(D_801600B0)($t6)
/* B1A6B4 800A3514 A04E0004 */  sb    $t6, 4($v0)
/* B1A6B8 800A3518 8FAF001C */  lw    $t7, 0x1c($sp)
/* B1A6BC 800A351C A04F0005 */  sb    $t7, 5($v0)
/* B1A6C0 800A3520 8FB80020 */  lw    $t8, 0x20($sp)
/* B1A6C4 800A3524 AC580008 */  sw    $t8, 8($v0)
/* B1A6C8 800A3528 8FB90024 */  lw    $t9, 0x24($sp)
/* B1A6CC 800A352C AC59000C */  sw    $t9, 0xc($v0)
/* B1A6D0 800A3530 C7A40028 */  lwc1  $f4, 0x28($sp)
/* B1A6D4 800A3534 E4440010 */  swc1  $f4, 0x10($v0)
.L800A3538:
/* B1A6D8 800A3538 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A6DC 800A353C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A6E0 800A3540 03E00008 */  jr    $ra
/* B1A6E4 800A3544 00000000 */   nop   


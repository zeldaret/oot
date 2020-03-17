glabel func_800A3620
/* B1A7C0 800A3620 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B1A7C4 800A3624 3C010001 */  lui   $at, (0x00010B20 >> 16) # lui $at, 1
/* B1A7C8 800A3628 AFBF0014 */  sw    $ra, 0x14($sp)
/* B1A7CC 800A362C AFA40018 */  sw    $a0, 0x18($sp)
/* B1A7D0 800A3630 AFA5001C */  sw    $a1, 0x1c($sp)
/* B1A7D4 800A3634 34210B20 */  ori   $at, (0x00010B20 & 0xFFFF) # ori $at, $at, 0xb20
/* B1A7D8 800A3638 AFA60020 */  sw    $a2, 0x20($sp)
/* B1A7DC 800A363C AFA70024 */  sw    $a3, 0x24($sp)
/* B1A7E0 800A3640 00812021 */  addu  $a0, $a0, $at
/* B1A7E4 800A3644 0C028CCD */  jal   func_800A3334
/* B1A7E8 800A3648 24050005 */   li    $a1, 5
/* B1A7EC 800A364C 10400006 */  beqz  $v0, .L800A3668
/* B1A7F0 800A3650 8FAE001C */   lw    $t6, 0x1c($sp)
/* B1A7F4 800A3654 AC4E0004 */  sw    $t6, 4($v0)
/* B1A7F8 800A3658 8FAF0020 */  lw    $t7, 0x20($sp)
/* B1A7FC 800A365C AC4F0008 */  sw    $t7, 8($v0)
/* B1A800 800A3660 C7A40024 */  lwc1  $f4, 0x24($sp)
/* B1A804 800A3664 E444000C */  swc1  $f4, 0xc($v0)
.L800A3668:
/* B1A808 800A3668 8FBF0014 */  lw    $ra, 0x14($sp)
/* B1A80C 800A366C 27BD0018 */  addiu $sp, $sp, 0x18
/* B1A810 800A3670 03E00008 */  jr    $ra
/* B1A814 800A3674 00000000 */   nop   


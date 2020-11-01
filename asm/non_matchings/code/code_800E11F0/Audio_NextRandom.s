glabel Audio_NextRandom
/* B5D960 800E67C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5D964 800E67C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5D968 800E67C8 0C001BA8 */  jal   osGetCount
/* B5D96C 800E67CC 00000000 */   nop
/* B5D970 800E67D0 3C048017 */  lui   $a0, %hi(gAudioContext) # $a0, 0x8017
/* B5D974 800E67D4 2484F180 */  addiu $a0, %lo(gAudioContext) # addiu $a0, $a0, -0xe80
/* B5D978 800E67D8 3C038013 */  lui   $v1, %hi(D_801304F0) # $v1, 0x8013
/* B5D97C 800E67DC 8C6304F0 */  lw    $v1, %lo(D_801304F0)($v1)
/* B5D980 800E67E0 8C8F289C */  lw    $t7, 0x289c($a0)
/* B5D984 800E67E4 3C010123 */  lui   $at, (0x01234567 >> 16) # lui $at, 0x123
/* B5D988 800E67E8 34214567 */  ori   $at, (0x01234567 & 0xFFFF) # ori $at, $at, 0x4567
/* B5D98C 800E67EC 00417021 */  addu  $t6, $v0, $at
/* B5D990 800E67F0 006FC021 */  addu  $t8, $v1, $t7
/* B5D994 800E67F4 01D80019 */  multu $t6, $t8
/* B5D998 800E67F8 8C99297C */  lw    $t9, 0x297c($a0)
/* B5D99C 800E67FC 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D9A0 800E6800 3C018013 */  lui   $at, %hi(D_801304F0)
/* B5D9A4 800E6804 27BD0018 */  addiu $sp, $sp, 0x18
/* B5D9A8 800E6808 00001812 */  mflo  $v1
/* B5D9AC 800E680C 00791021 */  addu  $v0, $v1, $t9
/* B5D9B0 800E6810 03E00008 */  jr    $ra
/* B5D9B4 800E6814 AC2204F0 */   sw    $v0, %lo(D_801304F0)($at)


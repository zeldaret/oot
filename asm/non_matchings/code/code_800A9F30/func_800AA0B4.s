glabel func_800AA0B4
/* B21254 800AA0B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B21258 800AA0B8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B2125C 800AA0BC 3C048016 */  lui   $a0, %hi(D_80160FD0) # $a0, 0x8016
/* B21260 800AA0C0 0C034C50 */  jal   func_800D3140
/* B21264 800AA0C4 24840FD0 */   addiu $a0, %lo(D_80160FD0) # addiu $a0, $a0, 0xfd0
/* B21268 800AA0C8 3C028016 */  lui   $v0, %hi(gPadMgr) # $v0, 0x8016
/* B2126C 800AA0CC 244268C0 */  addiu $v0, %lo(gPadMgr) # addiu $v0, $v0, 0x68c0
/* B21270 800AA0D0 3C0E800B */  lui   $t6, %hi(func_800A9F30) # $t6, 0x800b
/* B21274 800AA0D4 25CE9F30 */  addiu $t6, %lo(func_800A9F30) # addiu $t6, $t6, -0x60d0
/* B21278 800AA0D8 AC4E0460 */  sw    $t6, 0x460($v0)
/* B2127C 800AA0DC AC400464 */  sw    $zero, 0x464($v0)
/* B21280 800AA0E0 8FBF0014 */  lw    $ra, 0x14($sp)
/* B21284 800AA0E4 27BD0018 */  addiu $sp, $sp, 0x18
/* B21288 800AA0E8 03E00008 */  jr    $ra
/* B2128C 800AA0EC 00000000 */   nop 
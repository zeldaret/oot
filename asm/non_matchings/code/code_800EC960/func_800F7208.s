glabel func_800F7208
/* B6E3A8 800F7208 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6E3AC 800F720C AFBF0014 */  sw    $ra, 0x14($sp)
/* B6E3B0 800F7210 0C03EB7E */  jal   func_800FADF8
/* B6E3B4 800F7214 00000000 */   nop   
/* B6E3B8 800F7218 3C04F200 */  lui   $a0, 0xf200
/* B6E3BC 800F721C 0C0396BF */  jal   func_800E5AFC
/* B6E3C0 800F7220 24050001 */   li    $a1, 1
/* B6E3C4 800F7224 0C03DB0D */  jal   func_800F6C34
/* B6E3C8 800F7228 00000000 */   nop   
/* B6E3CC 800F722C 0C03CFB5 */  jal   func_800F3ED4
/* B6E3D0 800F7230 00000000 */   nop   
/* B6E3D4 800F7234 24040002 */  li    $a0, 2
/* B6E3D8 800F7238 00002825 */  move  $a1, $zero
/* B6E3DC 800F723C 24060070 */  li    $a2, 112
/* B6E3E0 800F7240 0C03E4A0 */  jal   func_800F9280
/* B6E3E4 800F7244 24070001 */   li    $a3, 1
/* B6E3E8 800F7248 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6E3EC 800F724C 27BD0018 */  addiu $sp, $sp, 0x18
/* B6E3F0 800F7250 03E00008 */  jr    $ra
/* B6E3F4 800F7254 00000000 */   nop   
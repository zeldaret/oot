glabel func_800F314C
/* B6A2EC 800F314C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B6A2F0 800F3150 AFA40018 */  sw    $a0, 0x18($sp)
/* B6A2F4 800F3154 00803025 */  move  $a2, $a0
/* B6A2F8 800F3158 00C02025 */  move  $a0, $a2
/* B6A2FC 800F315C 308400FF */  andi  $a0, $a0, 0xff
/* B6A300 800F3160 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6A304 800F3164 00042200 */  sll   $a0, $a0, 8
/* B6A308 800F3168 3C018200 */  lui   $at, 0x8200
/* B6A30C 800F316C 00812025 */  or    $a0, $a0, $at
/* B6A310 800F3170 0C0396BF */  jal   func_800E5AFC
/* B6A314 800F3174 24050001 */   li    $a1, 1
/* B6A318 800F3178 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6A31C 800F317C 27BD0018 */  addiu $sp, $sp, 0x18
/* B6A320 800F3180 03E00008 */  jr    $ra
/* B6A324 800F3184 00000000 */   nop   


glabel func_8003E02C
/* AB51CC 8003E02C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB51D0 8003E030 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB51D4 8003E034 AFA40038 */  sw    $a0, 0x38($sp)
/* AB51D8 8003E038 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB51DC 8003E03C AFA60040 */  sw    $a2, 0x40($sp)
/* AB51E0 8003E040 AFA70044 */  sw    $a3, 0x44($sp)
/* AB51E4 8003E044 240E0001 */  li    $t6, 1
/* AB51E8 8003E048 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB51EC 8003E04C 8FA70058 */  lw    $a3, 0x58($sp)
/* AB51F0 8003E050 8FA60054 */  lw    $a2, 0x54($sp)
/* AB51F4 8003E054 8FA50050 */  lw    $a1, 0x50($sp)
/* AB51F8 8003E058 0C00F74A */  jal   func_8003DD28
/* AB51FC 8003E05C 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB5200 8003E060 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB5204 8003E064 44812000 */  mtc1  $at, $f4
/* AB5208 8003E068 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB520C 8003E06C 8FB80044 */  lw    $t8, 0x44($sp)
/* AB5210 8003E070 8FB90048 */  lw    $t9, 0x48($sp)
/* AB5214 8003E074 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB5218 8003E078 8FA40038 */  lw    $a0, 0x38($sp)
/* AB521C 8003E07C 24050004 */  li    $a1, 4
/* AB5220 8003E080 00003025 */  move  $a2, $zero
/* AB5224 8003E084 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB5228 8003E088 AFA00020 */  sw    $zero, 0x20($sp)
/* AB522C 8003E08C AFA20028 */  sw    $v0, 0x28($sp)
/* AB5230 8003E090 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB5234 8003E094 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB5238 8003E098 AFB80014 */  sw    $t8, 0x14($sp)
/* AB523C 8003E09C AFB90018 */  sw    $t9, 0x18($sp)
/* AB5240 8003E0A0 0C00F5FC */  jal   func_8003D7F0
/* AB5244 8003E0A4 AFA8001C */   sw    $t0, 0x1c($sp)
/* AB5248 8003E0A8 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB524C 8003E0AC 27BD0038 */  addiu $sp, $sp, 0x38
/* AB5250 8003E0B0 03E00008 */  jr    $ra
/* AB5254 8003E0B4 00000000 */   nop   


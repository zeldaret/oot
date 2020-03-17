glabel func_8003E188
/* AB5328 8003E188 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB532C 8003E18C AFBF0034 */  sw    $ra, 0x34($sp)
/* AB5330 8003E190 AFA40038 */  sw    $a0, 0x38($sp)
/* AB5334 8003E194 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB5338 8003E198 AFA60040 */  sw    $a2, 0x40($sp)
/* AB533C 8003E19C AFA70044 */  sw    $a3, 0x44($sp)
/* AB5340 8003E1A0 240E0001 */  li    $t6, 1
/* AB5344 8003E1A4 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB5348 8003E1A8 8FA70058 */  lw    $a3, 0x58($sp)
/* AB534C 8003E1AC 8FA60054 */  lw    $a2, 0x54($sp)
/* AB5350 8003E1B0 8FA50050 */  lw    $a1, 0x50($sp)
/* AB5354 8003E1B4 0C00F74A */  jal   func_8003DD28
/* AB5358 8003E1B8 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB535C 8003E1BC 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB5360 8003E1C0 44812000 */  mtc1  $at, $f4
/* AB5364 8003E1C4 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB5368 8003E1C8 8FB80044 */  lw    $t8, 0x44($sp)
/* AB536C 8003E1CC 8FB90048 */  lw    $t9, 0x48($sp)
/* AB5370 8003E1D0 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB5374 8003E1D4 8FA40038 */  lw    $a0, 0x38($sp)
/* AB5378 8003E1D8 00002825 */  move  $a1, $zero
/* AB537C 8003E1DC 00003025 */  move  $a2, $zero
/* AB5380 8003E1E0 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB5384 8003E1E4 AFA00020 */  sw    $zero, 0x20($sp)
/* AB5388 8003E1E8 AFA20028 */  sw    $v0, 0x28($sp)
/* AB538C 8003E1EC AFAF0010 */  sw    $t7, 0x10($sp)
/* AB5390 8003E1F0 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB5394 8003E1F4 AFB80014 */  sw    $t8, 0x14($sp)
/* AB5398 8003E1F8 AFB90018 */  sw    $t9, 0x18($sp)
/* AB539C 8003E1FC 0C00F5FC */  jal   func_8003D7F0
/* AB53A0 8003E200 AFA8001C */   sw    $t0, 0x1c($sp)
/* AB53A4 8003E204 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB53A8 8003E208 27BD0038 */  addiu $sp, $sp, 0x38
/* AB53AC 8003E20C 03E00008 */  jr    $ra
/* AB53B0 8003E210 00000000 */   nop   


glabel func_8003E0FC
/* AB529C 8003E0FC 27BDFFC0 */  addiu $sp, $sp, -0x40
/* AB52A0 8003E100 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB52A4 8003E104 AFA40040 */  sw    $a0, 0x40($sp)
/* AB52A8 8003E108 AFA50044 */  sw    $a1, 0x44($sp)
/* AB52AC 8003E10C AFA60048 */  sw    $a2, 0x48($sp)
/* AB52B0 8003E110 AFA7004C */  sw    $a3, 0x4c($sp)
/* AB52B4 8003E114 240E0001 */  li    $t6, 1
/* AB52B8 8003E118 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB52BC 8003E11C 8FA70060 */  lw    $a3, 0x60($sp)
/* AB52C0 8003E120 8FA6005C */  lw    $a2, 0x5c($sp)
/* AB52C4 8003E124 8FA50058 */  lw    $a1, 0x58($sp)
/* AB52C8 8003E128 0C00F74A */  jal   func_8003DD28
/* AB52CC 8003E12C 8FA40054 */   lw    $a0, 0x54($sp)
/* AB52D0 8003E130 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB52D4 8003E134 44812000 */  mtc1  $at, $f4
/* AB52D8 8003E138 8FAF0048 */  lw    $t7, 0x48($sp)
/* AB52DC 8003E13C 8FB8004C */  lw    $t8, 0x4c($sp)
/* AB52E0 8003E140 8FB90050 */  lw    $t9, 0x50($sp)
/* AB52E4 8003E144 27A8003C */  addiu $t0, $sp, 0x3c
/* AB52E8 8003E148 AFA8001C */  sw    $t0, 0x1c($sp)
/* AB52EC 8003E14C 8FA40040 */  lw    $a0, 0x40($sp)
/* AB52F0 8003E150 00002825 */  move  $a1, $zero
/* AB52F4 8003E154 00003025 */  move  $a2, $zero
/* AB52F8 8003E158 8FA70044 */  lw    $a3, 0x44($sp)
/* AB52FC 8003E15C AFA00020 */  sw    $zero, 0x20($sp)
/* AB5300 8003E160 AFA20028 */  sw    $v0, 0x28($sp)
/* AB5304 8003E164 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB5308 8003E168 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB530C 8003E16C AFB80014 */  sw    $t8, 0x14($sp)
/* AB5310 8003E170 0C00F5FC */  jal   func_8003D7F0
/* AB5314 8003E174 AFB90018 */   sw    $t9, 0x18($sp)
/* AB5318 8003E178 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB531C 8003E17C 27BD0040 */  addiu $sp, $sp, 0x40
/* AB5320 8003E180 03E00008 */  jr    $ra
/* AB5324 8003E184 00000000 */   nop   


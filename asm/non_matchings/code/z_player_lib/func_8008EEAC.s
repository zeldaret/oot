glabel func_8008EEAC
/* B0604C 8008EEAC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B06050 8008EEB0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B06054 8008EEB4 AFA40020 */  sw    $a0, 0x20($sp)
/* B06058 8008EEB8 AFA50024 */  sw    $a1, 0x24($sp)
/* B0605C 8008EEBC 8C861C44 */  lw    $a2, 0x1c44($a0)
/* B06060 8008EEC0 00C02025 */  move  $a0, $a2
/* B06064 8008EEC4 0C023B82 */  jal   func_8008EE08
/* B06068 8008EEC8 AFA6001C */   sw    $a2, 0x1c($sp)
/* B0606C 8008EECC 8FA6001C */  lw    $a2, 0x1c($sp)
/* B06070 8008EED0 8FA20024 */  lw    $v0, 0x24($sp)
/* B06074 8008EED4 3C010001 */  lui   $at, 1
/* B06078 8008EED8 8CCF067C */  lw    $t7, 0x67c($a2)
/* B0607C 8008EEDC ACC20664 */  sw    $v0, 0x664($a2)
/* B06080 8008EEE0 ACC20684 */  sw    $v0, 0x684($a2)
/* B06084 8008EEE4 01E1C025 */  or    $t8, $t7, $at
/* B06088 8008EEE8 ACD8067C */  sw    $t8, 0x67c($a2)
/* B0608C 8008EEEC 8FA40020 */  lw    $a0, 0x20($sp)
/* B06090 8008EEF0 0C030129 */  jal   Gameplay_GetCamera
/* B06094 8008EEF4 00002825 */   move  $a1, $zero
/* B06098 8008EEF8 00402025 */  move  $a0, $v0
/* B0609C 8008EEFC 24050008 */  li    $a1, 8
/* B060A0 8008EF00 0C016AA4 */  jal   func_8005AA90
/* B060A4 8008EF04 8FA60024 */   lw    $a2, 0x24($sp)
/* B060A8 8008EF08 8FA40020 */  lw    $a0, 0x20($sp)
/* B060AC 8008EF0C 0C030129 */  jal   Gameplay_GetCamera
/* B060B0 8008EF10 00002825 */   move  $a1, $zero
/* B060B4 8008EF14 00402025 */  move  $a0, $v0
/* B060B8 8008EF18 0C016911 */  jal   func_8005A444
/* B060BC 8008EF1C 24050002 */   li    $a1, 2
/* B060C0 8008EF20 8FBF0014 */  lw    $ra, 0x14($sp)
/* B060C4 8008EF24 27BD0020 */  addiu $sp, $sp, 0x20
/* B060C8 8008EF28 03E00008 */  jr    $ra
/* B060CC 8008EF2C 00000000 */   nop   


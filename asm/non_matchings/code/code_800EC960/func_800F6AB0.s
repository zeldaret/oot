glabel func_800F6AB0
/* B6DC50 800F6AB0 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6DC54 800F6AB4 00802825 */  move  $a1, $a0
/* B6DC58 800F6AB8 30A200FF */  andi  $v0, $a1, 0xff
/* B6DC5C 800F6ABC 3C011000 */  lui   $at, (0x100000FF >> 16) # lui $at, 0x1000
/* B6DC60 800F6AC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6DC64 800F6AC4 AFA40020 */  sw    $a0, 0x20($sp)
/* B6DC68 800F6AC8 342100FF */  ori   $at, (0x100000FF & 0xFFFF) # ori $at, $at, 0xff
/* B6DC6C 800F6ACC 00021400 */  sll   $v0, $v0, 0x10
/* B6DC70 800F6AD0 00412025 */  or    $a0, $v0, $at
/* B6DC74 800F6AD4 0C03E803 */  jal   Audio_SetBGM
/* B6DC78 800F6AD8 AFA2001C */   sw    $v0, 0x1c($sp)
/* B6DC7C 800F6ADC 8FA4001C */  lw    $a0, 0x1c($sp)
/* B6DC80 800F6AE0 3C011100 */  lui   $at, (0x110000FF >> 16) # lui $at, 0x1100
/* B6DC84 800F6AE4 342100FF */  ori   $at, (0x110000FF & 0xFFFF) # ori $at, $at, 0xff
/* B6DC88 800F6AE8 0C03E803 */  jal   Audio_SetBGM
/* B6DC8C 800F6AEC 00812025 */   or    $a0, $a0, $at
/* B6DC90 800F6AF0 8FA4001C */  lw    $a0, 0x1c($sp)
/* B6DC94 800F6AF4 3C011300 */  lui   $at, (0x130000FF >> 16) # lui $at, 0x1300
/* B6DC98 800F6AF8 342100FF */  ori   $at, (0x130000FF & 0xFFFF) # ori $at, $at, 0xff
/* B6DC9C 800F6AFC 0C03E803 */  jal   Audio_SetBGM
/* B6DCA0 800F6B00 00812025 */   or    $a0, $a0, $at
/* B6DCA4 800F6B04 00002025 */  move  $a0, $zero
/* B6DCA8 800F6B08 24050003 */  li    $a1, 3
/* B6DCAC 800F6B0C 2406007F */  li    $a2, 127
/* B6DCB0 800F6B10 0C03E890 */  jal   func_800FA240
/* B6DCB4 800F6B14 00003825 */   move  $a3, $zero
/* B6DCB8 800F6B18 00002025 */  move  $a0, $zero
/* B6DCBC 800F6B1C 24050001 */  li    $a1, 1
/* B6DCC0 800F6B20 2406007F */  li    $a2, 127
/* B6DCC4 800F6B24 0C03E890 */  jal   func_800FA240
/* B6DCC8 800F6B28 00003825 */   move  $a3, $zero
/* B6DCCC 800F6B2C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6DCD0 800F6B30 27BD0020 */  addiu $sp, $sp, 0x20
/* B6DCD4 800F6B34 03E00008 */  jr    $ra
/* B6DCD8 800F6B38 00000000 */   nop   


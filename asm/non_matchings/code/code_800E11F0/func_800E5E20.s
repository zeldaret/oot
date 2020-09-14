glabel func_800E5E20
/* B5CFC0 800E5E20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B5CFC4 800E5E24 AFA40020 */  sw    $a0, 0x20($sp)
/* B5CFC8 800E5E28 AFBF0014 */  sw    $ra, 0x14($sp)
/* B5CFCC 800E5E2C 3C048017 */  lui   $a0, %hi(gAudioContext+0x1e20) # $a0, 0x8017
/* B5CFD0 800E5E30 24840FA0 */  addiu $a0, %lo(gAudioContext+0x1e20) # addiu $a0, $a0, 0xfa0
/* B5CFD4 800E5E34 27A5001C */  addiu $a1, $sp, 0x1c
/* B5CFD8 800E5E38 0C000CA0 */  jal   osRecvMesg
/* B5CFDC 800E5E3C 00003025 */   move  $a2, $zero
/* B5CFE0 800E5E40 2401FFFF */  li    $at, -1
/* B5CFE4 800E5E44 14410004 */  bne   $v0, $at, .L800E5E58
/* B5CFE8 800E5E48 8FA30020 */   lw    $v1, 0x20($sp)
/* B5CFEC 800E5E4C AC600000 */  sw    $zero, ($v1)
/* B5CFF0 800E5E50 10000008 */  b     .L800E5E74
/* B5CFF4 800E5E54 00001025 */   move  $v0, $zero
.L800E5E58:
/* B5CFF8 800E5E58 8FAE001C */  lw    $t6, 0x1c($sp)
/* B5CFFC 800E5E5C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* B5D000 800E5E60 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* B5D004 800E5E64 01C17824 */  and   $t7, $t6, $at
/* B5D008 800E5E68 AC6F0000 */  sw    $t7, ($v1)
/* B5D00C 800E5E6C 8FA2001C */  lw    $v0, 0x1c($sp)
/* B5D010 800E5E70 00021602 */  srl   $v0, $v0, 0x18
.L800E5E74:
/* B5D014 800E5E74 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5D018 800E5E78 27BD0020 */  addiu $sp, $sp, 0x20
/* B5D01C 800E5E7C 03E00008 */  jr    $ra
/* B5D020 800E5E80 00000000 */   nop


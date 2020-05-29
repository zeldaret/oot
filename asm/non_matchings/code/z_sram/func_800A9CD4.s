glabel func_800A9CD4
/* B20E74 800A9CD4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B20E78 800A9CD8 AFBF0014 */  sw    $ra, 0x14($sp)
/* B20E7C 800A9CDC AFA5001C */  sw    $a1, 0x1c($sp)
/* B20E80 800A9CE0 3C068014 */  lui   $a2, %hi(D_80140F88) # $a2, 0x8014
/* B20E84 800A9CE4 24C60F88 */  addiu $a2, %lo(D_80140F88) # addiu $a2, $a2, 0xf88
/* B20E88 800A9CE8 34058000 */  li    $a1, 32768
/* B20E8C 800A9CEC 0C031521 */  jal   GameState_Alloc
/* B20E90 800A9CF0 2407050E */   li    $a3, 1294
/* B20E94 800A9CF4 8FAE001C */  lw    $t6, 0x1c($sp)
/* B20E98 800A9CF8 3C048014 */  lui   $a0, %hi(D_80140F94) # $a0, 0x8014
/* B20E9C 800A9CFC 14400006 */  bnez  $v0, .L800A9D18
/* B20EA0 800A9D00 ADC20000 */   sw    $v0, ($t6)
/* B20EA4 800A9D04 3C058014 */  lui   $a1, %hi(D_80140FAC) # $a1, 0x8014
/* B20EA8 800A9D08 24A50FAC */  addiu $a1, %lo(D_80140FAC) # addiu $a1, $a1, 0xfac
/* B20EAC 800A9D0C 24840F94 */  addiu $a0, %lo(D_80140F94) # addiu $a0, $a0, 0xf94
/* B20EB0 800A9D10 0C0007FC */  jal   __assert
/* B20EB4 800A9D14 2406050F */   li    $a2, 1295
.L800A9D18:
/* B20EB8 800A9D18 8FBF0014 */  lw    $ra, 0x14($sp)
/* B20EBC 800A9D1C 27BD0018 */  addiu $sp, $sp, 0x18
/* B20EC0 800A9D20 03E00008 */  jr    $ra
/* B20EC4 800A9D24 00000000 */   nop


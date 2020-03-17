.rdata
glabel D_8013AD60
    .asciz "../z_debug.c"
    .balign 4

glabel D_8013AD70
    .asciz "../z_debug.c"
    .balign 4

.text
glabel func_80063D7C
/* ADAF1C 80063D7C 27BDFF80 */  addiu $sp, $sp, -0x80
/* ADAF20 80063D80 AFB00018 */  sw    $s0, 0x18($sp)
/* ADAF24 80063D84 00808025 */  move  $s0, $a0
/* ADAF28 80063D88 AFBF001C */  sw    $ra, 0x1c($sp)
/* ADAF2C 80063D8C 3C068014 */  lui   $a2, %hi(D_8013AD60) # $a2, 0x8014
/* ADAF30 80063D90 24C6AD60 */  addiu $a2, %lo(D_8013AD60) # addiu $a2, $a2, -0x52a0
/* ADAF34 80063D94 02002825 */  move  $a1, $s0
/* ADAF38 80063D98 27A40030 */  addiu $a0, $sp, 0x30
/* ADAF3C 80063D9C 0C031AB1 */  jal   func_800C6AC4
/* ADAF40 80063DA0 24070274 */   li    $a3, 628
/* ADAF44 80063DA4 0C03EEE3 */  jal   GfxPrint_Ctor
/* ADAF48 80063DA8 27A40048 */   addiu $a0, $sp, 0x48
/* ADAF4C 80063DAC 8E0402C0 */  lw    $a0, 0x2c0($s0)
/* ADAF50 80063DB0 0C031B08 */  jal   func_800C6C20
/* ADAF54 80063DB4 AFA40078 */   sw    $a0, 0x78($sp)
/* ADAF58 80063DB8 8E0402B0 */  lw    $a0, 0x2b0($s0)
/* ADAF5C 80063DBC 3C0FDE00 */  lui   $t7, 0xde00
/* ADAF60 80063DC0 00402825 */  move  $a1, $v0
/* ADAF64 80063DC4 248E0008 */  addiu $t6, $a0, 8
/* ADAF68 80063DC8 AE0E02B0 */  sw    $t6, 0x2b0($s0)
/* ADAF6C 80063DCC AC820004 */  sw    $v0, 4($a0)
/* ADAF70 80063DD0 AC8F0000 */  sw    $t7, ($a0)
/* ADAF74 80063DD4 0C03EF07 */  jal   GfxPrint_Open
/* ADAF78 80063DD8 27A40048 */   addiu $a0, $sp, 0x48
/* ADAF7C 80063DDC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ADAF80 80063DE0 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ADAF84 80063DE4 24010001 */  li    $at, 1
/* ADAF88 80063DE8 84430194 */  lh    $v1, 0x194($v0)
/* ADAF8C 80063DEC 10610003 */  beq   $v1, $at, .L80063DFC
/* ADAF90 80063DF0 24010008 */   li    $at, 8
/* ADAF94 80063DF4 54610006 */  bnel  $v1, $at, .L80063E10
/* ADAF98 80063DF8 8C580000 */   lw    $t8, ($v0)
.L80063DFC:
/* ADAF9C 80063DFC 0C018E0A */  jal   func_80063828
/* ADAFA0 80063E00 27A40048 */   addiu $a0, $sp, 0x48
/* ADAFA4 80063E04 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* ADAFA8 80063E08 8C42FA90 */  lw    $v0, %lo(gGameInfo)($v0)
/* ADAFAC 80063E0C 8C580000 */  lw    $t8, ($v0)
.L80063E10:
/* ADAFB0 80063E10 13000003 */  beqz  $t8, .L80063E20
/* ADAFB4 80063E14 00000000 */   nop   
/* ADAFB8 80063E18 0C018F01 */  jal   func_80063C04
/* ADAFBC 80063E1C 27A40048 */   addiu $a0, $sp, 0x48
.L80063E20:
/* ADAFC0 80063E20 3C018012 */  lui   $at, %hi(D_8011E0B0) # $at, 0x8012
/* ADAFC4 80063E24 A420E0B0 */  sh    $zero, %lo(D_8011E0B0)($at)
/* ADAFC8 80063E28 0C03EF19 */  jal   GfxPrint_Close
/* ADAFCC 80063E2C 27A40048 */   addiu $a0, $sp, 0x48
/* ADAFD0 80063E30 3C19DF00 */  lui   $t9, 0xdf00
/* ADAFD4 80063E34 AC590000 */  sw    $t9, ($v0)
/* ADAFD8 80063E38 24450008 */  addiu $a1, $v0, 8
/* ADAFDC 80063E3C AC400004 */  sw    $zero, 4($v0)
/* ADAFE0 80063E40 AFA5007C */  sw    $a1, 0x7c($sp)
/* ADAFE4 80063E44 0C031B0A */  jal   func_800C6C28
/* ADAFE8 80063E48 8FA40078 */   lw    $a0, 0x78($sp)
/* ADAFEC 80063E4C 8FA5007C */  lw    $a1, 0x7c($sp)
/* ADAFF0 80063E50 3C068014 */  lui   $a2, %hi(D_8013AD70) # $a2, 0x8014
/* ADAFF4 80063E54 24C6AD70 */  addiu $a2, %lo(D_8013AD70) # addiu $a2, $a2, -0x5290
/* ADAFF8 80063E58 AE0502C0 */  sw    $a1, 0x2c0($s0)
/* ADAFFC 80063E5C 02002825 */  move  $a1, $s0
/* ADB000 80063E60 27A40030 */  addiu $a0, $sp, 0x30
/* ADB004 80063E64 0C031AD5 */  jal   func_800C6B54
/* ADB008 80063E68 24070298 */   li    $a3, 664
/* ADB00C 80063E6C 0C03EF05 */  jal   GfxPrint_Dtor
/* ADB010 80063E70 27A40048 */   addiu $a0, $sp, 0x48
/* ADB014 80063E74 8FBF001C */  lw    $ra, 0x1c($sp)
/* ADB018 80063E78 8FB00018 */  lw    $s0, 0x18($sp)
/* ADB01C 80063E7C 27BD0080 */  addiu $sp, $sp, 0x80
/* ADB020 80063E80 03E00008 */  jr    $ra
/* ADB024 80063E84 00000000 */   nop   

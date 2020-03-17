glabel func_8003DD6C
/* AB4F0C 8003DD6C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB4F10 8003DD70 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB4F14 8003DD74 AFA40038 */  sw    $a0, 0x38($sp)
/* AB4F18 8003DD78 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB4F1C 8003DD7C AFA60040 */  sw    $a2, 0x40($sp)
/* AB4F20 8003DD80 AFA70044 */  sw    $a3, 0x44($sp)
/* AB4F24 8003DD84 240E0001 */  li    $t6, 1
/* AB4F28 8003DD88 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB4F2C 8003DD8C 8FA70058 */  lw    $a3, 0x58($sp)
/* AB4F30 8003DD90 8FA60054 */  lw    $a2, 0x54($sp)
/* AB4F34 8003DD94 8FA50050 */  lw    $a1, 0x50($sp)
/* AB4F38 8003DD98 0C00F74A */  jal   func_8003DD28
/* AB4F3C 8003DD9C 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB4F40 8003DDA0 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB4F44 8003DDA4 44812000 */  mtc1  $at, $f4
/* AB4F48 8003DDA8 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB4F4C 8003DDAC 8FB80044 */  lw    $t8, 0x44($sp)
/* AB4F50 8003DDB0 8FB90048 */  lw    $t9, 0x48($sp)
/* AB4F54 8003DDB4 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB4F58 8003DDB8 8FA40038 */  lw    $a0, 0x38($sp)
/* AB4F5C 8003DDBC 24050001 */  li    $a1, 1
/* AB4F60 8003DDC0 00003025 */  move  $a2, $zero
/* AB4F64 8003DDC4 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB4F68 8003DDC8 AFA00020 */  sw    $zero, 0x20($sp)
/* AB4F6C 8003DDCC AFA20028 */  sw    $v0, 0x28($sp)
/* AB4F70 8003DDD0 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB4F74 8003DDD4 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB4F78 8003DDD8 AFB80014 */  sw    $t8, 0x14($sp)
/* AB4F7C 8003DDDC AFB90018 */  sw    $t9, 0x18($sp)
/* AB4F80 8003DDE0 0C00F5FC */  jal   func_8003D7F0
/* AB4F84 8003DDE4 AFA8001C */   sw    $t0, 0x1c($sp)
/* AB4F88 8003DDE8 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB4F8C 8003DDEC 27BD0038 */  addiu $sp, $sp, 0x38
/* AB4F90 8003DDF0 03E00008 */  jr    $ra
/* AB4F94 8003DDF4 00000000 */   nop   

/* AB4F98 8003DDF8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB4F9C 8003DDFC AFBF0034 */  sw    $ra, 0x34($sp)
/* AB4FA0 8003DE00 AFA40038 */  sw    $a0, 0x38($sp)
/* AB4FA4 8003DE04 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB4FA8 8003DE08 AFA60040 */  sw    $a2, 0x40($sp)
/* AB4FAC 8003DE0C AFA70044 */  sw    $a3, 0x44($sp)
/* AB4FB0 8003DE10 240E0001 */  li    $t6, 1
/* AB4FB4 8003DE14 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB4FB8 8003DE18 8FA70058 */  lw    $a3, 0x58($sp)
/* AB4FBC 8003DE1C 8FA60054 */  lw    $a2, 0x54($sp)
/* AB4FC0 8003DE20 8FA50050 */  lw    $a1, 0x50($sp)
/* AB4FC4 8003DE24 0C00F74A */  jal   func_8003DD28
/* AB4FC8 8003DE28 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB4FCC 8003DE2C 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB4FD0 8003DE30 44812000 */  mtc1  $at, $f4
/* AB4FD4 8003DE34 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB4FD8 8003DE38 8FB80044 */  lw    $t8, 0x44($sp)
/* AB4FDC 8003DE3C 8FB90048 */  lw    $t9, 0x48($sp)
/* AB4FE0 8003DE40 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB4FE4 8003DE44 8FA40038 */  lw    $a0, 0x38($sp)
/* AB4FE8 8003DE48 00002825 */  move  $a1, $zero
/* AB4FEC 8003DE4C 24060001 */  li    $a2, 1
/* AB4FF0 8003DE50 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB4FF4 8003DE54 AFA00020 */  sw    $zero, 0x20($sp)
/* AB4FF8 8003DE58 AFA20028 */  sw    $v0, 0x28($sp)
/* AB4FFC 8003DE5C AFAF0010 */  sw    $t7, 0x10($sp)
/* AB5000 8003DE60 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB5004 8003DE64 AFB80014 */  sw    $t8, 0x14($sp)
/* AB5008 8003DE68 AFB90018 */  sw    $t9, 0x18($sp)
/* AB500C 8003DE6C 0C00F5FC */  jal   func_8003D7F0
/* AB5010 8003DE70 AFA8001C */   sw    $t0, 0x1c($sp)
/* AB5014 8003DE74 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB5018 8003DE78 27BD0038 */  addiu $sp, $sp, 0x38
/* AB501C 8003DE7C 03E00008 */  jr    $ra
/* AB5020 8003DE80 00000000 */   nop   
glabel func_8003DE84
/* AB5024 8003DE84 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB5028 8003DE88 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB502C 8003DE8C AFA40038 */  sw    $a0, 0x38($sp)
/* AB5030 8003DE90 AFA5003C */  sw    $a1, 0x3c($sp)
/* AB5034 8003DE94 AFA60040 */  sw    $a2, 0x40($sp)
/* AB5038 8003DE98 AFA70044 */  sw    $a3, 0x44($sp)
/* AB503C 8003DE9C 240E0001 */  li    $t6, 1
/* AB5040 8003DEA0 AFAE0010 */  sw    $t6, 0x10($sp)
/* AB5044 8003DEA4 8FA70058 */  lw    $a3, 0x58($sp)
/* AB5048 8003DEA8 8FA60054 */  lw    $a2, 0x54($sp)
/* AB504C 8003DEAC 8FA50050 */  lw    $a1, 0x50($sp)
/* AB5050 8003DEB0 0C00F74A */  jal   func_8003DD28
/* AB5054 8003DEB4 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB5058 8003DEB8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB505C 8003DEBC 44812000 */  mtc1  $at, $f4
/* AB5060 8003DEC0 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB5064 8003DEC4 8FB80044 */  lw    $t8, 0x44($sp)
/* AB5068 8003DEC8 8FB90048 */  lw    $t9, 0x48($sp)
/* AB506C 8003DECC 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB5070 8003DED0 8FA40038 */  lw    $a0, 0x38($sp)
/* AB5074 8003DED4 24050002 */  li    $a1, 2
/* AB5078 8003DED8 00003025 */  move  $a2, $zero
/* AB507C 8003DEDC 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB5080 8003DEE0 AFA00020 */  sw    $zero, 0x20($sp)
/* AB5084 8003DEE4 AFA20028 */  sw    $v0, 0x28($sp)
/* AB5088 8003DEE8 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB508C 8003DEEC E7A40024 */  swc1  $f4, 0x24($sp)
/* AB5090 8003DEF0 AFB80014 */  sw    $t8, 0x14($sp)
/* AB5094 8003DEF4 AFB90018 */  sw    $t9, 0x18($sp)
/* AB5098 8003DEF8 0C00F5FC */  jal   func_8003D7F0
/* AB509C 8003DEFC AFA8001C */   sw    $t0, 0x1c($sp)
/* AB50A0 8003DF00 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB50A4 8003DF04 27BD0038 */  addiu $sp, $sp, 0x38
/* AB50A8 8003DF08 03E00008 */  jr    $ra
/* AB50AC 8003DF0C 00000000 */   nop   

glabel func_8003DF10
/* AB50B0 8003DF10 27BDFFC8 */  addiu $sp, $sp, -0x38
/* AB50B4 8003DF14 AFBF0034 */  sw    $ra, 0x34($sp)
/* AB50B8 8003DF18 AFA40038 */  sw    $a0, 0x38($sp)
/* AB50BC 8003DF1C AFA5003C */  sw    $a1, 0x3c($sp)
/* AB50C0 8003DF20 AFA60040 */  sw    $a2, 0x40($sp)
/* AB50C4 8003DF24 AFA70044 */  sw    $a3, 0x44($sp)
/* AB50C8 8003DF28 240E0001 */  li    $t6, 1
/* AB50CC 8003DF2C AFAE0010 */  sw    $t6, 0x10($sp)
/* AB50D0 8003DF30 8FA70058 */  lw    $a3, 0x58($sp)
/* AB50D4 8003DF34 8FA60054 */  lw    $a2, 0x54($sp)
/* AB50D8 8003DF38 8FA50050 */  lw    $a1, 0x50($sp)
/* AB50DC 8003DF3C 0C00F74A */  jal   func_8003DD28
/* AB50E0 8003DF40 8FA4004C */   lw    $a0, 0x4c($sp)
/* AB50E4 8003DF44 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* AB50E8 8003DF48 44812000 */  mtc1  $at, $f4
/* AB50EC 8003DF4C 8FAF0040 */  lw    $t7, 0x40($sp)
/* AB50F0 8003DF50 8FB80044 */  lw    $t8, 0x44($sp)
/* AB50F4 8003DF54 8FB90048 */  lw    $t9, 0x48($sp)
/* AB50F8 8003DF58 8FA8005C */  lw    $t0, 0x5c($sp)
/* AB50FC 8003DF5C 8FA90060 */  lw    $t1, 0x60($sp)
/* AB5100 8003DF60 8FA40038 */  lw    $a0, 0x38($sp)
/* AB5104 8003DF64 24050002 */  li    $a1, 2
/* AB5108 8003DF68 00003025 */  move  $a2, $zero
/* AB510C 8003DF6C 8FA7003C */  lw    $a3, 0x3c($sp)
/* AB5110 8003DF70 AFA20028 */  sw    $v0, 0x28($sp)
/* AB5114 8003DF74 AFAF0010 */  sw    $t7, 0x10($sp)
/* AB5118 8003DF78 E7A40024 */  swc1  $f4, 0x24($sp)
/* AB511C 8003DF7C AFB80014 */  sw    $t8, 0x14($sp)
/* AB5120 8003DF80 AFB90018 */  sw    $t9, 0x18($sp)
/* AB5124 8003DF84 AFA8001C */  sw    $t0, 0x1c($sp)
/* AB5128 8003DF88 0C00F5FC */  jal   func_8003D7F0
/* AB512C 8003DF8C AFA90020 */   sw    $t1, 0x20($sp)
/* AB5130 8003DF90 8FBF0034 */  lw    $ra, 0x34($sp)
/* AB5134 8003DF94 27BD0038 */  addiu $sp, $sp, 0x38
/* AB5138 8003DF98 03E00008 */  jr    $ra
/* AB513C 8003DF9C 00000000 */   nop   


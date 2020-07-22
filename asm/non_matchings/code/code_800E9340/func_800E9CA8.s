glabel func_800E9CA8
/* B60E48 800E9CA8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B60E4C 800E9CAC 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B60E50 800E9CB0 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B60E54 800E9CB4 AFB30024 */  sw    $s3, 0x24($sp)
/* B60E58 800E9CB8 3C138017 */  lui   $s3, %hi(D_80174D08) # $s3, 0x8017
/* B60E5C 800E9CBC 26734D08 */  addiu $s3, %lo(D_80174D08) # addiu $s3, $s3, 0x4d08
/* B60E60 800E9CC0 AFB40028 */  sw    $s4, 0x28($sp)
/* B60E64 800E9CC4 AFB20020 */  sw    $s2, 0x20($sp)
/* B60E68 800E9CC8 AFB1001C */  sw    $s1, 0x1c($sp)
/* B60E6C 800E9CCC AFB00018 */  sw    $s0, 0x18($sp)
/* B60E70 800E9CD0 3C108017 */  lui   $s0, %hi(gAudioContext) # $s0, 0x8017
/* B60E74 800E9CD4 3C118017 */  lui   $s1, %hi(D_80172CA0) # $s1, 0x8017
/* B60E78 800E9CD8 3C128017 */  lui   $s2, %hi(D_80172C30) # $s2, 0x8017
/* B60E7C 800E9CDC 3C148017 */  lui   $s4, %hi(D_80174CA0) # $s4, 0x8017
/* B60E80 800E9CE0 AFBF002C */  sw    $ra, 0x2c($sp)
/* B60E84 800E9CE4 AC535B88 */  sw    $s3, 0x5b88($v0)
/* B60E88 800E9CE8 AC535B8C */  sw    $s3, 0x5b8c($v0)
/* B60E8C 800E9CEC AC405B90 */  sw    $zero, 0x5b90($v0)
/* B60E90 800E9CF0 AC405B94 */  sw    $zero, 0x5b94($v0)
/* B60E94 800E9CF4 26944CA0 */  addiu $s4, %lo(D_80174CA0) # addiu $s4, $s4, 0x4ca0
/* B60E98 800E9CF8 26522C30 */  addiu $s2, %lo(D_80172C30) # addiu $s2, $s2, 0x2c30
/* B60E9C 800E9CFC 26312CA0 */  addiu $s1, %lo(D_80172CA0) # addiu $s1, $s1, 0x2ca0
/* B60EA0 800E9D00 2610F180 */  addiu $s0, %lo(gAudioContext) # addiu $s0, $s0, -0xe80
.L800E9D04:
/* B60EA4 800E9D04 AE123B28 */  sw    $s2, 0x3b28($s0)
/* B60EA8 800E9D08 AE003B20 */  sw    $zero, 0x3b20($s0)
/* B60EAC 800E9D0C 02602025 */  move  $a0, $s3
/* B60EB0 800E9D10 0C03A70A */  jal   Audio_AudioListPushBack
/* B60EB4 800E9D14 02202825 */   move  $a1, $s1
/* B60EB8 800E9D18 26310080 */  addiu $s1, $s1, 0x80
/* B60EBC 800E9D1C 26100080 */  addiu $s0, $s0, 0x80
/* B60EC0 800E9D20 1634FFF8 */  bne   $s1, $s4, .L800E9D04
/* B60EC4 800E9D24 26520080 */   addiu $s2, $s2, 0x80
/* B60EC8 800E9D28 8FBF002C */  lw    $ra, 0x2c($sp)
/* B60ECC 800E9D2C 8FB00018 */  lw    $s0, 0x18($sp)
/* B60ED0 800E9D30 8FB1001C */  lw    $s1, 0x1c($sp)
/* B60ED4 800E9D34 8FB20020 */  lw    $s2, 0x20($sp)
/* B60ED8 800E9D38 8FB30024 */  lw    $s3, 0x24($sp)
/* B60EDC 800E9D3C 8FB40028 */  lw    $s4, 0x28($sp)
/* B60EE0 800E9D40 03E00008 */  jr    $ra
/* B60EE4 800E9D44 27BD0030 */   addiu $sp, $sp, 0x30


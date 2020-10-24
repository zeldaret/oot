glabel func_800E3A14
/* B5ABB4 800E3A14 3C038017 */  lui   $v1, %hi(gAudioContext) # $v1, 0x8017
/* B5ABB8 800E3A18 3C028017 */  lui   $v0, %hi(gAudioContext+0x580) # $v0, 0x8017
/* B5ABBC 800E3A1C 2442F700 */  addiu $v0, %lo(gAudioContext+0x580) # addiu $v0, $v0, -0x900
/* B5ABC0 800E3A20 2463F180 */  addiu $v1, %lo(gAudioContext) # addiu $v1, $v1, -0xe80
.L800E3A24:
/* B5ABC4 800E3A24 24630160 */  addiu $v1, $v1, 0x160
/* B5ABC8 800E3A28 A0601668 */  sb    $zero, 0x1668($v1)
/* B5ABCC 800E3A2C A06016C0 */  sb    $zero, 0x16c0($v1)
/* B5ABD0 800E3A30 A0601718 */  sb    $zero, 0x1718($v1)
/* B5ABD4 800E3A34 1462FFFB */  bne   $v1, $v0, .L800E3A24
/* B5ABD8 800E3A38 A0601610 */   sb    $zero, 0x1610($v1)
/* B5ABDC 800E3A3C 03E00008 */  jr    $ra
/* B5ABE0 800E3A40 00000000 */   nop


glabel func_800E59F4
/* B5CB94 800E59F4 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5CB98 800E59F8 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5CB9C 800E59FC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B5CBA0 800E5A00 3C0E8017 */  lui   $t6, %hi(D_80174D70)
/* B5CBA4 800E5A04 3C0F8017 */  lui   $t7, %hi(D_80174D88) # $t7, 0x8017
/* B5CBA8 800E5A08 3C188017 */  lui   $t8, %hi(D_80174DA0) # $t8, 0x8017
/* B5CBAC 800E5A0C AFBF0014 */  sw    $ra, 0x14($sp)
/* B5CBB0 800E5A10 25C44D70 */  addiu $a0, $t6, %lo(D_80174D70)
/* B5CBB4 800E5A14 25EF4D88 */  addiu $t7, %lo(D_80174D88) # addiu $t7, $t7, 0x4d88
/* B5CBB8 800E5A18 27184DA0 */  addiu $t8, %lo(D_80174DA0) # addiu $t8, $t8, 0x4da0
/* B5CBBC 800E5A1C 3C058017 */  lui   $a1, %hi(D_80174DB8) # $a1, 0x8017
/* B5CBC0 800E5A20 A0405BD8 */  sb    $zero, 0x5bd8($v0)
/* B5CBC4 800E5A24 A0405BD9 */  sb    $zero, 0x5bd9($v0)
/* B5CBC8 800E5A28 A0405BDA */  sb    $zero, 0x5bda($v0)
/* B5CBCC 800E5A2C AC445BE8 */  sw    $a0, 0x5be8($v0)
/* B5CBD0 800E5A30 AC4F5BEC */  sw    $t7, 0x5bec($v0)
/* B5CBD4 800E5A34 AC585BE4 */  sw    $t8, 0x5be4($v0)
/* B5CBD8 800E5A38 24A54DB8 */  addiu $a1, %lo(D_80174DB8) # addiu $a1, $a1, 0x4db8
/* B5CBDC 800E5A3C 0C001874 */  jal   osCreateMesgQueue
/* B5CBE0 800E5A40 24060001 */   li    $a2, 1
/* B5CBE4 800E5A44 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5CBE8 800E5A48 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5CBEC 800E5A4C 3C058017 */  lui   $a1, %hi(D_80174DC0) # $a1, 0x8017
/* B5CBF0 800E5A50 24A54DC0 */  addiu $a1, %lo(D_80174DC0) # addiu $a1, $a1, 0x4dc0
/* B5CBF4 800E5A54 8C445BEC */  lw    $a0, 0x5bec($v0)
/* B5CBF8 800E5A58 0C001874 */  jal   osCreateMesgQueue
/* B5CBFC 800E5A5C 24060004 */   li    $a2, 4
/* B5CC00 800E5A60 3C028017 */  lui   $v0, %hi(gAudioContext) # $v0, 0x8017
/* B5CC04 800E5A64 2442F180 */  addiu $v0, %lo(gAudioContext) # addiu $v0, $v0, -0xe80
/* B5CC08 800E5A68 3C058017 */  lui   $a1, %hi(D_80174DBC) # $a1, 0x8017
/* B5CC0C 800E5A6C 24A54DBC */  addiu $a1, %lo(D_80174DBC) # addiu $a1, $a1, 0x4dbc
/* B5CC10 800E5A70 8C445BE4 */  lw    $a0, 0x5be4($v0)
/* B5CC14 800E5A74 0C001874 */  jal   osCreateMesgQueue
/* B5CC18 800E5A78 24060001 */   li    $a2, 1
/* B5CC1C 800E5A7C 8FBF0014 */  lw    $ra, 0x14($sp)
/* B5CC20 800E5A80 27BD0018 */  addiu $sp, $sp, 0x18
/* B5CC24 800E5A84 03E00008 */  jr    $ra
/* B5CC28 800E5A88 00000000 */   nop


glabel EnFloormas_Draw
/* 02D44 80A1A254 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 02D48 80A1A258 AFB10028 */  sw      $s1, 0x0028($sp)
/* 02D4C 80A1A25C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02D50 80A1A260 AFBF002C */  sw      $ra, 0x002C($sp)
/* 02D54 80A1A264 AFB00024 */  sw      $s0, 0x0024($sp)
/* 02D58 80A1A268 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 02D5C 80A1A26C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02D60 80A1A270 3C0680A2 */  lui     $a2, %hi(D_80A1A514)       ## $a2 = 80A20000
/* 02D64 80A1A274 24C6A514 */  addiu   $a2, $a2, %lo(D_80A1A514)  ## $a2 = 80A1A514
/* 02D68 80A1A278 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 02D6C 80A1A27C 2407090E */  addiu   $a3, $zero, 0x090E         ## $a3 = 0000090E
/* 02D70 80A1A280 0C031AB1 */  jal     func_800C6AC4
/* 02D74 80A1A284 AFA50048 */  sw      $a1, 0x0048($sp)
/* 02D78 80A1A288 0C024F46 */  jal     func_80093D18
/* 02D7C 80A1A28C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 02D80 80A1A290 920E02DC */  lbu     $t6, 0x02DC($s0)           ## 000002DC
/* 02D84 80A1A294 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02D88 80A1A298 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02D8C 80A1A29C 15C1000A */  bne     $t6, $at, .L80A1A2C8
/* 02D90 80A1A2A0 3C0580A2 */  lui     $a1, %hi(D_80A1A4F4)       ## $a1 = 80A20000
/* 02D94 80A1A2A4 86060196 */  lh      $a2, 0x0196($s0)           ## 00000196
/* 02D98 80A1A2A8 24010028 */  addiu   $at, $zero, 0x0028         ## $at = 00000028
/* 02D9C 80A1A2AC 24A5A4F4 */  addiu   $a1, $a1, %lo(D_80A1A4F4)  ## $a1 = 80A1A4F4
/* 02DA0 80A1A2B0 00C1001A */  div     $zero, $a2, $at
/* 02DA4 80A1A2B4 00003010 */  mfhi    $a2
/* 02DA8 80A1A2B8 00063400 */  sll     $a2, $a2, 16
/* 02DAC 80A1A2BC 00063403 */  sra     $a2, $a2, 16
/* 02DB0 80A1A2C0 0C00988C */  jal     func_80026230
/* 02DB4 80A1A2C4 24070028 */  addiu   $a3, $zero, 0x0028         ## $a3 = 00000028
.L80A1A2C8:
/* 02DB8 80A1A2C8 8E050150 */  lw      $a1, 0x0150($s0)           ## 00000150
/* 02DBC 80A1A2CC 8E06016C */  lw      $a2, 0x016C($s0)           ## 0000016C
/* 02DC0 80A1A2D0 9207014E */  lbu     $a3, 0x014E($s0)           ## 0000014E
/* 02DC4 80A1A2D4 8FB90048 */  lw      $t9, 0x0048($sp)
/* 02DC8 80A1A2D8 3C0F80A2 */  lui     $t7, %hi(func_80A1A128)    ## $t7 = 80A20000
/* 02DCC 80A1A2DC 3C1880A2 */  lui     $t8, %hi(func_80A1A160)    ## $t8 = 80A20000
/* 02DD0 80A1A2E0 2718A160 */  addiu   $t8, $t8, %lo(func_80A1A160) ## $t8 = 80A1A160
/* 02DD4 80A1A2E4 25EFA128 */  addiu   $t7, $t7, %lo(func_80A1A128) ## $t7 = 80A1A128
/* 02DD8 80A1A2E8 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 02DDC 80A1A2EC AFB80014 */  sw      $t8, 0x0014($sp)
/* 02DE0 80A1A2F0 AFB00018 */  sw      $s0, 0x0018($sp)
/* 02DE4 80A1A2F4 8F2802C0 */  lw      $t0, 0x02C0($t9)           ## 000002C0
/* 02DE8 80A1A2F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02DEC 80A1A2FC 0C0289CF */  jal     SkelAnime_DrawSV2
/* 02DF0 80A1A300 AFA8001C */  sw      $t0, 0x001C($sp)
/* 02DF4 80A1A304 8FA90048 */  lw      $t1, 0x0048($sp)
/* 02DF8 80A1A308 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 02DFC 80A1A30C AD2202C0 */  sw      $v0, 0x02C0($t1)           ## 000002C0
/* 02E00 80A1A310 920A02DC */  lbu     $t2, 0x02DC($s0)           ## 000002DC
/* 02E04 80A1A314 15410003 */  bne     $t2, $at, .L80A1A324
/* 02E08 80A1A318 00000000 */  nop
/* 02E0C 80A1A31C 0C009982 */  jal     func_80026608
/* 02E10 80A1A320 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L80A1A324:
/* 02E14 80A1A324 3C0680A2 */  lui     $a2, %hi(D_80A1A528)       ## $a2 = 80A20000
/* 02E18 80A1A328 24C6A528 */  addiu   $a2, $a2, %lo(D_80A1A528)  ## $a2 = 80A1A528
/* 02E1C 80A1A32C 27A40038 */  addiu   $a0, $sp, 0x0038           ## $a0 = FFFFFFE8
/* 02E20 80A1A330 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 02E24 80A1A334 0C031AD5 */  jal     func_800C6B54
/* 02E28 80A1A338 24070924 */  addiu   $a3, $zero, 0x0924         ## $a3 = 00000924
/* 02E2C 80A1A33C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 02E30 80A1A340 8FB00024 */  lw      $s0, 0x0024($sp)
/* 02E34 80A1A344 8FB10028 */  lw      $s1, 0x0028($sp)
/* 02E38 80A1A348 03E00008 */  jr      $ra
/* 02E3C 80A1A34C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000



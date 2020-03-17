glabel func_800C3CB8
/* B3AE58 800C3CB8 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3AE5C 800C3CBC 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3AE60 800C3CC0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* B3AE64 800C3CC4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B3AE68 800C3CC8 AFB00018 */  sw    $s0, 0x18($sp)
/* B3AE6C 800C3CCC 85CF00FC */  lh    $t7, 0xfc($t6)
/* B3AE70 800C3CD0 00808025 */  move  $s0, $a0
/* B3AE74 800C3CD4 24180002 */  li    $t8, 2
/* B3AE78 800C3CD8 19E00002 */  blez  $t7, .L800C3CE4
/* B3AE7C 800C3CDC 02005025 */   move  $t2, $s0
/* B3AE80 800C3CE0 AC800070 */  sw    $zero, 0x70($a0)
.L800C3CE4:
/* B3AE84 800C3CE4 8E020070 */  lw    $v0, 0x70($s0)
/* B3AE88 800C3CE8 260C00AC */  addiu $t4, $s0, 0xac
/* B3AE8C 800C3CEC 10400019 */  beqz  $v0, .L800C3D54
/* B3AE90 800C3CF0 00404825 */   move  $t1, $v0
/* B3AE94 800C3CF4 AE000008 */  sw    $zero, 8($s0)
/* B3AE98 800C3CF8 AE180010 */  sw    $t8, 0x10($s0)
/* B3AE9C 800C3CFC AE000014 */  sw    $zero, 0x14($s0)
/* B3AEA0 800C3D00 244B003C */  addiu $t3, $v0, 0x3c
.L800C3D04:
/* B3AEA4 800C3D04 8D280000 */  lw    $t0, ($t1)
/* B3AEA8 800C3D08 2529000C */  addiu $t1, $t1, 0xc
/* B3AEAC 800C3D0C 254A000C */  addiu $t2, $t2, 0xc
/* B3AEB0 800C3D10 AD48000C */  sw    $t0, 0xc($t2)
/* B3AEB4 800C3D14 8D39FFF8 */  lw    $t9, -8($t1)
/* B3AEB8 800C3D18 AD590010 */  sw    $t9, 0x10($t2)
/* B3AEBC 800C3D1C 8D28FFFC */  lw    $t0, -4($t1)
/* B3AEC0 800C3D20 152BFFF8 */  bne   $t1, $t3, .L800C3D04
/* B3AEC4 800C3D24 AD480014 */   sw    $t0, 0x14($t2)
/* B3AEC8 800C3D28 8D280000 */  lw    $t0, ($t1)
/* B3AECC 800C3D2C 26050008 */  addiu $a1, $s0, 8
/* B3AED0 800C3D30 24060001 */  li    $a2, 1
/* B3AED4 800C3D34 AD480018 */  sw    $t0, 0x18($t2)
/* B3AED8 800C3D38 8E040004 */  lw    $a0, 4($s0)
/* B3AEDC 800C3D3C AE0C0058 */  sw    $t4, 0x58($s0)
/* B3AEE0 800C3D40 AE00005C */  sw    $zero, 0x5c($s0)
/* B3AEE4 800C3D44 0C000C18 */  jal   osSendMesg
/* B3AEE8 800C3D48 24840038 */   addiu $a0, $a0, 0x38
/* B3AEEC 800C3D4C 0C03257E */  jal   func_800C95F8
/* B3AEF0 800C3D50 8E040004 */   lw    $a0, 4($s0)
.L800C3D54:
/* B3AEF4 800C3D54 0C001A78 */  jal   osGetTime
/* B3AEF8 800C3D58 00000000 */   nop   
/* B3AEFC 800C3D5C 3C0D8017 */  lui   $t5, %hi(D_8016A550) # $t5, 0x8017
/* B3AF00 800C3D60 25ADA550 */  addiu $t5, %lo(D_8016A550) # addiu $t5, $t5, -0x5ab0
/* B3AF04 800C3D64 ADA20000 */  sw    $v0, ($t5)
/* B3AF08 800C3D68 ADA30004 */  sw    $v1, 4($t5)
/* B3AF0C 800C3D6C 3C0E8016 */  lui   $t6, %hi(gGameInfo) # $t6, 0x8016
/* B3AF10 800C3D70 8DCEFA90 */  lw    $t6, %lo(gGameInfo)($t6)
/* B3AF14 800C3D74 85CF00FC */  lh    $t7, 0xfc($t6)
/* B3AF18 800C3D78 29E10002 */  slti  $at, $t7, 2
/* B3AF1C 800C3D7C 14200003 */  bnez  $at, .L800C3D8C
/* B3AF20 800C3D80 00000000 */   nop   
/* B3AF24 800C3D84 10000004 */  b     .L800C3D98
/* B3AF28 800C3D88 AFA00024 */   sw    $zero, 0x24($sp)
.L800C3D8C:
/* B3AF2C 800C3D8C 0C0393F8 */  jal   func_800E4FE0
/* B3AF30 800C3D90 00000000 */   nop   
/* B3AF34 800C3D94 AFA20024 */  sw    $v0, 0x24($sp)
.L800C3D98:
/* B3AF38 800C3D98 0C001A78 */  jal   osGetTime
/* B3AF3C 800C3D9C 00000000 */   nop   
/* B3AF40 800C3DA0 3C188017 */  lui   $t8, %hi(D_8016A550) # $t8, 0x8017
/* B3AF44 800C3DA4 2718A550 */  addiu $t8, %lo(D_8016A550) # addiu $t8, $t8, -0x5ab0
/* B3AF48 800C3DA8 8F0A0000 */  lw    $t2, ($t8)
/* B3AF4C 800C3DAC 8F0B0004 */  lw    $t3, 4($t8)
/* B3AF50 800C3DB0 3C198017 */  lui   $t9, %hi(D_8016A558) # $t9, 0x8017
/* B3AF54 800C3DB4 2739A558 */  addiu $t9, %lo(D_8016A558) # addiu $t9, $t9, -0x5aa8
/* B3AF58 800C3DB8 8F2C0000 */  lw    $t4, ($t9)
/* B3AF5C 800C3DBC 8F2D0004 */  lw    $t5, 4($t9)
/* B3AF60 800C3DC0 004A4023 */  subu  $t0, $v0, $t2
/* B3AF64 800C3DC4 006B082B */  sltu  $at, $v1, $t3
/* B3AF68 800C3DC8 006B4823 */  subu  $t1, $v1, $t3
/* B3AF6C 800C3DCC 01014023 */  subu  $t0, $t0, $at
/* B3AF70 800C3DD0 012D7821 */  addu  $t7, $t1, $t5
/* B3AF74 800C3DD4 01ED082B */  sltu  $at, $t7, $t5
/* B3AF78 800C3DD8 00287021 */  addu  $t6, $at, $t0
/* B3AF7C 800C3DDC 3C018017 */  lui   $at, %hi(D_8016A558) # $at, 0x8017
/* B3AF80 800C3DE0 01CC7021 */  addu  $t6, $t6, $t4
/* B3AF84 800C3DE4 AC2EA558 */  sw    $t6, %lo(D_8016A558)($at)
/* B3AF88 800C3DE8 3C018017 */  lui   $at, %hi(D_8016A55C) # $at, 0x8017
/* B3AF8C 800C3DEC AC2FA55C */  sw    $t7, %lo(D_8016A55C)($at)
/* B3AF90 800C3DF0 240A0000 */  li    $t2, 0
/* B3AF94 800C3DF4 AF0A0000 */  sw    $t2, ($t8)
/* B3AF98 800C3DF8 240B0000 */  li    $t3, 0
/* B3AF9C 800C3DFC AF0B0004 */  sw    $t3, 4($t8)
/* B3AFA0 800C3E00 8E190070 */  lw    $t9, 0x70($s0)
/* B3AFA4 800C3E04 260400AC */  addiu $a0, $s0, 0xac
/* B3AFA8 800C3E08 00002825 */  move  $a1, $zero
/* B3AFAC 800C3E0C 53200006 */  beql  $t9, $zero, .L800C3E28
/* B3AFB0 800C3E10 8FA80024 */   lw    $t0, 0x24($sp)
/* B3AFB4 800C3E14 0C000CA0 */  jal   osRecvMesg
/* B3AFB8 800C3E18 24060001 */   li    $a2, 1
/* B3AFBC 800C3E1C 0C030F20 */  jal   func_800C3C80
/* B3AFC0 800C3E20 02002025 */   move  $a0, $s0
/* B3AFC4 800C3E24 8FA80024 */  lw    $t0, 0x24($sp)
.L800C3E28:
/* B3AFC8 800C3E28 AE080070 */  sw    $t0, 0x70($s0)
/* B3AFCC 800C3E2C 8FBF001C */  lw    $ra, 0x1c($sp)
/* B3AFD0 800C3E30 8FB00018 */  lw    $s0, 0x18($sp)
/* B3AFD4 800C3E34 27BD0028 */  addiu $sp, $sp, 0x28
/* B3AFD8 800C3E38 03E00008 */  jr    $ra
/* B3AFDC 800C3E3C 00000000 */   nop   


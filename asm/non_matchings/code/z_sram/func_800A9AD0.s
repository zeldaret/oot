glabel func_800A9AD0
/* B20C70 800A9AD0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B20C74 800A9AD4 AFA40030 */  sw    $a0, 0x30($sp)
/* B20C78 800A9AD8 AFBF002C */  sw    $ra, 0x2c($sp)
/* B20C7C 800A9ADC AFB1001C */  sw    $s1, 0x1c($sp)
/* B20C80 800A9AE0 3C048014 */  lui   $a0, %hi(D_80140E98) # $a0, 0x8014
/* B20C84 800A9AE4 00A08825 */  move  $s1, $a1
/* B20C88 800A9AE8 AFB40028 */  sw    $s4, 0x28($sp)
/* B20C8C 800A9AEC AFB30024 */  sw    $s3, 0x24($sp)
/* B20C90 800A9AF0 AFB20020 */  sw    $s2, 0x20($sp)
/* B20C94 800A9AF4 AFB00018 */  sw    $s0, 0x18($sp)
/* B20C98 800A9AF8 0C00084C */  jal   osSyncPrintf
/* B20C9C 800A9AFC 24840E98 */   addiu $a0, %lo(D_80140E98) # addiu $a0, $a0, 0xe98
/* B20CA0 800A9B00 3C040800 */  lui   $a0, 0x800
/* B20CA4 800A9B04 8E250000 */  lw    $a1, ($s1)
/* B20CA8 800A9B08 34068000 */  li    $a2, 32768
/* B20CAC 800A9B0C 0C02A7A8 */  jal   Sram_ReadWrite
/* B20CB0 800A9B10 00003825 */   move  $a3, $zero
/* B20CB4 800A9B14 3C148014 */  lui   $s4, %hi(D_80140EC4) # $s4, 0x8014
/* B20CB8 800A9B18 3C138016 */  lui   $s3, %hi(gSaveContext) # $s3, 0x8016
/* B20CBC 800A9B1C 3C128013 */  lui   $s2, %hi(D_8012A4EC) # $s2, 0x8013
/* B20CC0 800A9B20 2652A4EC */  addiu $s2, %lo(D_8012A4EC) # addiu $s2, $s2, -0x5b14
/* B20CC4 800A9B24 2673E660 */  addiu $s3, %lo(gSaveContext) # addiu $s3, $s3, -0x19a0
/* B20CC8 800A9B28 26940EC4 */  addiu $s4, %lo(D_80140EC4) # addiu $s4, $s4, 0xec4
/* B20CCC 800A9B2C 00008025 */  move  $s0, $zero
/* B20CD0 800A9B30 8E230000 */  lw    $v1, ($s1)
/* B20CD4 800A9B34 00001025 */  move  $v0, $zero
.L800A9B38:
/* B20CD8 800A9B38 02427021 */  addu  $t6, $s2, $v0
/* B20CDC 800A9B3C 0062C021 */  addu  $t8, $v1, $v0
/* B20CE0 800A9B40 93190003 */  lbu   $t9, 3($t8)
/* B20CE4 800A9B44 91CF0003 */  lbu   $t7, 3($t6)
/* B20CE8 800A9B48 51F90011 */  beql  $t7, $t9, .L800A9B90
/* B20CEC 800A9B4C 26100001 */   addiu $s0, $s0, 1
/* B20CF0 800A9B50 0C00084C */  jal   osSyncPrintf
/* B20CF4 800A9B54 02802025 */   move  $a0, $s4
/* B20CF8 800A9B58 8E280000 */  lw    $t0, ($s1)
/* B20CFC 800A9B5C 02402825 */  move  $a1, $s2
/* B20D00 800A9B60 2406000C */  li    $a2, 12
/* B20D04 800A9B64 91090002 */  lbu   $t1, 2($t0)
/* B20D08 800A9B68 A2691409 */  sb    $t1, 0x1409($s3)
/* B20D0C 800A9B6C 0C01A508 */  jal   MemCopy
/* B20D10 800A9B70 8E240000 */   lw    $a0, ($s1)
/* B20D14 800A9B74 926A1409 */  lbu   $t2, 0x1409($s3)
/* B20D18 800A9B78 8E2B0000 */  lw    $t3, ($s1)
/* B20D1C 800A9B7C 02202025 */  move  $a0, $s1
/* B20D20 800A9B80 0C02A6A7 */  jal   func_800A9A9C
/* B20D24 800A9B84 A16A0002 */   sb    $t2, 2($t3)
/* B20D28 800A9B88 8E230000 */  lw    $v1, ($s1)
/* B20D2C 800A9B8C 26100001 */  addiu $s0, $s0, 1
.L800A9B90:
/* B20D30 800A9B90 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20D34 800A9B94 2E010009 */  sltiu $at, $s0, 9
/* B20D38 800A9B98 1420FFE7 */  bnez  $at, .L800A9B38
/* B20D3C 800A9B9C 02001025 */   move  $v0, $s0
/* B20D40 800A9BA0 906C0000 */  lbu   $t4, ($v1)
/* B20D44 800A9BA4 318D0003 */  andi  $t5, $t4, 3
/* B20D48 800A9BA8 A26D140A */  sb    $t5, 0x140a($s3)
/* B20D4C 800A9BAC 8E2E0000 */  lw    $t6, ($s1)
/* B20D50 800A9BB0 91D80001 */  lbu   $t8, 1($t6)
/* B20D54 800A9BB4 330F0001 */  andi  $t7, $t8, 1
/* B20D58 800A9BB8 A26F140C */  sb    $t7, 0x140c($s3)
/* B20D5C 800A9BBC 8E390000 */  lw    $t9, ($s1)
/* B20D60 800A9BC0 93280002 */  lbu   $t0, 2($t9)
/* B20D64 800A9BC4 310900FF */  andi  $t1, $t0, 0xff
/* B20D68 800A9BC8 29210003 */  slti  $at, $t1, 3
/* B20D6C 800A9BCC 14200006 */  bnez  $at, .L800A9BE8
/* B20D70 800A9BD0 A2681409 */   sb    $t0, 0x1409($s3)
/* B20D74 800A9BD4 A2601409 */  sb    $zero, 0x1409($s3)
/* B20D78 800A9BD8 8E2B0000 */  lw    $t3, ($s1)
/* B20D7C 800A9BDC 02202025 */  move  $a0, $s1
/* B20D80 800A9BE0 0C02A6A7 */  jal   func_800A9A9C
/* B20D84 800A9BE4 A1600002 */   sb    $zero, 2($t3)
.L800A9BE8:
/* B20D88 800A9BE8 8FAC0030 */  lw    $t4, 0x30($sp)
/* B20D8C 800A9BEC 34058000 */  li    $a1, 32768
/* B20D90 800A9BF0 958D0044 */  lhu   $t5, 0x44($t4)
/* B20D94 800A9BF4 31AE0100 */  andi  $t6, $t5, 0x100
/* B20D98 800A9BF8 11C00014 */  beqz  $t6, .L800A9C4C
/* B20D9C 800A9BFC 00000000 */   nop   
/* B20DA0 800A9C00 0C001114 */  jal   bzero
/* B20DA4 800A9C04 8E240000 */   lw    $a0, ($s1)
/* B20DA8 800A9C08 00008025 */  move  $s0, $zero
/* B20DAC 800A9C0C 8E380000 */  lw    $t8, ($s1)
.L800A9C10:
/* B20DB0 800A9C10 03107821 */  addu  $t7, $t8, $s0
/* B20DB4 800A9C14 A1F00000 */  sb    $s0, ($t7)
/* B20DB8 800A9C18 26100001 */  addiu $s0, $s0, 1
/* B20DBC 800A9C1C 3210FFFF */  andi  $s0, $s0, 0xffff
/* B20DC0 800A9C20 2E0109AA */  sltiu $at, $s0, 0x9aa
/* B20DC4 800A9C24 5420FFFA */  bnezl $at, .L800A9C10
/* B20DC8 800A9C28 8E380000 */   lw    $t8, ($s1)
/* B20DCC 800A9C2C 3C040800 */  lui   $a0, 0x800
/* B20DD0 800A9C30 8E250000 */  lw    $a1, ($s1)
/* B20DD4 800A9C34 34068000 */  li    $a2, 32768
/* B20DD8 800A9C38 0C02A7A8 */  jal   Sram_ReadWrite
/* B20DDC 800A9C3C 24070001 */   li    $a3, 1
/* B20DE0 800A9C40 3C048014 */  lui   $a0, %hi(D_80140EE0) # $a0, 0x8014
/* B20DE4 800A9C44 0C00084C */  jal   osSyncPrintf
/* B20DE8 800A9C48 24840EE0 */   addiu $a0, %lo(D_80140EE0) # addiu $a0, $a0, 0xee0
.L800A9C4C:
/* B20DEC 800A9C4C 3C048014 */  lui   $a0, %hi(D_80140EFC) # $a0, 0x8014
/* B20DF0 800A9C50 24840EFC */  addiu $a0, %lo(D_80140EFC) # addiu $a0, $a0, 0xefc
/* B20DF4 800A9C54 24051338 */  li    $a1, 4920
/* B20DF8 800A9C58 24060004 */  li    $a2, 4
/* B20DFC 800A9C5C 0C00084C */  jal   osSyncPrintf
/* B20E00 800A9C60 2407133C */   li    $a3, 4924
/* B20E04 800A9C64 3C048014 */  lui   $a0, %hi(D_80140F28) # $a0, 0x8014
/* B20E08 800A9C68 0C00084C */  jal   osSyncPrintf
/* B20E0C 800A9C6C 24840F28 */   addiu $a0, %lo(D_80140F28) # addiu $a0, $a0, 0xf28
/* B20E10 800A9C70 3C048014 */  lui   $a0, %hi(D_80140F30) # $a0, 0x8014
/* B20E14 800A9C74 24840F30 */  addiu $a0, %lo(D_80140F30) # addiu $a0, $a0, 0xf30
/* B20E18 800A9C78 0C00084C */  jal   osSyncPrintf
/* B20E1C 800A9C7C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E20 800A9C80 3C048014 */  lui   $a0, %hi(D_80140F4C) # $a0, 0x8014
/* B20E24 800A9C84 24840F4C */  addiu $a0, %lo(D_80140F4C) # addiu $a0, $a0, 0xf4c
/* B20E28 800A9C88 0C00084C */  jal   osSyncPrintf
/* B20E2C 800A9C8C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E30 800A9C90 3C048014 */  lui   $a0, %hi(D_80140F68) # $a0, 0x8014
/* B20E34 800A9C94 24840F68 */  addiu $a0, %lo(D_80140F68) # addiu $a0, $a0, 0xf68
/* B20E38 800A9C98 0C00084C */  jal   osSyncPrintf
/* B20E3C 800A9C9C 9265140A */   lbu   $a1, 0x140a($s3)
/* B20E40 800A9CA0 3C048014 */  lui   $a0, %hi(D_80140F84) # $a0, 0x8014
/* B20E44 800A9CA4 0C00084C */  jal   osSyncPrintf
/* B20E48 800A9CA8 24840F84 */   addiu $a0, %lo(D_80140F84) # addiu $a0, $a0, 0xf84
/* B20E4C 800A9CAC 0C03D9C0 */  jal   func_800F6700
/* B20E50 800A9CB0 8264140A */   lb    $a0, 0x140a($s3)
/* B20E54 800A9CB4 8FBF002C */  lw    $ra, 0x2c($sp)
/* B20E58 800A9CB8 8FB00018 */  lw    $s0, 0x18($sp)
/* B20E5C 800A9CBC 8FB1001C */  lw    $s1, 0x1c($sp)
/* B20E60 800A9CC0 8FB20020 */  lw    $s2, 0x20($sp)
/* B20E64 800A9CC4 8FB30024 */  lw    $s3, 0x24($sp)
/* B20E68 800A9CC8 8FB40028 */  lw    $s4, 0x28($sp)
/* B20E6C 800A9CCC 03E00008 */  jr    $ra
/* B20E70 800A9CD0 27BD0030 */   addiu $sp, $sp, 0x30


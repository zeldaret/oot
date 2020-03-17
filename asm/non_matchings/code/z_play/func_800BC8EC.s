glabel func_800BC8EC
/* B33A8C 800BC8EC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B33A90 800BC8F0 AFBF001C */  sw    $ra, 0x1c($sp)
/* B33A94 800BC8F4 AFB00018 */  sw    $s0, 0x18($sp)
/* B33A98 800BC8F8 8C8E1C44 */  lw    $t6, 0x1c44($a0)
/* B33A9C 800BC8FC 3C028016 */  lui   $v0, %hi(gGameInfo) # $v0, 0x8016
/* B33AA0 800BC900 2442FA90 */  addiu $v0, %lo(gGameInfo) # addiu $v0, $v0, -0x570
/* B33AA4 800BC904 AFAE0028 */  sw    $t6, 0x28($sp)
/* B33AA8 800BC908 8C8F0000 */  lw    $t7, ($a0)
/* B33AAC 800BC90C 3C010001 */  lui   $at, (0x00012124 >> 16) # lui $at, 1
/* B33AB0 800BC910 00808025 */  move  $s0, $a0
/* B33AB4 800BC914 ADE002EC */  sw    $zero, 0x2ec($t7)
/* B33AB8 800BC918 8C980000 */  lw    $t8, ($a0)
/* B33ABC 800BC91C 34212124 */  ori   $at, (0x00012124 & 0xFFFF) # ori $at, $at, 0x2124
/* B33AC0 800BC920 00812021 */  addu  $a0, $a0, $at
/* B33AC4 800BC924 AF0002F0 */  sw    $zero, 0x2f0($t8)
/* B33AC8 800BC928 8C590000 */  lw    $t9, ($v0)
/* B33ACC 800BC92C A720018A */  sh    $zero, 0x18a($t9)
/* B33AD0 800BC930 8C480000 */  lw    $t0, ($v0)
/* B33AD4 800BC934 0C0303C2 */  jal   func_800C0F08
/* B33AD8 800BC938 A5000190 */   sh    $zero, 0x190($t0)
/* B33ADC 800BC93C 0C009C6A */  jal   func_800271A8
/* B33AE0 800BC940 02002025 */   move  $a0, $s0
/* B33AE4 800BC944 0C009D04 */  jal   Effect_SS_Clear
/* B33AE8 800BC948 02002025 */   move  $a0, $s0
/* B33AEC 800BC94C 3C010001 */  lui   $at, (0x00011E60 >> 16) # lui $at, 1
/* B33AF0 800BC950 34211E60 */  ori   $at, (0x00011E60 & 0xFFFF) # ori $at, $at, 0x1e60
/* B33AF4 800BC954 02012821 */  addu  $a1, $s0, $at
/* B33AF8 800BC958 0C017500 */  jal   func_8005D400
/* B33AFC 800BC95C 02002025 */   move  $a0, $s0
/* B33B00 800BC960 3C098016 */  lui   $t1, %hi(D_80161490) # $t1, 0x8016
/* B33B04 800BC964 8D291490 */  lw    $t1, %lo(D_80161490)($t1)
/* B33B08 800BC968 24010003 */  li    $at, 3
/* B33B0C 800BC96C 15210005 */  bne   $t1, $at, .L800BC984
/* B33B10 800BC970 3C048016 */   lui   $a0, %hi(D_801613B0) # $a0, 0x8016
/* B33B14 800BC974 0C02C76F */  jal   func_800B1DBC
/* B33B18 800BC978 248413B0 */   addiu $a0, %lo(D_801613B0) # addiu $a0, $a0, 0x13b0
/* B33B1C 800BC97C 3C018016 */  lui   $at, %hi(D_80161490) # $at, 0x8016
/* B33B20 800BC980 AC201490 */  sw    $zero, %lo(D_80161490)($at)
.L800BC984:
/* B33B24 800BC984 3C010001 */  lui   $at, 1
/* B33B28 800BC988 02015021 */  addu  $t2, $s0, $at
/* B33B2C 800BC98C AFAA0024 */  sw    $t2, 0x24($sp)
/* B33B30 800BC990 914C241B */  lbu   $t4, 0x241b($t2)
/* B33B34 800BC994 24010003 */  li    $at, 3
/* B33B38 800BC998 1581000B */  bne   $t4, $at, .L800BC9C8
/* B33B3C 800BC99C 00000000 */   nop   
/* B33B40 800BC9A0 8D5923F8 */  lw    $t9, 0x23f8($t2)
/* B33B44 800BC9A4 3C010001 */  lui   $at, (0x000121C8 >> 16) # lui $at, 1
/* B33B48 800BC9A8 342121C8 */  ori   $at, (0x000121C8 & 0xFFFF) # ori $at, $at, 0x21c8
/* B33B4C 800BC9AC 0320F809 */  jalr  $t9
/* B33B50 800BC9B0 02012021 */  addu  $a0, $s0, $at
/* B33B54 800BC9B4 0C02F223 */  jal   func_800BC88C
/* B33B58 800BC9B8 02002025 */   move  $a0, $s0
/* B33B5C 800BC9BC 3C010001 */  lui   $at, 1
/* B33B60 800BC9C0 00300821 */  addu  $at, $at, $s0
/* B33B64 800BC9C4 A020241B */  sb    $zero, 0x241b($at)
.L800BC9C8:
/* B33B68 800BC9C8 0C02CE5A */  jal   func_800B3968
/* B33B6C 800BC9CC 00000000 */   nop   
/* B33B70 800BC9D0 3C010001 */  lui   $at, (0x0001241C >> 16) # lui $at, 1
/* B33B74 800BC9D4 3421241C */  ori   $at, (0x0001241C & 0xFFFF) # ori $at, $at, 0x241c
/* B33B78 800BC9D8 0C02CD58 */  jal   func_800B3560
/* B33B7C 800BC9DC 02012021 */   addu  $a0, $s0, $at
/* B33B80 800BC9E0 3C048016 */  lui   $a0, %hi(D_80161498) # $a0, 0x8016
/* B33B84 800BC9E4 0C02B415 */  jal   func_800AD054
/* B33B88 800BC9E8 24841498 */   addiu $a0, %lo(D_80161498) # addiu $a0, $a0, 0x1498
/* B33B8C 800BC9EC 8FAE0024 */  lw    $t6, 0x24($sp)
/* B33B90 800BC9F0 3C0D8016 */  lui   $t5, %hi(gSaveContext+4) # $t5, 0x8016
/* B33B94 800BC9F4 8DADE664 */  lw    $t5, %lo(gSaveContext+4)($t5)
/* B33B98 800BC9F8 91CF1DE8 */  lbu   $t7, 0x1de8($t6)
/* B33B9C 800BC9FC 51AF0007 */  beql  $t5, $t7, .L800BCA1C
/* B33BA0 800BCA00 26041C24 */   addiu $a0, $s0, 0x1c24
/* B33BA4 800BCA04 0C0211B8 */  jal   Inventory_SwapAgeEquipment
/* B33BA8 800BCA08 00000000 */   nop   
/* B33BAC 800BCA0C 02002025 */  move  $a0, $s0
/* B33BB0 800BCA10 0C023B2B */  jal   func_8008ECAC
/* B33BB4 800BCA14 8FA50028 */   lw    $a1, 0x28($sp)
/* B33BB8 800BCA18 26041C24 */  addiu $a0, $s0, 0x1c24
.L800BCA1C:
/* B33BBC 800BCA1C 0C00C70F */  jal   func_80031C3C
/* B33BC0 800BCA20 02002825 */   move  $a1, $s0
/* B33BC4 800BCA24 0C044264 */  jal   func_80110990
/* B33BC8 800BCA28 02002025 */   move  $a0, $s0
/* B33BCC 800BCA2C 0C02F04E */  jal   KaleidoScopeCall_Destroy
/* B33BD0 800BCA30 02002025 */   move  $a0, $s0
/* B33BD4 800BCA34 0C02EFAC */  jal   KaleidoManager_Destroy
/* B33BD8 800BCA38 00000000 */   nop   
/* B33BDC 800BCA3C 0C01EC8F */  jal   ZeldaArena_Cleanup
/* B33BE0 800BCA40 00000000 */   nop   
/* B33BE4 800BCA44 3C048016 */  lui   $a0, %hi(D_801614B8) # $a0, 0x8016
/* B33BE8 800BCA48 0C0350B0 */  jal   Fault_RemoveClient
/* B33BEC 800BCA4C 248414B8 */   addiu $a0, %lo(D_801614B8) # addiu $a0, $a0, 0x14b8
/* B33BF0 800BCA50 8FBF001C */  lw    $ra, 0x1c($sp)
/* B33BF4 800BCA54 8FB00018 */  lw    $s0, 0x18($sp)
/* B33BF8 800BCA58 27BD0030 */  addiu $sp, $sp, 0x30
/* B33BFC 800BCA5C 03E00008 */  jr    $ra
/* B33C00 800BCA60 00000000 */   nop   


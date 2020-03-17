glabel func_8002A2A4
/* AA1444 8002A2A4 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1448 8002A2A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA144C 8002A2AC AFA40058 */  sw    $a0, 0x58($sp)
/* AA1450 8002A2B0 AFA60060 */  sw    $a2, 0x60($sp)
/* AA1454 8002A2B4 AFA70064 */  sw    $a3, 0x64($sp)
/* AA1458 8002A2B8 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA145C 8002A2BC 27A40020 */   addiu $a0, $sp, 0x20
/* AA1460 8002A2C0 27A40030 */  addiu $a0, $sp, 0x30
/* AA1464 8002A2C4 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1468 8002A2C8 8FA50064 */   lw    $a1, 0x64($sp)
/* AA146C 8002A2CC 27A4003C */  addiu $a0, $sp, 0x3c
/* AA1470 8002A2D0 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1474 8002A2D4 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1478 8002A2D8 27A40048 */  addiu $a0, $sp, 0x48
/* AA147C 8002A2DC 0C01E218 */  jal   Color_RGBA8_Copy
/* AA1480 8002A2E0 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1484 8002A2E4 27A4004C */  addiu $a0, $sp, 0x4c
/* AA1488 8002A2E8 0C01E218 */  jal   Color_RGBA8_Copy
/* AA148C 8002A2EC 8FA50070 */   lw    $a1, 0x70($sp)
/* AA1490 8002A2F0 C7A40060 */  lwc1  $f4, 0x60($sp)
/* AA1494 8002A2F4 8FAE0074 */  lw    $t6, 0x74($sp)
/* AA1498 8002A2F8 240F0001 */  li    $t7, 1
/* AA149C 8002A2FC A7AF0054 */  sh    $t7, 0x54($sp)
/* AA14A0 8002A300 8FA40058 */  lw    $a0, 0x58($sp)
/* AA14A4 8002A304 2405001B */  li    $a1, 27
/* AA14A8 8002A308 24060080 */  li    $a2, 128
/* AA14AC 8002A30C 27A7001C */  addiu $a3, $sp, 0x1c
/* AA14B0 8002A310 E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA14B4 8002A314 0C009DE6 */  jal   func_80027798
/* AA14B8 8002A318 AFAE0050 */   sw    $t6, 0x50($sp)
/* AA14BC 8002A31C 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA14C0 8002A320 27BD0058 */  addiu $sp, $sp, 0x58
/* AA14C4 8002A324 03E00008 */  jr    $ra
/* AA14C8 8002A328 00000000 */   nop   


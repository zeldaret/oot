glabel func_8002A32C
/* AA14CC 8002A32C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* AA14D0 8002A330 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA14D4 8002A334 AFA40050 */  sw    $a0, 0x50($sp)
/* AA14D8 8002A338 AFA50054 */  sw    $a1, 0x54($sp)
/* AA14DC 8002A33C AFA7005C */  sw    $a3, 0x5c($sp)
/* AA14E0 8002A340 00C02825 */  move  $a1, $a2
/* AA14E4 8002A344 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA14E8 8002A348 27A40020 */   addiu $a0, $sp, 0x20
/* AA14EC 8002A34C 27A40030 */  addiu $a0, $sp, 0x30
/* AA14F0 8002A350 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA14F4 8002A354 8FA50060 */   lw    $a1, 0x60($sp)
/* AA14F8 8002A358 27A4003E */  addiu $a0, $sp, 0x3e
/* AA14FC 8002A35C 0C01E218 */  jal   Color_RGBA8_Copy
/* AA1500 8002A360 8FA50068 */   lw    $a1, 0x68($sp)
/* AA1504 8002A364 27A40042 */  addiu $a0, $sp, 0x42
/* AA1508 8002A368 0C01E218 */  jal   Color_RGBA8_Copy
/* AA150C 8002A36C 8FA5006C */   lw    $a1, 0x6c($sp)
/* AA1510 8002A370 87AE0066 */  lh    $t6, 0x66($sp)
/* AA1514 8002A374 8FAF0054 */  lw    $t7, 0x54($sp)
/* AA1518 8002A378 C7A4005C */  lwc1  $f4, 0x5c($sp)
/* AA151C 8002A37C 87B80072 */  lh    $t8, 0x72($sp)
/* AA1520 8002A380 87B90076 */  lh    $t9, 0x76($sp)
/* AA1524 8002A384 8FA80078 */  lw    $t0, 0x78($sp)
/* AA1528 8002A388 8FA40050 */  lw    $a0, 0x50($sp)
/* AA152C 8002A38C 2405001C */  li    $a1, 28
/* AA1530 8002A390 24060080 */  li    $a2, 128
/* AA1534 8002A394 27A7001C */  addiu $a3, $sp, 0x1c
/* AA1538 8002A398 A7AE003C */  sh    $t6, 0x3c($sp)
/* AA153C 8002A39C AFAF001C */  sw    $t7, 0x1c($sp)
/* AA1540 8002A3A0 E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA1544 8002A3A4 A7B80046 */  sh    $t8, 0x46($sp)
/* AA1548 8002A3A8 A7B90048 */  sh    $t9, 0x48($sp)
/* AA154C 8002A3AC 0C009DE6 */  jal   EffectSs_Spawn
/* AA1550 8002A3B0 AFA8004C */   sw    $t0, 0x4c($sp)
/* AA1554 8002A3B4 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1558 8002A3B8 27BD0050 */  addiu $sp, $sp, 0x50
/* AA155C 8002A3BC 03E00008 */  jr    $ra
/* AA1560 8002A3C0 00000000 */   nop   


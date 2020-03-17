glabel func_8002A140
/* AA12E0 8002A140 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA12E4 8002A144 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA12E8 8002A148 AFA40058 */  sw    $a0, 0x58($sp)
/* AA12EC 8002A14C AFA5005C */  sw    $a1, 0x5c($sp)
/* AA12F0 8002A150 AFA5001C */  sw    $a1, 0x1c($sp)
/* AA12F4 8002A154 AFA70064 */  sw    $a3, 0x64($sp)
/* AA12F8 8002A158 00C02825 */  move  $a1, $a2
/* AA12FC 8002A15C 0C01DF90 */  jal   Math_Vec3f_Copy
/* AA1300 8002A160 27A40020 */   addiu $a0, $sp, 0x20
/* AA1304 8002A164 8FA4005C */  lw    $a0, 0x5c($sp)
/* AA1308 8002A168 87AF0066 */  lh    $t7, 0x66($sp)
/* AA130C 8002A16C 87B8006A */  lh    $t8, 0x6a($sp)
/* AA1310 8002A170 87B9006E */  lh    $t9, 0x6e($sp)
/* AA1314 8002A174 87A80072 */  lh    $t0, 0x72($sp)
/* AA1318 8002A178 87A90076 */  lh    $t1, 0x76($sp)
/* AA131C 8002A17C 87AA007A */  lh    $t2, 0x7a($sp)
/* AA1320 8002A180 87AB007E */  lh    $t3, 0x7e($sp)
/* AA1324 8002A184 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AA1328 8002A188 A7A00054 */  sh    $zero, 0x54($sp)
/* AA132C 8002A18C A3AF0048 */  sb    $t7, 0x48($sp)
/* AA1330 8002A190 A3B80049 */  sb    $t8, 0x49($sp)
/* AA1334 8002A194 A3B9004A */  sb    $t9, 0x4a($sp)
/* AA1338 8002A198 A3A8004B */  sb    $t0, 0x4b($sp)
/* AA133C 8002A19C A3A9004C */  sb    $t1, 0x4c($sp)
/* AA1340 8002A1A0 A3AA004D */  sb    $t2, 0x4d($sp)
/* AA1344 8002A1A4 A3AB004E */  sb    $t3, 0x4e($sp)
/* AA1348 8002A1A8 10800003 */  beqz  $a0, .L8002A1B8
/* AA134C 8002A1AC E7A4002C */   swc1  $f4, 0x2c($sp)
/* AA1350 8002A1B0 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA1354 8002A1B4 24050874 */   li    $a1, 2164
.L8002A1B8:
/* AA1358 8002A1B8 8FA40058 */  lw    $a0, 0x58($sp)
/* AA135C 8002A1BC 2405001B */  li    $a1, 27
/* AA1360 8002A1C0 24060050 */  li    $a2, 80
/* AA1364 8002A1C4 0C009DE6 */  jal   func_80027798
/* AA1368 8002A1C8 27A7001C */   addiu $a3, $sp, 0x1c
/* AA136C 8002A1CC 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1370 8002A1D0 27BD0058 */  addiu $sp, $sp, 0x58
/* AA1374 8002A1D4 03E00008 */  jr    $ra
/* AA1378 8002A1D8 00000000 */   nop   


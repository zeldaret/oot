glabel func_8002A1DC
/* AA137C 8002A1DC 27BDFFA8 */  addiu $sp, $sp, -0x58
/* AA1380 8002A1E0 AFBF0014 */  sw    $ra, 0x14($sp)
/* AA1384 8002A1E4 AFA40058 */  sw    $a0, 0x58($sp)
/* AA1388 8002A1E8 AFA5005C */  sw    $a1, 0x5c($sp)
/* AA138C 8002A1EC AFA70064 */  sw    $a3, 0x64($sp)
/* AA1390 8002A1F0 AFA5001C */  sw    $a1, 0x1c($sp)
/* AA1394 8002A1F4 84CF0000 */  lh    $t7, ($a2)
/* AA1398 8002A1F8 87A8006A */  lh    $t0, 0x6a($sp)
/* AA139C 8002A1FC 87A9006E */  lh    $t1, 0x6e($sp)
/* AA13A0 8002A200 448F2000 */  mtc1  $t7, $f4
/* AA13A4 8002A204 87AA0072 */  lh    $t2, 0x72($sp)
/* AA13A8 8002A208 87AB0076 */  lh    $t3, 0x76($sp)
/* AA13AC 8002A20C 468021A0 */  cvt.s.w $f6, $f4
/* AA13B0 8002A210 87AC007A */  lh    $t4, 0x7a($sp)
/* AA13B4 8002A214 87AD007E */  lh    $t5, 0x7e($sp)
/* AA13B8 8002A218 C7A40080 */  lwc1  $f4, 0x80($sp)
/* AA13BC 8002A21C 00073C00 */  sll   $a3, $a3, 0x10
/* AA13C0 8002A220 00073C03 */  sra   $a3, $a3, 0x10
/* AA13C4 8002A224 E7A60020 */  swc1  $f6, 0x20($sp)
/* AA13C8 8002A228 84D80002 */  lh    $t8, 2($a2)
/* AA13CC 8002A22C 00A02025 */  move  $a0, $a1
/* AA13D0 8002A230 44984000 */  mtc1  $t8, $f8
/* AA13D4 8002A234 00000000 */  nop   
/* AA13D8 8002A238 468042A0 */  cvt.s.w $f10, $f8
/* AA13DC 8002A23C E7AA0024 */  swc1  $f10, 0x24($sp)
/* AA13E0 8002A240 84D90004 */  lh    $t9, 4($a2)
/* AA13E4 8002A244 A3A70048 */  sb    $a3, 0x48($sp)
/* AA13E8 8002A248 A7A00054 */  sh    $zero, 0x54($sp)
/* AA13EC 8002A24C 44998000 */  mtc1  $t9, $f16
/* AA13F0 8002A250 A3A80049 */  sb    $t0, 0x49($sp)
/* AA13F4 8002A254 A3A9004A */  sb    $t1, 0x4a($sp)
/* AA13F8 8002A258 468084A0 */  cvt.s.w $f18, $f16
/* AA13FC 8002A25C A3AA004B */  sb    $t2, 0x4b($sp)
/* AA1400 8002A260 A3AB004C */  sb    $t3, 0x4c($sp)
/* AA1404 8002A264 A3AC004D */  sb    $t4, 0x4d($sp)
/* AA1408 8002A268 A3AD004E */  sb    $t5, 0x4e($sp)
/* AA140C 8002A26C E7A4002C */  swc1  $f4, 0x2c($sp)
/* AA1410 8002A270 10A00003 */  beqz  $a1, .L8002A280
/* AA1414 8002A274 E7B20028 */   swc1  $f18, 0x28($sp)
/* AA1418 8002A278 0C00BE0A */  jal   Audio_PlayActorSound2
/* AA141C 8002A27C 24050874 */   li    $a1, 2164
.L8002A280:
/* AA1420 8002A280 8FA40058 */  lw    $a0, 0x58($sp)
/* AA1424 8002A284 2405001B */  li    $a1, 27
/* AA1428 8002A288 24060050 */  li    $a2, 80
/* AA142C 8002A28C 0C009DE6 */  jal   func_80027798
/* AA1430 8002A290 27A7001C */   addiu $a3, $sp, 0x1c
/* AA1434 8002A294 8FBF0014 */  lw    $ra, 0x14($sp)
/* AA1438 8002A298 27BD0058 */  addiu $sp, $sp, 0x58
/* AA143C 8002A29C 03E00008 */  jr    $ra
/* AA1440 8002A2A0 00000000 */   nop   


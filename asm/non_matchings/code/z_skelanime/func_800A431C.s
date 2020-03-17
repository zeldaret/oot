glabel func_800A431C
/* B1B4BC 800A431C 44876000 */  mtc1  $a3, $f12
/* B1B4C0 800A4320 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B4C4 800A4324 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B4C8 800A4328 4600610D */  trunc.w.s $f4, $f12
/* B1B4CC 800A432C 00A08025 */  move  $s0, $a1
/* B1B4D0 800A4330 AFA60038 */  sw    $a2, 0x38($sp)
/* B1B4D4 800A4334 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B4D8 800A4338 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B4DC 800A433C 8E0F0020 */  lw    $t7, 0x20($s0)
/* B1B4E0 800A4340 00C02825 */  move  $a1, $a2
/* B1B4E4 800A4344 44062000 */  mfc1  $a2, $f4
/* B1B4E8 800A4348 92070000 */  lbu   $a3, ($s0)
/* B1B4EC 800A434C 0C028CDB */  jal   func_800A336C
/* B1B4F0 800A4350 AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B4F4 800A4354 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B4F8 800A4358 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B4FC 800A435C 2401FFF0 */  li    $at, -16
/* B1B500 800A4360 4600320D */  trunc.w.s $f8, $f6
/* B1B504 800A4364 2442000F */  addiu $v0, $v0, 0xf
/* B1B508 800A4368 00411024 */  and   $v0, $v0, $at
/* B1B50C 800A436C 92070000 */  lbu   $a3, ($s0)
/* B1B510 800A4370 44064000 */  mfc1  $a2, $f8
/* B1B514 800A4374 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B518 800A4378 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B51C 800A437C 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B520 800A4380 0C028CDB */  jal   func_800A336C
/* B1B524 800A4384 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B528 800A4388 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B52C 800A438C 92050000 */  lbu   $a1, ($s0)
/* B1B530 800A4390 8E060020 */  lw    $a2, 0x20($s0)
/* B1B534 800A4394 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B538 800A4398 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B53C 800A439C 0C028D37 */  jal   func_800A34DC
/* B1B540 800A43A0 E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B544 800A43A4 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B548 800A43A8 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B54C 800A43AC 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B550 800A43B0 03E00008 */  jr    $ra
/* B1B554 800A43B4 00000000 */   nop   


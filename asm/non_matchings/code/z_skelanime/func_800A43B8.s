glabel func_800A43B8
/* B1B558 800A43B8 44876000 */  mtc1  $a3, $f12
/* B1B55C 800A43BC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* B1B560 800A43C0 AFB00020 */  sw    $s0, 0x20($sp)
/* B1B564 800A43C4 4600610D */  trunc.w.s $f4, $f12
/* B1B568 800A43C8 00A08025 */  move  $s0, $a1
/* B1B56C 800A43CC AFA60038 */  sw    $a2, 0x38($sp)
/* B1B570 800A43D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* B1B574 800A43D4 AFA40030 */  sw    $a0, 0x30($sp)
/* B1B578 800A43D8 8E0F0024 */  lw    $t7, 0x24($s0)
/* B1B57C 800A43DC 00C02825 */  move  $a1, $a2
/* B1B580 800A43E0 44062000 */  mfc1  $a2, $f4
/* B1B584 800A43E4 92070000 */  lbu   $a3, ($s0)
/* B1B588 800A43E8 0C028CDB */  jal   func_800A336C
/* B1B58C 800A43EC AFAF0010 */   sw    $t7, 0x10($sp)
/* B1B590 800A43F0 C7A60044 */  lwc1  $f6, 0x44($sp)
/* B1B594 800A43F4 8FA2004C */  lw    $v0, 0x4c($sp)
/* B1B598 800A43F8 2401FFF0 */  li    $at, -16
/* B1B59C 800A43FC 4600320D */  trunc.w.s $f8, $f6
/* B1B5A0 800A4400 2442000F */  addiu $v0, $v0, 0xf
/* B1B5A4 800A4404 00411024 */  and   $v0, $v0, $at
/* B1B5A8 800A4408 92070000 */  lbu   $a3, ($s0)
/* B1B5AC 800A440C 44064000 */  mfc1  $a2, $f8
/* B1B5B0 800A4410 AFA20028 */  sw    $v0, 0x28($sp)
/* B1B5B4 800A4414 AFA20010 */  sw    $v0, 0x10($sp)
/* B1B5B8 800A4418 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5BC 800A441C 0C028CDB */  jal   func_800A336C
/* B1B5C0 800A4420 8FA50040 */   lw    $a1, 0x40($sp)
/* B1B5C4 800A4424 C7AA0048 */  lwc1  $f10, 0x48($sp)
/* B1B5C8 800A4428 92050000 */  lbu   $a1, ($s0)
/* B1B5CC 800A442C 8E060024 */  lw    $a2, 0x24($s0)
/* B1B5D0 800A4430 8FA40030 */  lw    $a0, 0x30($sp)
/* B1B5D4 800A4434 8FA70028 */  lw    $a3, 0x28($sp)
/* B1B5D8 800A4438 0C028D37 */  jal   func_800A34DC
/* B1B5DC 800A443C E7AA0010 */   swc1  $f10, 0x10($sp)
/* B1B5E0 800A4440 8FBF0024 */  lw    $ra, 0x24($sp)
/* B1B5E4 800A4444 8FB00020 */  lw    $s0, 0x20($sp)
/* B1B5E8 800A4448 27BD0030 */  addiu $sp, $sp, 0x30
/* B1B5EC 800A444C 03E00008 */  jr    $ra
/* B1B5F0 800A4450 00000000 */   nop   


glabel func_800F5E18
/* B6CFB8 800F5E18 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B6CFBC 800F5E1C AFA40020 */  sw    $a0, 0x20($sp)
/* B6CFC0 800F5E20 93A20023 */  lbu   $v0, 0x23($sp)
/* B6CFC4 800F5E24 AFA7002C */  sw    $a3, 0x2c($sp)
/* B6CFC8 800F5E28 00073E00 */  sll   $a3, $a3, 0x18
/* B6CFCC 800F5E2C 00073E03 */  sra   $a3, $a3, 0x18
/* B6CFD0 800F5E30 30EF00FF */  andi  $t7, $a3, 0xff
/* B6CFD4 800F5E34 3C017000 */  lui   $at, 0x7000
/* B6CFD8 800F5E38 00021600 */  sll   $v0, $v0, 0x18
/* B6CFDC 800F5E3C 93A80033 */  lbu   $t0, 0x33($sp)
/* B6CFE0 800F5E40 00417025 */  or    $t6, $v0, $at
/* B6CFE4 800F5E44 000FC400 */  sll   $t8, $t7, 0x10
/* B6CFE8 800F5E48 AFBF0014 */  sw    $ra, 0x14($sp)
/* B6CFEC 800F5E4C 01D8C825 */  or    $t9, $t6, $t8
/* B6CFF0 800F5E50 AFA50024 */  sw    $a1, 0x24($sp)
/* B6CFF4 800F5E54 AFA60028 */  sw    $a2, 0x28($sp)
/* B6CFF8 800F5E58 AFA2001C */  sw    $v0, 0x1c($sp)
/* B6CFFC 800F5E5C 0C03E803 */  jal   Audio_SetBGM
/* B6D000 800F5E60 03282025 */   or    $a0, $t9, $t0
/* B6D004 800F5E64 93A9002B */  lbu   $t1, 0x2b($sp)
/* B6D008 800F5E68 8FA2001C */  lw    $v0, 0x1c($sp)
/* B6D00C 800F5E6C 97AC0026 */  lhu   $t4, 0x26($sp)
/* B6D010 800F5E70 00095400 */  sll   $t2, $t1, 0x10
/* B6D014 800F5E74 004A5825 */  or    $t3, $v0, $t2
/* B6D018 800F5E78 0C03E803 */  jal   Audio_SetBGM
/* B6D01C 800F5E7C 016C2025 */   or    $a0, $t3, $t4
/* B6D020 800F5E80 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6D024 800F5E84 27BD0020 */  addiu $sp, $sp, 0x20
/* B6D028 800F5E88 03E00008 */  jr    $ra
/* B6D02C 800F5E8C 00000000 */   nop   


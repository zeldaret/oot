glabel func_800EAF24
/* B620C4 800EAF24 27BDFFE0 */  addiu $sp, $sp, -0x20
/* B620C8 800EAF28 AFA50024 */  sw    $a1, 0x24($sp)
/* B620CC 800EAF2C 93A50027 */  lbu   $a1, 0x27($sp)
/* B620D0 800EAF30 AFBF0014 */  sw    $ra, 0x14($sp)
/* B620D4 800EAF34 AFA40020 */  sw    $a0, 0x20($sp)
/* B620D8 800EAF38 AFA60028 */  sw    $a2, 0x28($sp)
/* B620DC 800EAF3C AFA7002C */  sw    $a3, 0x2c($sp)
/* B620E0 800EAF40 90840007 */  lbu   $a0, 7($a0)
/* B620E4 800EAF44 0C039D26 */  jal   Audio_GetInstrumentInner
/* B620E8 800EAF48 AFA50018 */   sw    $a1, 0x18($sp)
/* B620EC 800EAF4C 8FA50018 */  lw    $a1, 0x18($sp)
/* B620F0 800EAF50 8FA60028 */  lw    $a2, 0x28($sp)
/* B620F4 800EAF54 8FA7002C */  lw    $a3, 0x2c($sp)
/* B620F8 800EAF58 14400004 */  bnez  $v0, .L800EAF6C
/* B620FC 800EAF5C 00401825 */   move  $v1, $v0
/* B62100 800EAF60 ACC00000 */  sw    $zero, ($a2)
/* B62104 800EAF64 10000008 */  b     .L800EAF88
/* B62108 800EAF68 00001025 */   move  $v0, $zero
.L800EAF6C:
/* B6210C 800EAF6C 8C6F0004 */  lw    $t7, 4($v1)
/* B62110 800EAF70 24A40002 */  addiu $a0, $a1, 2
/* B62114 800EAF74 308200FF */  andi  $v0, $a0, 0xff
/* B62118 800EAF78 ACEF0004 */  sw    $t7, 4($a3)
/* B6211C 800EAF7C 90780003 */  lbu   $t8, 3($v1)
/* B62120 800EAF80 A0F80000 */  sb    $t8, ($a3)
/* B62124 800EAF84 ACC30000 */  sw    $v1, ($a2)
.L800EAF88:
/* B62128 800EAF88 8FBF0014 */  lw    $ra, 0x14($sp)
/* B6212C 800EAF8C 27BD0020 */  addiu $sp, $sp, 0x20
/* B62130 800EAF90 03E00008 */  jr    $ra
/* B62134 800EAF94 00000000 */   nop   


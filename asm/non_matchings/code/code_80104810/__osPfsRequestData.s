glabel __osPfsRequestData
/* B7BB3C 8010499C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* B7BB40 801049A0 3C058017 */  lui   $a1, %hi(pifMempakBuf)
/* B7BB44 801049A4 3C018017 */  lui   $at, %hi(__osContLastPoll) # $at, 0x8017
/* B7BB48 801049A8 24A25960 */  addiu $v0, $a1, %lo(pifMempakBuf)
/* B7BB4C 801049AC AFA40010 */  sw    $a0, 0x10($sp)
/* B7BB50 801049B0 A0245810 */  sb    $a0, %lo(__osContLastPoll)($at)
/* B7BB54 801049B4 240F0001 */  li    $t7, 1
/* B7BB58 801049B8 AC4F003C */  sw    $t7, 0x3c($v0)
/* B7BB5C 801049BC 3C068017 */  lui   $a2, %hi(__osMaxControllers) # $a2, 0x8017
/* B7BB60 801049C0 24C65811 */  addiu $a2, %lo(__osMaxControllers) # addiu $a2, $a2, 0x5811
/* B7BB64 801049C4 90CD0000 */  lbu   $t5, ($a2)
/* B7BB68 801049C8 241800FF */  li    $t8, 255
/* B7BB6C 801049CC 24190001 */  li    $t9, 1
/* B7BB70 801049D0 24080003 */  li    $t0, 3
/* B7BB74 801049D4 240900FF */  li    $t1, 255
/* B7BB78 801049D8 240A00FF */  li    $t2, 255
/* B7BB7C 801049DC 240B00FF */  li    $t3, 255
/* B7BB80 801049E0 240C00FF */  li    $t4, 255
/* B7BB84 801049E4 A3B80004 */  sb    $t8, 4($sp)
/* B7BB88 801049E8 A3B90005 */  sb    $t9, 5($sp)
/* B7BB8C 801049EC A3A80006 */  sb    $t0, 6($sp)
/* B7BB90 801049F0 A3A40007 */  sb    $a0, 7($sp)
/* B7BB94 801049F4 A3A90008 */  sb    $t1, 8($sp)
/* B7BB98 801049F8 A3AA0009 */  sb    $t2, 9($sp)
/* B7BB9C 801049FC A3AB000A */  sb    $t3, 0xa($sp)
/* B7BBA0 80104A00 A3AC000B */  sb    $t4, 0xb($sp)
/* B7BBA4 80104A04 19A0000E */  blez  $t5, .L80104A40
/* B7BBA8 80104A08 00001825 */   move  $v1, $zero
/* B7BBAC 80104A0C 27A40004 */  addiu $a0, $sp, 4
/* B7BBB0 80104A10 8C810000 */  lw    $at, ($a0)
.L80104A14:
/* B7BBB4 80104A14 24630001 */  addiu $v1, $v1, 1
/* B7BBB8 80104A18 24420008 */  addiu $v0, $v0, 8
/* B7BBBC 80104A1C A841FFF8 */  swl   $at, -8($v0)
/* B7BBC0 80104A20 B841FFFB */  swr   $at, -5($v0)
/* B7BBC4 80104A24 8C8F0004 */  lw    $t7, 4($a0)
/* B7BBC8 80104A28 A84FFFFC */  swl   $t7, -4($v0)
/* B7BBCC 80104A2C B84FFFFF */  swr   $t7, -1($v0)
/* B7BBD0 80104A30 90D80000 */  lbu   $t8, ($a2)
/* B7BBD4 80104A34 0078082A */  slt   $at, $v1, $t8
/* B7BBD8 80104A38 5420FFF6 */  bnezl $at, .L80104A14
/* B7BBDC 80104A3C 8C810000 */   lw    $at, ($a0)
.L80104A40:
/* B7BBE0 80104A40 241900FE */  li    $t9, 254
/* B7BBE4 80104A44 A0590000 */  sb    $t9, ($v0)
/* B7BBE8 80104A48 03E00008 */  jr    $ra
/* B7BBEC 80104A4C 27BD0010 */   addiu $sp, $sp, 0x10


glabel __osPfsGetInitData
/* B7BBF0 80104A50 3C078017 */  lui   $a3, %hi(__osMaxControllers) # $a3, 0x8017
/* B7BBF4 80104A54 24E75811 */  addiu $a3, %lo(__osMaxControllers) # addiu $a3, $a3, 0x5811
/* B7BBF8 80104A58 90EE0000 */  lbu   $t6, ($a3)
/* B7BBFC 80104A5C 3C038017 */  lui   $v1, %hi(pifMempakBuf) # $v1, 0x8017
/* B7BC00 80104A60 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B7BC04 80104A64 00001025 */  move  $v0, $zero
/* B7BC08 80104A68 24635960 */  addiu $v1, %lo(pifMempakBuf) # addiu $v1, $v1, 0x5960
/* B7BC0C 80104A6C 19C00020 */  blez  $t6, .L80104AF0
/* B7BC10 80104A70 00003025 */   move  $a2, $zero
/* B7BC14 80104A74 27A8000C */  addiu $t0, $sp, 0xc
.L80104A78:
/* B7BC18 80104A78 88610000 */  lwl   $at, ($v1)
/* B7BC1C 80104A7C 98610003 */  lwr   $at, 3($v1)
/* B7BC20 80104A80 AD010000 */  sw    $at, ($t0)
/* B7BC24 80104A84 88780004 */  lwl   $t8, 4($v1)
/* B7BC28 80104A88 98780007 */  lwr   $t8, 7($v1)
/* B7BC2C 80104A8C AD180004 */  sw    $t8, 4($t0)
/* B7BC30 80104A90 93B9000E */  lbu   $t9, 0xe($sp)
/* B7BC34 80104A94 332900C0 */  andi  $t1, $t9, 0xc0
/* B7BC38 80104A98 00095103 */  sra   $t2, $t1, 4
/* B7BC3C 80104A9C 314B00FF */  andi  $t3, $t2, 0xff
/* B7BC40 80104AA0 1560000D */  bnez  $t3, .L80104AD8
/* B7BC44 80104AA4 A0AA0003 */   sb    $t2, 3($a1)
/* B7BC48 80104AA8 93AC0011 */  lbu   $t4, 0x11($sp)
/* B7BC4C 80104AAC 93AE0010 */  lbu   $t6, 0x10($sp)
/* B7BC50 80104AB0 24190001 */  li    $t9, 1
/* B7BC54 80104AB4 000C6A00 */  sll   $t5, $t4, 8
/* B7BC58 80104AB8 01AE7825 */  or    $t7, $t5, $t6
/* B7BC5C 80104ABC A4AF0000 */  sh    $t7, ($a1)
/* B7BC60 80104AC0 93B80012 */  lbu   $t8, 0x12($sp)
/* B7BC64 80104AC4 00D94804 */  sllv  $t1, $t9, $a2
/* B7BC68 80104AC8 00491025 */  or    $v0, $v0, $t1
/* B7BC6C 80104ACC 304A00FF */  andi  $t2, $v0, 0xff
/* B7BC70 80104AD0 01401025 */  move  $v0, $t2
/* B7BC74 80104AD4 A0B80002 */  sb    $t8, 2($a1)
.L80104AD8:
/* B7BC78 80104AD8 90EB0000 */  lbu   $t3, ($a3)
/* B7BC7C 80104ADC 24C60001 */  addiu $a2, $a2, 1
/* B7BC80 80104AE0 24630008 */  addiu $v1, $v1, 8
/* B7BC84 80104AE4 00CB082A */  slt   $at, $a2, $t3
/* B7BC88 80104AE8 1420FFE3 */  bnez  $at, .L80104A78
/* B7BC8C 80104AEC 24A50004 */   addiu $a1, $a1, 4
.L80104AF0:
/* B7BC90 80104AF0 A0820000 */  sb    $v0, ($a0)
/* B7BC94 80104AF4 03E00008 */  jr    $ra
/* B7BC98 80104AF8 27BD0018 */   addiu $sp, $sp, 0x18

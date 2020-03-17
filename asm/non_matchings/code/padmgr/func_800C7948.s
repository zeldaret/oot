glabel func_800C7948
/* B3EAE8 800C7948 90AE0000 */  lbu   $t6, ($a1)
/* B3EAEC 800C794C 240800F0 */  li    $t0, 240
/* B3EAF0 800C7950 A08E02B2 */  sb    $t6, 0x2b2($a0)
/* B3EAF4 800C7954 90AF0001 */  lbu   $t7, 1($a1)
/* B3EAF8 800C7958 A08F02B3 */  sb    $t7, 0x2b3($a0)
/* B3EAFC 800C795C 90B80002 */  lbu   $t8, 2($a1)
/* B3EB00 800C7960 A09802B4 */  sb    $t8, 0x2b4($a0)
/* B3EB04 800C7964 90B90003 */  lbu   $t9, 3($a1)
/* B3EB08 800C7968 A09902B5 */  sb    $t9, 0x2b5($a0)
/* B3EB0C 800C796C 03E00008 */  jr    $ra
/* B3EB10 800C7970 A088045D */   sb    $t0, 0x45d($a0)


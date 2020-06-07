glabel func_80AC0A88
/* 00428 80AC0A88 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 0042C 80AC0A8C C484000C */  lwc1    $f4, 0x000C($a0)           ## 0000000C
/* 00430 80AC0A90 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00434 80AC0A94 3C1880AC */  lui     $t8, %hi(func_80AC0F08)    ## $t8 = 80AC0000
/* 00438 80AC0A98 27180F08 */  addiu   $t8, $t8, %lo(func_80AC0F08) ## $t8 = 80AC0F08
/* 0043C 80AC0A9C 01C17824 */  and     $t7, $t6, $at              
/* 00440 80AC0AA0 AC800134 */  sw      $zero, 0x0134($a0)         ## 00000134
/* 00444 80AC0AA4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00448 80AC0AA8 AC980190 */  sw      $t8, 0x0190($a0)           ## 00000190
/* 0044C 80AC0AAC 03E00008 */  jr      $ra                        
/* 00450 80AC0AB0 E4840028 */  swc1    $f4, 0x0028($a0)           ## 00000028

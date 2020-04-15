glabel EnGanonMant_Init
/* 00000 80A23D60 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00004 80A23D64 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00008 80A23D68 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0000C 80A23D6C 01C17824 */  and     $t7, $t6, $at              
/* 00010 80A23D70 03E00008 */  jr      $ra                        
/* 00014 80A23D74 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004

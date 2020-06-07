glabel func_80A5BFD8
/* 00CE8 80A5BFD8 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00CEC 80A5BFDC 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00CF0 80A5BFE0 AC8E0380 */  sw      $t6, 0x0380($a0)           ## 00000380
/* 00CF4 80A5BFE4 03E00008 */  jr      $ra                        
/* 00CF8 80A5BFE8 A4800384 */  sh      $zero, 0x0384($a0)         ## 00000384

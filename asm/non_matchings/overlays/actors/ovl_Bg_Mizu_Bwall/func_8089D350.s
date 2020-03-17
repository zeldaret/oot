glabel func_8089D350
/* 00ED0 8089D350 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 00ED4 8089D354 8C8202B0 */  lw      $v0, 0x02B0($a0)           ## 000002B0
/* 00ED8 8089D358 3C0F808A */  lui     $t7, %hi(func_8089D37C)    ## $t7 = 808A0000
/* 00EDC 8089D35C 25EFD37C */  addiu   $t7, $t7, %lo(func_8089D37C) ## $t7 = 8089D37C
/* 00EE0 8089D360 18400003 */  blez    $v0, .L8089D370            
/* 00EE4 8089D364 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00EE8 8089D368 03E00008 */  jr      $ra                        
/* 00EEC 8089D36C AC8E02B0 */  sw      $t6, 0x02B0($a0)           ## 000002B0
.L8089D370:
/* 00EF0 8089D370 AC8F0298 */  sw      $t7, 0x0298($a0)           ## 00000298
/* 00EF4 8089D374 03E00008 */  jr      $ra                        
/* 00EF8 8089D378 00000000 */  nop



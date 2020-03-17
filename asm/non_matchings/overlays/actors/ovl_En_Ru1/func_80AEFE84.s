glabel func_80AEFE84
/* 05274 80AEFE84 10C00003 */  beq     $a2, $zero, .L80AEFE94     
/* 05278 80AEFE88 AFA50004 */  sw      $a1, 0x0004($sp)           
/* 0527C 80AEFE8C 240E002D */  addiu   $t6, $zero, 0x002D         ## $t6 = 0000002D
/* 05280 80AEFE90 AC8E0264 */  sw      $t6, 0x0264($a0)           ## 00000264
.L80AEFE94:
/* 05284 80AEFE94 03E00008 */  jr      $ra                        
/* 05288 80AEFE98 00000000 */  nop



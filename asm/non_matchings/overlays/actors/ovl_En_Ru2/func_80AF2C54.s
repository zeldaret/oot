glabel func_80AF2C54
/* 00704 80AF2C54 10A00002 */  beq     $a1, $zero, .L80AF2C60     
/* 00708 80AF2C58 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 0070C 80AF2C5C AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
.L80AF2C60:
/* 00710 80AF2C60 03E00008 */  jr      $ra                        
/* 00714 80AF2C64 00000000 */  nop



glabel func_80AF346C
/* 00F1C 80AF346C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F20 80AF3470 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F24 80AF3474 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00F28 80AF3478 0C2BCA1A */  jal     func_80AF2868              
/* 00F2C 80AF347C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 00F30 80AF3480 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F34 80AF3484 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00F38 80AF3488 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00F3C 80AF348C AC8E02A8 */  sw      $t6, 0x02A8($a0)           ## 000002A8
/* 00F40 80AF3490 AC8F02AC */  sw      $t7, 0x02AC($a0)           ## 000002AC
/* 00F44 80AF3494 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F48 80AF3498 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F4C 80AF349C 03E00008 */  jr      $ra                        
/* 00F50 80AF34A0 00000000 */  nop



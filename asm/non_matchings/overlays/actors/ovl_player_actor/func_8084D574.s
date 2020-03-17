glabel func_8084D574
/* 1B364 8084D574 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1B368 8084D578 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1B36C 8084D57C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1B370 8084D580 3C068085 */  lui     $a2, %hi(func_8084D84C)    ## $a2 = 80850000
/* 1B374 8084D584 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 1B378 8084D588 24C6D84C */  addiu   $a2, $a2, %lo(func_8084D84C) ## $a2 = 8084D84C
/* 1B37C 8084D58C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1B380 8084D590 0C20D716 */  jal     func_80835C58              
/* 1B384 8084D594 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 1B388 8084D598 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 1B38C 8084D59C 87AE0022 */  lh      $t6, 0x0022($sp)           
/* 1B390 8084D5A0 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1B394 8084D5A4 24C632F0 */  addiu   $a2, $a2, 0x32F0           ## $a2 = 040032F0
/* 1B398 8084D5A8 A4AE083C */  sh      $t6, 0x083C($a1)           ## 0000083C
/* 1B39C 8084D5AC 84AF083C */  lh      $t7, 0x083C($a1)           ## 0000083C
/* 1B3A0 8084D5B0 A4AF00B6 */  sh      $t7, 0x00B6($a1)           ## 000000B6
/* 1B3A4 8084D5B4 0C20CB1B */  jal     func_80832C6C              
/* 1B3A8 8084D5B8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 1B3AC 8084D5BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1B3B0 8084D5C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1B3B4 8084D5C4 03E00008 */  jr      $ra                        
/* 1B3B8 8084D5C8 00000000 */  nop



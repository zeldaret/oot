glabel func_80B8FF50
/* 014D0 80B8FF50 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014D4 80B8FF54 3C0E80B9 */  lui     $t6, %hi(func_80B8FF8C)    ## $t6 = 80B90000
/* 014D8 80B8FF58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014DC 80B8FF5C 25CEFF8C */  addiu   $t6, $t6, %lo(func_80B8FF8C) ## $t6 = 80B8FF8C
/* 014E0 80B8FF60 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 014E4 80B8FF64 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 014E8 80B8FF68 0C2E3BCA */  jal     func_80B8EF28              
/* 014EC 80B8FF6C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 014F0 80B8FF70 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 014F4 80B8FF74 240F33E9 */  addiu   $t7, $zero, 0x33E9         ## $t7 = 000033E9
/* 014F8 80B8FF78 A48F01B6 */  sh      $t7, 0x01B6($a0)           ## 000001B6
/* 014FC 80B8FF7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01500 80B8FF80 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01504 80B8FF84 03E00008 */  jr      $ra                        
/* 01508 80B8FF88 00000000 */  nop

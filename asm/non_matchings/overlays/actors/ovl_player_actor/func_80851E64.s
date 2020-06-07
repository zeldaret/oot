glabel func_80851E64
/* 1FC54 80851E64 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1FC58 80851E68 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1FC5C 80851E6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1FC60 80851E70 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1FC64 80851E74 24C63318 */  addiu   $a2, $a2, 0x3318           ## $a2 = 04003318
/* 1FC68 80851E78 0C20CC19 */  jal     func_80833064              
/* 1FC6C 80851E7C 24070098 */  addiu   $a3, $zero, 0x0098         ## $a3 = 00000098
/* 1FC70 80851E80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1FC74 80851E84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1FC78 80851E88 03E00008 */  jr      $ra                        
/* 1FC7C 80851E8C 00000000 */  nop

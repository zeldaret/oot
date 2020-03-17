glabel func_80B000EC
/* 01E3C 80B000EC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01E40 80B000F0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01E44 80B000F4 44813000 */  mtc1    $at, $f6                   ## $f6 = 2.00
/* 01E48 80B000F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E4C 80B000FC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E50 80B00100 E48402F0 */  swc1    $f4, 0x02F0($a0)           ## 000002F0
/* 01E54 80B00104 E4860068 */  swc1    $f6, 0x0068($a0)           ## 00000068
/* 01E58 80B00108 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E5C 80B0010C 0C2BF8AC */  jal     func_80AFE2B0              
/* 01E60 80B00110 24050008 */  addiu   $a1, $zero, 0x0008         ## $a1 = 00000008
/* 01E64 80B00114 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E68 80B00118 0C2BF8CE */  jal     func_80AFE338              
/* 01E6C 80B0011C 24050013 */  addiu   $a1, $zero, 0x0013         ## $a1 = 00000013
/* 01E70 80B00120 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E74 80B00124 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E78 80B00128 03E00008 */  jr      $ra                        
/* 01E7C 80B0012C 00000000 */  nop



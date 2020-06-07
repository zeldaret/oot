glabel func_80B00514
/* 02264 80B00514 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02268 80B00518 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0226C 80B0051C 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 02270 80B00520 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02274 80B00524 24050009 */  addiu   $a1, $zero, 0x0009         ## $a1 = 00000009
/* 02278 80B00528 01C17824 */  and     $t7, $t6, $at              
/* 0227C 80B0052C AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 02280 80B00530 0C2BF8AC */  jal     func_80AFE2B0              
/* 02284 80B00534 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02288 80B00538 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0228C 80B0053C 0C2BF8CE */  jal     func_80AFE338              
/* 02290 80B00540 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 02294 80B00544 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02298 80B00548 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0229C 80B0054C 03E00008 */  jr      $ra                        
/* 022A0 80B00550 00000000 */  nop

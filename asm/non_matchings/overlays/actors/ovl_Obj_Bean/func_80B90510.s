glabel func_80B90510
/* 01A90 80B90510 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01A94 80B90514 3C0E80B9 */  lui     $t6, %hi(func_80B90548)    ## $t6 = 80B90000
/* 01A98 80B90518 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A9C 80B9051C 25CE0548 */  addiu   $t6, $t6, %lo(func_80B90548) ## $t6 = 80B90548
/* 01AA0 80B90520 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01AA4 80B90524 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01AA8 80B90528 0C2E3BCA */  jal     func_80B8EF28              
/* 01AAC 80B9052C 2405000B */  addiu   $a1, $zero, 0x000B         ## $a1 = 0000000B
/* 01AB0 80B90530 0C2E3E35 */  jal     func_80B8F8D4              
/* 01AB4 80B90534 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01AB8 80B90538 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01ABC 80B9053C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01AC0 80B90540 03E00008 */  jr      $ra                        
/* 01AC4 80B90544 00000000 */  nop



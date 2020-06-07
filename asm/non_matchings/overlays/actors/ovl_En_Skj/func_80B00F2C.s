glabel func_80B00F2C
/* 02C7C 80B00F2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02C80 80B00F30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02C84 80B00F34 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02C88 80B00F38 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02C8C 80B00F3C 0C042DC8 */  jal     func_8010B720              
/* 02C90 80B00F40 2405102E */  addiu   $a1, $zero, 0x102E         ## $a1 = 0000102E
/* 02C94 80B00F44 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 02C98 80B00F48 3C0E80B0 */  lui     $t6, %hi(func_80B00F64)    ## $t6 = 80B00000
/* 02C9C 80B00F4C 25CE0F64 */  addiu   $t6, $t6, %lo(func_80B00F64) ## $t6 = 80B00F64
/* 02CA0 80B00F50 ADEE0274 */  sw      $t6, 0x0274($t7)           ## 00000274
/* 02CA4 80B00F54 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02CA8 80B00F58 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02CAC 80B00F5C 03E00008 */  jr      $ra                        
/* 02CB0 80B00F60 00000000 */  nop

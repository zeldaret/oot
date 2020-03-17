glabel func_80B3EF34
/* 02D54 80B3EF34 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02D58 80B3EF38 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02D5C 80B3EF3C 24050022 */  addiu   $a1, $zero, 0x0022         ## $a1 = 00000022
/* 02D60 80B3EF40 0C2CF1EF */  jal     func_80B3C7BC              
/* 02D64 80B3EF44 24060023 */  addiu   $a2, $zero, 0x0023         ## $a2 = 00000023
/* 02D68 80B3EF48 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02D6C 80B3EF4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02D70 80B3EF50 03E00008 */  jr      $ra                        
/* 02D74 80B3EF54 00000000 */  nop



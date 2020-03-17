glabel func_80B90884
/* 01E04 80B90884 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E08 80B90888 3C0E80B9 */  lui     $t6, %hi(func_80B908B0)    ## $t6 = 80B90000
/* 01E0C 80B9088C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E10 80B90890 25CE08B0 */  addiu   $t6, $t6, %lo(func_80B908B0) ## $t6 = 80B908B0
/* 01E14 80B90894 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01E18 80B90898 0C2E3BCA */  jal     func_80B8EF28              
/* 01E1C 80B9089C 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01E20 80B908A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E24 80B908A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E28 80B908A8 03E00008 */  jr      $ra                        
/* 01E2C 80B908AC 00000000 */  nop



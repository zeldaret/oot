glabel func_80B8FE00
/* 01380 80B8FE00 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01384 80B8FE04 3C0E80B9 */  lui     $t6, %hi(func_80B8FE3C)    ## $t6 = 80B90000
/* 01388 80B8FE08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0138C 80B8FE0C 25CEFE3C */  addiu   $t6, $t6, %lo(func_80B8FE3C) ## $t6 = 80B8FE3C
/* 01390 80B8FE10 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01394 80B8FE14 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01398 80B8FE18 0C2E3BCA */  jal     func_80B8EF28              
/* 0139C 80B8FE1C 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 013A0 80B8FE20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 013A4 80B8FE24 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 013A8 80B8FE28 A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 013AC 80B8FE2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013B0 80B8FE30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 013B4 80B8FE34 03E00008 */  jr      $ra                        
/* 013B8 80B8FE38 00000000 */  nop



glabel func_80B909F8
/* 01F78 80B909F8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01F7C 80B909FC 3C0E80B9 */  lui     $t6, %hi(func_80B90A34)    ## $t6 = 80B90000
/* 01F80 80B90A00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01F84 80B90A04 25CE0A34 */  addiu   $t6, $t6, %lo(func_80B90A34) ## $t6 = 80B90A34
/* 01F88 80B90A08 AC8E0164 */  sw      $t6, 0x0164($a0)           ## 00000164
/* 01F8C 80B90A0C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01F90 80B90A10 0C2E3BCA */  jal     func_80B8EF28              
/* 01F94 80B90A14 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01F98 80B90A18 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01F9C 80B90A1C 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 01FA0 80B90A20 A48F01B4 */  sh      $t7, 0x01B4($a0)           ## 000001B4
/* 01FA4 80B90A24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01FA8 80B90A28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01FAC 80B90A2C 03E00008 */  jr      $ra                        
/* 01FB0 80B90A30 00000000 */  nop

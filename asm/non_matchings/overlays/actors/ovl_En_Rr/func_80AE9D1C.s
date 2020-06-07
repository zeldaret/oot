glabel func_80AE9D1C
/* 018DC 80AE9D1C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 018E0 80AE9D20 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 018E4 80AE9D24 908E0114 */  lbu     $t6, 0x0114($a0)           ## 00000114
/* 018E8 80AE9D28 55C00013 */  bnel    $t6, $zero, .L80AE9D78     
/* 018EC 80AE9D2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 018F0 80AE9D30 848F0378 */  lh      $t7, 0x0378($a0)           ## 00000378
/* 018F4 80AE9D34 A0800376 */  sb      $zero, 0x0376($a0)         ## 00000376
/* 018F8 80AE9D38 51E00006 */  beql    $t7, $zero, .L80AE9D54     
/* 018FC 80AE9D3C 909800AF */  lbu     $t8, 0x00AF($a0)           ## 000000AF
/* 01900 80AE9D40 0C2BA25A */  jal     func_80AE8968              
/* 01904 80AE9D44 00000000 */  nop
/* 01908 80AE9D48 1000000B */  beq     $zero, $zero, .L80AE9D78   
/* 0190C 80AE9D4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01910 80AE9D50 909800AF */  lbu     $t8, 0x00AF($a0)           ## 000000AF
.L80AE9D54:
/* 01914 80AE9D54 3C1980AF */  lui     $t9, %hi(func_80AE95B0)    ## $t9 = 80AF0000
/* 01918 80AE9D58 273995B0 */  addiu   $t9, $t9, %lo(func_80AE95B0) ## $t9 = 80AE95B0
/* 0191C 80AE9D5C 13000003 */  beq     $t8, $zero, .L80AE9D6C     
/* 01920 80AE9D60 00000000 */  nop
/* 01924 80AE9D64 10000003 */  beq     $zero, $zero, .L80AE9D74   
/* 01928 80AE9D68 AC99014C */  sw      $t9, 0x014C($a0)           ## 0000014C
.L80AE9D6C:
/* 0192C 80AE9D6C 0C2BA33E */  jal     func_80AE8CF8              
/* 01930 80AE9D70 00000000 */  nop
.L80AE9D74:
/* 01934 80AE9D74 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE9D78:
/* 01938 80AE9D78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0193C 80AE9D7C 03E00008 */  jr      $ra                        
/* 01940 80AE9D80 00000000 */  nop

glabel func_80A15F24
/* 00CA4 80A15F24 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00CA8 80A15F28 44812000 */  mtc1    $at, $f4                   ## $f4 = -1.00
/* 00CAC 80A15F2C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CB0 80A15F30 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00CB4 80A15F34 44813000 */  mtc1    $at, $f6                   ## $f6 = -10.00
/* 00CB8 80A15F38 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 00CBC 80A15F3C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CC0 80A15F40 E484006C */  swc1    $f4, 0x006C($a0)           ## 0000006C
/* 00CC4 80A15F44 E4860070 */  swc1    $f6, 0x0070($a0)           ## 00000070
/* 00CC8 80A15F48 E48800BC */  swc1    $f8, 0x00BC($a0)           ## 000000BC
/* 00CCC 80A15F4C 0C2854C4 */  jal     func_80A15310              
/* 00CD0 80A15F50 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CD4 80A15F54 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CD8 80A15F58 3C0F80A1 */  lui     $t7, %hi(func_80A15F84)    ## $t7 = 80A10000
/* 00CDC 80A15F5C 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 00CE0 80A15F60 25EF5F84 */  addiu   $t7, $t7, %lo(func_80A15F84) ## $t7 = 80A15F84
/* 00CE4 80A15F64 2418012C */  addiu   $t8, $zero, 0x012C         ## $t8 = 0000012C
/* 00CE8 80A15F68 AC8E0250 */  sw      $t6, 0x0250($a0)           ## 00000250
/* 00CEC 80A15F6C AC8F0244 */  sw      $t7, 0x0244($a0)           ## 00000244
/* 00CF0 80A15F70 A4980248 */  sh      $t8, 0x0248($a0)           ## 00000248
/* 00CF4 80A15F74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CF8 80A15F78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CFC 80A15F7C 03E00008 */  jr      $ra                        
/* 00D00 80A15F80 00000000 */  nop

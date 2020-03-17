glabel func_80A9B89C
/* 008FC 80A9B89C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00900 80A9B8A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00904 80A9B8A4 3C0580AA */  lui     $a1, %hi(func_80A9B8D8)    ## $a1 = 80AA0000
/* 00908 80A9B8A8 24A5B8D8 */  addiu   $a1, $a1, %lo(func_80A9B8D8) ## $a1 = 80A9B8D8
/* 0090C 80A9B8AC 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00910 80A9B8B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00914 80A9B8B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00918 80A9B8B8 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 0091C 80A9B8BC 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00920 80A9B8C0 01C17824 */  and     $t7, $t6, $at              
/* 00924 80A9B8C4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00928 80A9B8C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0092C 80A9B8CC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00930 80A9B8D0 03E00008 */  jr      $ra                        
/* 00934 80A9B8D4 00000000 */  nop



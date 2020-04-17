glabel func_80AB2A28
/* 01C98 80AB2A28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C9C 80AB2A2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CA0 80AB2A30 8C8E0288 */  lw      $t6, 0x0288($a0)           ## 00000288
/* 01CA4 80AB2A34 55C00009 */  bnel    $t6, $zero, .L80AB2A5C     
/* 01CA8 80AB2A38 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CAC 80AB2A3C 50C00007 */  beql    $a2, $zero, .L80AB2A5C     
/* 01CB0 80AB2A40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CB4 80AB2A44 0C2AC984 */  jal     func_80AB2610              
/* 01CB8 80AB2A48 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CBC 80AB2A4C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01CC0 80AB2A50 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 01CC4 80AB2A54 AC8F0288 */  sw      $t7, 0x0288($a0)           ## 00000288
/* 01CC8 80AB2A58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB2A5C:
/* 01CCC 80AB2A5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CD0 80AB2A60 03E00008 */  jr      $ra                        
/* 01CD4 80AB2A64 00000000 */  nop

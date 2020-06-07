glabel func_80AFEF5C
/* 00CAC 80AFEF5C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CB0 80AFEF60 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CB4 80AFEF64 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 00CB8 80AFEF68 A08E02D4 */  sb      $t6, 0x02D4($a0)           ## 000002D4
/* 00CBC 80AFEF6C A48002CC */  sh      $zero, 0x02CC($a0)         ## 000002CC
/* 00CC0 80AFEF70 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CC4 80AFEF74 0C2BF8AC */  jal     func_80AFE2B0              
/* 00CC8 80AFEF78 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CCC 80AFEF7C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CD0 80AFEF80 0C2BF8CE */  jal     func_80AFE338              
/* 00CD4 80AFEF84 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00CD8 80AFEF88 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00CDC 80AFEF8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CE0 80AFEF90 03E00008 */  jr      $ra                        
/* 00CE4 80AFEF94 00000000 */  nop

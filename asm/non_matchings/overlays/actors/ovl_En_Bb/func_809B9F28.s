glabel func_809B9F28
/* 01C48 809B9F28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C4C 809B9F2C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01C50 809B9F30 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C54 809B9F34 24C50290 */  addiu   $a1, $a2, 0x0290           ## $a1 = 00000290
/* 01C58 809B9F38 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01C5C 809B9F3C 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01C60 809B9F40 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 01C64 809B9F44 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01C68 809B9F48 A4C200B6 */  sh      $v0, 0x00B6($a2)           ## 000000B6
/* 01C6C 809B9F4C A4C20032 */  sh      $v0, 0x0032($a2)           ## 00000032
/* 01C70 809B9F50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C74 809B9F54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C78 809B9F58 03E00008 */  jr      $ra                        
/* 01C7C 809B9F5C 00000000 */  nop

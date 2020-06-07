glabel func_80AA6408
/* 003B8 80AA6408 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003BC 80AA640C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003C0 80AA6410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003C4 80AA6414 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003C8 80AA6418 24C50344 */  addiu   $a1, $a2, 0x0344           ## $a1 = 00000344
/* 003CC 80AA641C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 003D0 80AA6420 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 003D4 80AA6424 24840024 */  addiu   $a0, $a0, 0x0024           ## $a0 = 00000024
/* 003D8 80AA6428 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 003DC 80AA642C A4C200B6 */  sh      $v0, 0x00B6($a2)           ## 000000B6
/* 003E0 80AA6430 A4C20032 */  sh      $v0, 0x0032($a2)           ## 00000032
/* 003E4 80AA6434 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E8 80AA6438 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003EC 80AA643C 03E00008 */  jr      $ra                        
/* 003F0 80AA6440 00000000 */  nop

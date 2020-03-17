glabel func_80969E6C
/* 0039C 80969E6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 003A0 80969E70 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 003A4 80969E74 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 003A8 80969E78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003AC 80969E7C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 003B0 80969E80 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 003B4 80969E84 3C060601 */  lui     $a2, 0x0601                ## $a2 = 06010000
/* 003B8 80969E88 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 003BC 80969E8C 24E76EB0 */  addiu   $a3, $a3, 0x6EB0           ## $a3 = 06006EB0
/* 003C0 80969E90 24C61CA8 */  addiu   $a2, $a2, 0x1CA8           ## $a2 = 06011CA8
/* 003C4 80969E94 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 003C8 80969E98 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 003CC 80969E9C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 003D0 80969EA0 0C0291BE */  jal     func_800A46F8              
/* 003D4 80969EA4 24A5014C */  addiu   $a1, $a1, 0x014C           ## $a1 = 0000014C
/* 003D8 80969EA8 3C018097 */  lui     $at, %hi(D_8096D0E8)       ## $at = 80970000
/* 003DC 80969EAC 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 003E0 80969EB0 C424D0E8 */  lwc1    $f4, %lo(D_8096D0E8)($at)  
/* 003E4 80969EB4 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 003E8 80969EB8 0C25A6DE */  jal     func_80969B78              
/* 003EC 80969EBC E48400BC */  swc1    $f4, 0x00BC($a0)           ## 000000BC
/* 003F0 80969EC0 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 003F4 80969EC4 0C25A6E3 */  jal     func_80969B8C              
/* 003F8 80969EC8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 003FC 80969ECC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00400 80969ED0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00404 80969ED4 03E00008 */  jr      $ra                        
/* 00408 80969ED8 00000000 */  nop



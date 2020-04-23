glabel func_8096E33C
/* 00E8C 8096E33C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E90 8096E340 3C0E8097 */  lui     $t6, %hi(D_809703E0)       ## $t6 = 80970000
/* 00E94 8096E344 3C0F8097 */  lui     $t7, %hi(D_809703E4)       ## $t7 = 80970000
/* 00E98 8096E348 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E9C 8096E34C 25EF03E4 */  addiu   $t7, $t7, %lo(D_809703E4)  ## $t7 = 809703E4
/* 00EA0 8096E350 25CE03E0 */  addiu   $t6, $t6, %lo(D_809703E0)  ## $t6 = 809703E0
/* 00EA4 8096E354 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00EA8 8096E358 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00EAC 8096E35C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00EB0 8096E360 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00EB4 8096E364 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00EB8 8096E368 0C25B6A0 */  jal     func_8096DA80              
/* 00EBC 8096E36C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00EC0 8096E370 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EC4 8096E374 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00EC8 8096E378 03E00008 */  jr      $ra                        
/* 00ECC 8096E37C 00000000 */  nop

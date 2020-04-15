glabel func_809BB4F4
/* 03214 809BB4F4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03218 809BB4F8 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 0321C 809BB4FC AFA60030 */  sw      $a2, 0x0030($sp)           
/* 03220 809BB500 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 03224 809BB504 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 03228 809BB508 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0322C 809BB50C AFA70034 */  sw      $a3, 0x0034($sp)           
/* 03230 809BB510 240E000F */  addiu   $t6, $zero, 0x000F         ## $t6 = 0000000F
/* 03234 809BB514 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 03238 809BB518 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 0323C 809BB51C AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 03240 809BB520 2407000F */  addiu   $a3, $zero, 0x000F         ## $a3 = 0000000F
/* 03244 809BB524 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 03248 809BB528 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 0324C 809BB52C 0C00CBD5 */  jal     func_80032F54              
/* 03250 809BB530 2484030C */  addiu   $a0, $a0, 0x030C           ## $a0 = 0000030C
/* 03254 809BB534 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03258 809BB538 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0325C 809BB53C 03E00008 */  jr      $ra                        
/* 03260 809BB540 00000000 */  nop

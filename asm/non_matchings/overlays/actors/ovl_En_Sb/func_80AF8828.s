glabel func_80AF8828
/* 01038 80AF8828 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0103C 80AF882C AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01040 80AF8830 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 01044 80AF8834 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 01048 80AF8838 8FA40038 */  lw      $a0, 0x0038($sp)           
/* 0104C 80AF883C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01050 80AF8840 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 01054 80AF8844 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01058 80AF8848 2418FFFF */  addiu   $t8, $zero, 0xFFFF         ## $t8 = FFFFFFFF
/* 0105C 80AF884C AFB80018 */  sw      $t8, 0x0018($sp)           
/* 01060 80AF8850 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01064 80AF8854 24070006 */  addiu   $a3, $zero, 0x0006         ## $a3 = 00000006
/* 01068 80AF8858 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0106C 80AF885C AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01070 80AF8860 0C00CBD5 */  jal     func_80032F54              
/* 01074 80AF8864 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 01078 80AF8868 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0107C 80AF886C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01080 80AF8870 03E00008 */  jr      $ra                        
/* 01084 80AF8874 00000000 */  nop

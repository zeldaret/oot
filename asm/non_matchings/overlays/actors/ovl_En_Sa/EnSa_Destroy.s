glabel EnSa_Destroy
/* 00EC0 80AF6420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EC4 80AF6424 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00EC8 80AF6428 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ECC 80AF642C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00ED0 80AF6430 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00ED4 80AF6434 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 00ED8 80AF6438 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EDC 80AF643C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE0 80AF6440 03E00008 */  jr      $ra                        
/* 00EE4 80AF6444 00000000 */  nop

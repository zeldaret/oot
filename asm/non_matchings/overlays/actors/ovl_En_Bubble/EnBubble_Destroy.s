glabel EnBubble_Destroy
/* 00D8C 809CC98C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D90 809CC990 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D94 809CC994 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D98 809CC998 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D9C 809CC99C 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00DA0 809CC9A0 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 00DA4 809CC9A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA8 809CC9A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DAC 809CC9AC 03E00008 */  jr      $ra                        
/* 00DB0 809CC9B0 00000000 */  nop

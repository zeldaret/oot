glabel EnDaikuKakariko_Destroy
/* 00404 809E4724 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00408 809E4728 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0040C 809E472C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00410 809E4730 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00414 809E4734 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00418 809E4738 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 0041C 809E473C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00420 809E4740 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00424 809E4744 03E00008 */  jr      $ra                        
/* 00428 809E4748 00000000 */  nop

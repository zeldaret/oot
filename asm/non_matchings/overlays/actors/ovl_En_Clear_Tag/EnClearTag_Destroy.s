glabel EnClearTag_Destroy
/* 003E4 809D3994 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E8 809D3998 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003EC 809D399C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003F0 809D39A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003F4 809D39A4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003F8 809D39A8 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 003FC 809D39AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00400 809D39B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00404 809D39B4 03E00008 */  jr      $ra                        
/* 00408 809D39B8 00000000 */  nop



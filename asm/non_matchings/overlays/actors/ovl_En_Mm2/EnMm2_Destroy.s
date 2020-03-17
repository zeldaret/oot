glabel EnMm2_Destroy
/* 003AC 80AAF1FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B0 80AAF200 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003B4 80AAF204 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003B8 80AAF208 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 003BC 80AAF20C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 003C0 80AAF210 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 003C4 80AAF214 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003C8 80AAF218 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003CC 80AAF21C 03E00008 */  jr      $ra                        
/* 003D0 80AAF220 00000000 */  nop



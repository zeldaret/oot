glabel EnGe3_Destroy
/* 001AC 80A347CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B0 80A347D0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001B4 80A347D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001B8 80A347D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001BC 80A347DC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 001C0 80A347E0 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 001C4 80A347E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C8 80A347E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001CC 80A347EC 03E00008 */  jr      $ra                        
/* 001D0 80A347F0 00000000 */  nop



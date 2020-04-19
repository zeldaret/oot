glabel EnGm_Destroy
/* 000C0 80A3D7A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C4 80A3D7A4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000C8 80A3D7A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000CC 80A3D7AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000D0 80A3D7B0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 000D4 80A3D7B4 24C50270 */  addiu   $a1, $a2, 0x0270           ## $a1 = 00000270
/* 000D8 80A3D7B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000DC 80A3D7BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E0 80A3D7C0 03E00008 */  jr      $ra                        
/* 000E4 80A3D7C4 00000000 */  nop

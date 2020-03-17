glabel EnBili_Destroy
/* 000F4 809BF994 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000F8 809BF998 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000FC 809BF99C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00100 809BF9A0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00104 809BF9A4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00108 809BF9A8 24C501D4 */  addiu   $a1, $a2, 0x01D4           ## $a1 = 000001D4
/* 0010C 809BF9AC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00110 809BF9B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00114 809BF9B4 03E00008 */  jr      $ra                        
/* 00118 809BF9B8 00000000 */  nop



glabel EnDntJiji_Destroy
/* 000FC 809F1BDC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00100 809F1BE0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00104 809F1BE4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00108 809F1BE8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0010C 809F1BEC 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00110 809F1BF0 24C5025C */  addiu   $a1, $a2, 0x025C           ## $a1 = 0000025C
/* 00114 809F1BF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00118 809F1BF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0011C 809F1BFC 03E00008 */  jr      $ra                        
/* 00120 809F1C00 00000000 */  nop



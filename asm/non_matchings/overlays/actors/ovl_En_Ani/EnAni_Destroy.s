glabel EnAni_Destroy
/* 0011C 809B048C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00120 809B0490 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00124 809B0494 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00128 809B0498 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0012C 809B049C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00130 809B04A0 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00134 809B04A4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00138 809B04A8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0013C 809B04AC 03E00008 */  jr      $ra                        
/* 00140 809B04B0 00000000 */  nop



glabel EnHs_Destroy
/* 00174 80A6E514 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00178 80A6E518 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0017C 80A6E51C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00180 80A6E520 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00184 80A6E524 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00188 80A6E528 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 0018C 80A6E52C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00190 80A6E530 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00194 80A6E534 03E00008 */  jr      $ra                        
/* 00198 80A6E538 00000000 */  nop

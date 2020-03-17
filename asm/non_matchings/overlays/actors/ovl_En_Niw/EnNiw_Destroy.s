glabel EnNiw_Destroy
/* 00450 80AB5BD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00454 80AB5BD4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00458 80AB5BD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0045C 80AB5BDC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00460 80AB5BE0 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00464 80AB5BE4 24C5030C */  addiu   $a1, $a2, 0x030C           ## $a1 = 0000030C
/* 00468 80AB5BE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0046C 80AB5BEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00470 80AB5BF0 03E00008 */  jr      $ra                        
/* 00474 80AB5BF4 00000000 */  nop



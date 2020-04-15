glabel EnSth_Destroy
/* 00310 80B07850 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00314 80B07854 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00318 80B07858 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0031C 80B0785C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00320 80B07860 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00324 80B07864 24C5014C */  addiu   $a1, $a2, 0x014C           ## $a1 = 0000014C
/* 00328 80B07868 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0032C 80B0786C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00330 80B07870 03E00008 */  jr      $ra                        
/* 00334 80B07874 00000000 */  nop

glabel ObjBombiwa_Destroy
/* 00120 80B91710 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00124 80B91714 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00128 80B91718 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0012C 80B9171C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00130 80B91720 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00134 80B91724 24E5014C */  addiu   $a1, $a3, 0x014C           ## $a1 = 0000014C
/* 00138 80B91728 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0013C 80B9172C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00140 80B91730 03E00008 */  jr      $ra                        
/* 00144 80B91734 00000000 */  nop



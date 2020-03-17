glabel ObjKibako_Destroy
/* 00170 80B94E10 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00174 80B94E14 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00178 80B94E18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0017C 80B94E1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00180 80B94E20 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00184 80B94E24 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 00188 80B94E28 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0018C 80B94E2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00190 80B94E30 03E00008 */  jr      $ra                        
/* 00194 80B94E34 00000000 */  nop



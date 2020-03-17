glabel ObjTsubo_Destroy
/* 00284 80BA0FE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00288 80BA0FE8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0028C 80BA0FEC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00290 80BA0FF0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00294 80BA0FF4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00298 80BA0FF8 24E50150 */  addiu   $a1, $a3, 0x0150           ## $a1 = 00000150
/* 0029C 80BA0FFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002A0 80BA1000 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002A4 80BA1004 03E00008 */  jr      $ra                        
/* 002A8 80BA1008 00000000 */  nop



glabel EnGSwitch_Destroy
/* 00368 80A22228 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0036C 80A2222C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00370 80A22230 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00374 80A22234 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00378 80A22238 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0037C 80A2223C 24C5017C */  addiu   $a1, $a2, 0x017C           ## $a1 = 0000017C
/* 00380 80A22240 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00384 80A22244 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00388 80A22248 03E00008 */  jr      $ra                        
/* 0038C 80A2224C 00000000 */  nop



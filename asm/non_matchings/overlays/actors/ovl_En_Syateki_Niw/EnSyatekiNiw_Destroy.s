glabel EnSyatekiNiw_Destroy
/* 0017C 80B11A6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00180 80B11A70 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00184 80B11A74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00188 80B11A78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0018C 80B11A7C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00190 80B11A80 24C502FC */  addiu   $a1, $a2, 0x02FC           ## $a1 = 000002FC
/* 00194 80B11A84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00198 80B11A88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0019C 80B11A8C 03E00008 */  jr      $ra                        
/* 001A0 80B11A90 00000000 */  nop



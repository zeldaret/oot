glabel EnFdFire_Destroy
/* 00234 80A0E6E4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00238 80A0E6E8 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0023C 80A0E6EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00240 80A0E6F0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00244 80A0E6F4 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00248 80A0E6F8 24C50150 */  addiu   $a1, $a2, 0x0150           ## $a1 = 00000150
/* 0024C 80A0E6FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00250 80A0E700 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00254 80A0E704 03E00008 */  jr      $ra                        
/* 00258 80A0E708 00000000 */  nop



glabel EnHeishi4_Destroy
/* 00230 80A56300 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00234 80A56304 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00238 80A56308 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0023C 80A5630C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00240 80A56310 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00244 80A56314 24C502BC */  addiu   $a1, $a2, 0x02BC           ## $a1 = 000002BC
/* 00248 80A56318 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0024C 80A5631C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00250 80A56320 03E00008 */  jr      $ra                        
/* 00254 80A56324 00000000 */  nop

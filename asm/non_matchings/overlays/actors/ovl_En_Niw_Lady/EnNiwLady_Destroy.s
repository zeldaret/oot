glabel EnNiwLady_Destroy
/* 000F8 80AB9D38 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000FC 80AB9D3C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00100 80AB9D40 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00104 80AB9D44 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00108 80AB9D48 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 0010C 80AB9D4C 24C502B0 */  addiu   $a1, $a2, 0x02B0           ## $a1 = 000002B0
/* 00110 80AB9D50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00114 80AB9D54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00118 80AB9D58 03E00008 */  jr      $ra                        
/* 0011C 80AB9D5C 00000000 */  nop



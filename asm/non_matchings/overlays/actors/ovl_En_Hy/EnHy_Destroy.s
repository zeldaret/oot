glabel EnHy_Destroy
/* 0185C 80A70E0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01860 80A70E10 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01864 80A70E14 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01868 80A70E18 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0186C 80A70E1C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 01870 80A70E20 24C5019C */  addiu   $a1, $a2, 0x019C           ## $a1 = 0000019C
/* 01874 80A70E24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01878 80A70E28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0187C 80A70E2C 03E00008 */  jr      $ra                        
/* 01880 80A70E30 00000000 */  nop

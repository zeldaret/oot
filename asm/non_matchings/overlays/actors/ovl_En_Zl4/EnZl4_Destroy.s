glabel EnZl4_Destroy
/* 007B8 80B5BF68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007BC 80B5BF6C 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 007C0 80B5BF70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007C4 80B5BF74 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 007C8 80B5BF78 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 007CC 80B5BF7C 24C50194 */  addiu   $a1, $a2, 0x0194           ## $a1 = 00000194
/* 007D0 80B5BF80 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007D4 80B5BF84 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007D8 80B5BF88 03E00008 */  jr      $ra                        
/* 007DC 80B5BF8C 00000000 */  nop

glabel EnYukabyun_Destroy
/* 000AC 80B43A6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B0 80B43A70 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 000B4 80B43A74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B8 80B43A78 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000BC 80B43A7C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 000C0 80B43A80 24C50154 */  addiu   $a1, $a2, 0x0154           ## $a1 = 00000154
/* 000C4 80B43A84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000C8 80B43A88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000CC 80B43A8C 03E00008 */  jr      $ra                        
/* 000D0 80B43A90 00000000 */  nop

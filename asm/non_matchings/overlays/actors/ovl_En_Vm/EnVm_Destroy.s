glabel EnVm_Destroy
/* 00178 80B2D5D8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0017C 80B2D5DC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00180 80B2D5E0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00184 80B2D5E4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00188 80B2D5E8 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 0018C 80B2D5EC 24C50268 */  addiu   $a1, $a2, 0x0268           ## $a1 = 00000268
/* 00190 80B2D5F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00194 80B2D5F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00198 80B2D5F8 03E00008 */  jr      $ra                        
/* 0019C 80B2D5FC 00000000 */  nop

glabel EnEiyer_Destroy
/* 001DC 80A0017C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001E0 80A00180 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 001E4 80A00184 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001E8 80A00188 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001EC 80A0018C 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 001F0 80A00190 24C50288 */  addiu   $a1, $a2, 0x0288           ## $a1 = 00000288
/* 001F4 80A00194 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80A00198 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001FC 80A0019C 03E00008 */  jr      $ra                        
/* 00200 80A001A0 00000000 */  nop

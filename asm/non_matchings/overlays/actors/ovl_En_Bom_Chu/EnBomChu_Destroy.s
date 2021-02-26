glabel EnBomChu_Destroy
/* 0019C 809C59CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001A0 809C59D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001A4 809C59D4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001A8 809C59D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001AC 809C59DC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001B0 809C59E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001B4 809C59E4 0C009C27 */  jal     Effect_Delete              
/* 001B8 809C59E8 8DC5017C */  lw      $a1, 0x017C($t6)           ## 0000017C
/* 001BC 809C59EC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 001C0 809C59F0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001C4 809C59F4 0C009C27 */  jal     Effect_Delete              
/* 001C8 809C59F8 8DE50180 */  lw      $a1, 0x0180($t7)           ## 00000180
/* 001CC 809C59FC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001D0 809C5A00 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 001D4 809C5A04 0C016F32 */  jal     Collider_DestroyJntSph              
/* 001D8 809C5A08 24A50184 */  addiu   $a1, $a1, 0x0184           ## $a1 = 00000184
/* 001DC 809C5A0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001E0 809C5A10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001E4 809C5A14 03E00008 */  jr      $ra                        
/* 001E8 809C5A18 00000000 */  nop

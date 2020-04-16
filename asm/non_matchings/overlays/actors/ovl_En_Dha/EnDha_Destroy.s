glabel EnDha_Destroy
/* 00120 809EC9A0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00124 809EC9A4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00128 809EC9A8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0012C 809EC9AC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00130 809EC9B0 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00134 809EC9B4 24C50200 */  addiu   $a1, $a2, 0x0200           ## $a1 = 00000200
/* 00138 809EC9B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0013C 809EC9BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00140 809EC9C0 03E00008 */  jr      $ra                        
/* 00144 809EC9C4 00000000 */  nop

glabel ObjOshihiki_Destroy
/* 00718 80B9B898 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0071C 80B9B89C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00720 80B9B8A0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00724 80B9B8A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00728 80B9B8A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0072C 80B9B8AC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00730 80B9B8B0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00734 80B9B8B4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00738 80B9B8B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0073C 80B9B8BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00740 80B9B8C0 03E00008 */  jr      $ra                        
/* 00744 80B9B8C4 00000000 */  nop



glabel BgGndIceblock_Destroy
/* 00134 80879BD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00138 80879BD8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0013C 80879BDC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00140 80879BE0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00144 80879BE4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00148 80879BE8 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0014C 80879BEC 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00150 80879BF0 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00154 80879BF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00158 80879BF8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0015C 80879BFC 03E00008 */  jr      $ra                        
/* 00160 80879C00 00000000 */  nop

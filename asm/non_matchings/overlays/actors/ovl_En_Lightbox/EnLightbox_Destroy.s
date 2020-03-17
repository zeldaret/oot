glabel EnLightbox_Destroy
/* 0012C 80A9EAFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00130 80A9EB00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00134 80A9EB04 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00138 80A9EB08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0013C 80A9EB0C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00140 80A9EB10 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00144 80A9EB14 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00148 80A9EB18 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0014C 80A9EB1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00150 80A9EB20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00154 80A9EB24 03E00008 */  jr      $ra                        
/* 00158 80A9EB28 00000000 */  nop



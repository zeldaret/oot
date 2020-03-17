glabel BgMoriHineri_Destroy
/* 001FC 808A39CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00200 808A39D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00204 808A39D4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00208 808A39D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0020C 808A39DC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00210 808A39E0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00214 808A39E4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00218 808A39E8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0021C 808A39EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00220 808A39F0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00224 808A39F4 03E00008 */  jr      $ra                        
/* 00228 808A39F8 00000000 */  nop



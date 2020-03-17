glabel BgIngate_Destroy
/* 00120 80892860 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00124 80892864 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00128 80892868 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0012C 8089286C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00130 80892870 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00134 80892874 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00138 80892878 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0013C 8089287C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00140 80892880 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00144 80892884 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00148 80892888 03E00008 */  jr      $ra                        
/* 0014C 8089288C 00000000 */  nop



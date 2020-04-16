glabel BgHidanKousi_Destroy
/* 0013C 80889A9C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00140 80889AA0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00144 80889AA4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00148 80889AA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0014C 80889AAC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00150 80889AB0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00154 80889AB4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00158 80889AB8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0015C 80889ABC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00160 80889AC0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00164 80889AC4 03E00008 */  jr      $ra                        
/* 00168 80889AC8 00000000 */  nop

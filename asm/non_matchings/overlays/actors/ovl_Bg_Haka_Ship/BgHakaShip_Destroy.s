glabel BgHakaShip_Destroy
/* 00140 8087F240 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00144 8087F244 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00148 8087F248 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0014C 8087F24C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00150 8087F250 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00154 8087F254 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00158 8087F258 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0015C 8087F25C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00160 8087F260 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00164 8087F264 0C03E27A */  jal     func_800F89E8              
/* 00168 8087F268 2484016C */  addiu   $a0, $a0, 0x016C           ## $a0 = 0000016C
/* 0016C 8087F26C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00170 8087F270 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00174 8087F274 03E00008 */  jr      $ra                        
/* 00178 8087F278 00000000 */  nop



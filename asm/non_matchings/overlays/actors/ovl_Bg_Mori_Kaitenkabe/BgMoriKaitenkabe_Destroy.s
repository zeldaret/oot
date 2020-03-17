glabel BgMoriKaitenkabe_Destroy
/* 0014C 808A4F0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00150 808A4F10 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00154 808A4F14 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00158 808A4F18 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0015C 808A4F1C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00160 808A4F20 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00164 808A4F24 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00168 808A4F28 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0016C 808A4F2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00170 808A4F30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00174 808A4F34 03E00008 */  jr      $ra                        
/* 00178 808A4F38 00000000 */  nop



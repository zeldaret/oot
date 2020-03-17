glabel BgBowlWall_Destroy
/* 000D0 8086F230 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000D4 8086F234 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000D8 8086F238 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000DC 8086F23C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E0 8086F240 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000E4 8086F244 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000E8 8086F248 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000EC 8086F24C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000F0 8086F250 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000F4 8086F254 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000F8 8086F258 03E00008 */  jr      $ra                        
/* 000FC 8086F25C 00000000 */  nop



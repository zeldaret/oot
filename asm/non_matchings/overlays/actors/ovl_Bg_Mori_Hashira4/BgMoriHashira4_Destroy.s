glabel BgMoriHashira4_Destroy
/* 001CC 808A322C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001D0 808A3230 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001D4 808A3234 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001D8 808A3238 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001DC 808A323C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001E0 808A3240 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001E4 808A3244 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001E8 808A3248 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001EC 808A324C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F0 808A3250 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001F4 808A3254 03E00008 */  jr      $ra                        
/* 001F8 808A3258 00000000 */  nop



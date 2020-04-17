glabel BgMizuShutter_Destroy
/* 0025C 8089F0AC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00260 8089F0B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00264 8089F0B4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00268 8089F0B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0026C 8089F0BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00270 8089F0C0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00274 8089F0C4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00278 8089F0C8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0027C 8089F0CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00280 8089F0D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00284 8089F0D4 03E00008 */  jr      $ra                        
/* 00288 8089F0D8 00000000 */  nop

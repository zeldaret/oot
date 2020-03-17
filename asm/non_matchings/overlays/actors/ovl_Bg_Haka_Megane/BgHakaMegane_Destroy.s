glabel BgHakaMegane_Destroy
/* 000B4 8087DAF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000B8 8087DAF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000BC 8087DAFC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000C0 8087DB00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C4 8087DB04 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000C8 8087DB08 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000CC 8087DB0C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000D0 8087DB10 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000D4 8087DB14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D8 8087DB18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000DC 8087DB1C 03E00008 */  jr      $ra                        
/* 000E0 8087DB20 00000000 */  nop



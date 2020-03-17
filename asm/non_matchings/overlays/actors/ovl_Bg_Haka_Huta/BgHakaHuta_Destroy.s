glabel BgHakaHuta_Destroy
/* 000BC 8087D07C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C0 8087D080 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000C4 8087D084 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000C8 8087D088 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000CC 8087D08C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000D0 8087D090 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000D4 8087D094 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000D8 8087D098 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000DC 8087D09C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000E0 8087D0A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000E4 8087D0A4 03E00008 */  jr      $ra                        
/* 000E8 8087D0A8 00000000 */  nop



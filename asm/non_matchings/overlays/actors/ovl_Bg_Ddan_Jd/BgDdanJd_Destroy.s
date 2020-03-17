glabel BgDdanJd_Destroy
/* 000A8 80870B58 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000AC 80870B5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000B0 80870B60 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 000B4 80870B64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000B8 80870B68 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000BC 80870B6C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 000C0 80870B70 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 000C4 80870B74 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 000C8 80870B78 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000CC 80870B7C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000D0 80870B80 03E00008 */  jr      $ra                        
/* 000D4 80870B84 00000000 */  nop



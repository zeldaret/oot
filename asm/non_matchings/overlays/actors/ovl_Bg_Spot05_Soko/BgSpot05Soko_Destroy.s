glabel BgSpot05Soko_Destroy
/* 00108 808AE578 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0010C 808AE57C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00110 808AE580 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00114 808AE584 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00118 808AE588 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0011C 808AE58C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00120 808AE590 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00124 808AE594 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00128 808AE598 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0012C 808AE59C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00130 808AE5A0 03E00008 */  jr      $ra                        
/* 00134 808AE5A4 00000000 */  nop



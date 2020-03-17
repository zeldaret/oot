glabel BgHaka_Destroy
/* 00078 8087B728 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0007C 8087B72C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00080 8087B730 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00084 8087B734 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00088 8087B738 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0008C 8087B73C 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00090 8087B740 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00094 8087B744 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00098 8087B748 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0009C 8087B74C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000A0 8087B750 03E00008 */  jr      $ra                        
/* 000A4 8087B754 00000000 */  nop



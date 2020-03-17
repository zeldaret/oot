glabel BgYdanHasi_Destroy
/* 00160 808BE660 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00164 808BE664 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00168 808BE668 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0016C 808BE66C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00170 808BE670 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00174 808BE674 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00178 808BE678 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0017C 808BE67C 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00180 808BE680 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00184 808BE684 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00188 808BE688 03E00008 */  jr      $ra                        
/* 0018C 808BE68C 00000000 */  nop



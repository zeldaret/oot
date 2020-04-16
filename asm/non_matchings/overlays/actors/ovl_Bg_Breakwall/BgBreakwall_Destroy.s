glabel BgBreakwall_Destroy
/* 001B0 8086FD90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001B4 8086FD94 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001B8 8086FD98 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001BC 8086FD9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001C0 8086FDA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001C4 8086FDA4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001C8 8086FDA8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001CC 8086FDAC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001D0 8086FDB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001D4 8086FDB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001D8 8086FDB8 03E00008 */  jr      $ra                        
/* 001DC 8086FDBC 00000000 */  nop

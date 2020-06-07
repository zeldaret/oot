glabel BgHakaMeganeBG_Destroy
/* 00198 8087DFC8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0019C 8087DFCC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001A0 8087DFD0 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001A4 8087DFD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001A8 8087DFD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001AC 8087DFDC 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 001B0 8087DFE0 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001B4 8087DFE4 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001B8 8087DFE8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001BC 8087DFEC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C0 8087DFF0 03E00008 */  jr      $ra                        
/* 001C4 8087DFF4 00000000 */  nop

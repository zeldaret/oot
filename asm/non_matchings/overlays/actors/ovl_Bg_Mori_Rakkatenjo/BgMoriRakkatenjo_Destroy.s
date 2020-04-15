glabel BgMoriRakkatenjo_Destroy
/* 00184 808A56F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00188 808A56F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0018C 808A56FC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00190 808A5700 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00194 808A5704 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00198 808A5708 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0019C 808A570C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 001A0 808A5710 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 001A4 808A5714 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001A8 808A5718 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001AC 808A571C 03E00008 */  jr      $ra                        
/* 001B0 808A5720 00000000 */  nop

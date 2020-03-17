glabel BgSpot01Idohashira_Destroy
/* 00414 808AB0F4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00418 808AB0F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0041C 808AB0FC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00420 808AB100 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00424 808AB104 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00428 808AB108 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 0042C 808AB10C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00430 808AB110 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 00434 808AB114 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00438 808AB118 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0043C 808AB11C 03E00008 */  jr      $ra                        
/* 00440 808AB120 00000000 */  nop



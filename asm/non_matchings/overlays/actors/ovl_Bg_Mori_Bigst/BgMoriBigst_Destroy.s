glabel BgMoriBigst_Destroy
/* 001EC 808A0DAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001F0 808A0DB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001F4 808A0DB4 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 001F8 808A0DB8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001FC 808A0DBC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00200 808A0DC0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00204 808A0DC4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 00208 808A0DC8 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 0020C 808A0DCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00210 808A0DD0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00214 808A0DD4 03E00008 */  jr      $ra                        
/* 00218 808A0DD8 00000000 */  nop

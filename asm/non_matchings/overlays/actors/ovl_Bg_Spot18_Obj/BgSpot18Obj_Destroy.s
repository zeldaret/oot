glabel BgSpot18Obj_Destroy
/* 00480 808B8D90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00484 808B8D94 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00488 808B8D98 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0048C 808B8D9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00490 808B8DA0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00494 808B8DA4 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 00498 808B8DA8 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 0049C 808B8DAC 8DC6014C */  lw      $a2, 0x014C($t6)           ## 0000014C
/* 004A0 808B8DB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 004A4 808B8DB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 004A8 808B8DB8 03E00008 */  jr      $ra                        
/* 004AC 808B8DBC 00000000 */  nop
